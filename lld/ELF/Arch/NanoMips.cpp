//===- NanoMips.cpp -------------------------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "InputFiles.h"
#include "OutputSections.h"
#include "Symbols.h"
#include "SyntheticSections.h"
#include "Target.h"
#include "Thunks.h"
#include "lld/Common/ErrorHandler.h"
#include "llvm/Object/ELF.h"
#include "InputSection.h"
#include "llvm/Support/Endian.h"
#include "Arch/NanoMipsProperties.h"
#include "SyntheticSections.h"
#include "lld/Common/Memory.h"

using namespace llvm::object;
using namespace llvm::ELF;
using namespace lld;
using namespace lld::elf;
using namespace llvm;
using namespace llvm::support;

// use --mllvm with --debug or --debug-only=<name>
#define DEBUG_TYPE "lld-nanomips"

template <endianness E>
static uint32_t readShuffle32(const uint8_t *loc)
{
  // Similar to microMIPS, little endian instructions are encoded as
  // big endian so that the opcode comes first and that the hardware could
  // know sooner if it is a 16bit, 32bit or 48bit instruction
  uint32_t v = read32(loc);
  if(E == support::little)
    return (v << 16) | (v >> 16);
  return v;
}


template <endianness E>
static void writeShuffle32(uint8_t *loc, uint64_t val)
{
  uint16_t *words = (uint16_t *)loc;
  if(E == support::little)
    std::swap(words[0], words[1]);
  
  write32(loc, val);

  if(E == support::little)
    std::swap(words[0], words[1]);
}

template <endianness E>
static void writeImm48bitIns(uint8_t *loc, uint64_t val)
{
  // Different than the shuffle, the 48 bit instruction have
  // 32 bit imms at last two 16bit words in order so that
  // 15..0 goes first, and than the 31..16 portion, which
  // is opposite to big endian
    uint16_t *words = (uint16_t *)loc;
  if(E == support::big)
    std::swap(words[0], words[1]);
  
  write32(loc, val);

  if(E == support::big)
    std::swap(words[0], words[1]);
}

template <endianness E>
static uint64_t readInsn(ArrayRef<uint8_t> data, uint64_t off, uint32_t insnSize)
{
  assert(off + insnSize <= data.size() && "Overflow on buffer in readInsn");
  if(insnSize == 6) return read16(&data[off - 2]);
  else if(insnSize == 4) return readShuffle32<E>(&data[off]);
  else if(insnSize == 2) return read16(&data[off]);
  // Case when R_NANOMIPS_NONE is returned
  // else if(insnSize == 0) return 0;
  else llvm_unreachable("Unknown byte size of nanoMIPS instruction (only 2, 4 and 6 known)");
}

template <endianness E>
static void writeInsn(uint64_t insn, ArrayRef<uint8_t>data, uint64_t off, uint32_t insnSize)
{
    assert(off + insnSize <= data.size() && "Overflow on buffer in writeInsn");
    uint8_t *dataPtr = const_cast<uint8_t *>(data.begin());
    if (insnSize == 6) write16(dataPtr + off, (uint16_t)insn);
    else if(insnSize == 4) writeShuffle32<E>(dataPtr + off,((uint32_t)insn));
    else if(insnSize == 2) write16(dataPtr + off, (uint16_t)insn);
    else llvm_unreachable("Unknown byte size of nanoMIPS instruction (only 2, 4, and 6 known)");
}

template <endianness E>
static void writeInsn(uint64_t insn, uint8_t *ptr, uint32_t insnSize)
{
    // assert(off + insnSize <= data.size() && "Overflow on buffer in writeInsn");
    if (insnSize == 6) write16(ptr, (uint16_t)insn);
    else if(insnSize == 4) writeShuffle32<E>(ptr,((uint32_t)insn));
    else if(insnSize == 2) write16(ptr, (uint16_t)insn);
    else llvm_unreachable("Unknown byte size of nanoMIPS instruction (only 2, 4, and 6 known)");
}


uint64_t elf::getNanoMipsPage(uint64_t expr) {
  return expr & ~static_cast<uint64_t>(0xFFF);
}



namespace {

  
// TODO: Support for other endianess, and bit size, now it is Little Endian 32 bit
template <class ELFT>
class NanoMips final : public TargetInfo {
public:
    NanoMips();
    
    RelExpr getRelExpr(RelType type, const Symbol &s,
                     const uint8_t *loc) const override;

    void relocate(uint8_t *loc, const Relocation &rel,
                uint64_t val) const override;

    bool mayRelax() const override;
    bool relaxOnce(int pass) const override;

    // TODO:
    // uint32_t calcEFlags() const override;
private:
    NanoMipsRelocPropertyTable relocPropertyTable;
    NanoMipsInsPropertyTable insPropertyTable;
    // Needs to be declared after insPropertyTable
    NanoMipsTransformController currentTransformation;

    bool safeToModify(InputSection *sec) const;

    // relax + expand
    void transform(InputSection *sec) const;

    void initTransformAuxInfo() const;
    // sa is changed with every relocation that transforms
    void updateTransformAuxInfo(InputSection *isec, Relocation &rel, ArrayRef<SymbolAnchor> &sa, int64_t delta) const;
    void finalizeSecTransformation(InputSection *isec, int64_t totalDelta) const;
    // bool relax(InputSection *sec) const;
    // bool expand(InputSection *sec) const;
};
} // namespace

template <class ELFT>
NanoMips<ELFT>::NanoMips(): currentTransformation(&insPropertyTable) {
  copyRel = R_NANOMIPS_COPY;
  noneRel = R_NANOMIPS_NONE;
  defaultMaxPageSize = 65536;
  pltEntrySize = 0;

  LLVM_DEBUG(
  llvm::dbgs() << "Current reloc properties:\n" << relocPropertyTable.toString() << "\n\n\n";
  llvm::dbgs() << "Current instruction properties:\n" << insPropertyTable.toString() << "\n\n\n";
  llvm::dbgs() << "relax_lo12: " << config->nanoMipsRelaxLo12 << "\n";
  llvm::dbgs() << "insn32: " << config->nanoMipsInsn32 << "\n";
  );

  this->currentTransformation.initState();
}

//used for: R_NANOMIPS_HI20, R_NANOMIPS_PC_HI20 and R_NANOMIPS_GPREL_HI20
template <endianness E>
static void writeValueHi20(uint8_t *loc, uint64_t val) {
  uint32_t instr = readShuffle32<E>(loc);
  // instr = bswap(instr);
  uint32_t data = (val & ~1) | ((val >> 31) & 1);
  data = (data & ~0xffc) | ((val >> 19) & 0xffc); 
  uint32_t masked = (instr & ~0x1ffffd) | (data & 0x1ffffd);
  // masked = bswap(masked);
  writeShuffle32<E>(loc, masked);
}

//used for: R_NANOMIPS_PC4_S1 and R_NANOMIPS_GPREL_S2
static void writeValue16(uint8_t *loc, uint64_t val, uint8_t bitsSize,
                       uint8_t shift) {
  uint32_t instr = read16(loc);
  uint32_t mask = (0xffff >> (16 - bitsSize)) << shift;
  uint32_t data = (instr & ~mask) | (val & mask);
  write16(loc, data);
}

//used for: R_NANOMIPS_PC10_S1 and R_NANOMIPS_PC7_S1
static void writePcRel16(uint8_t *loc, uint64_t val, uint8_t bitsSize) {
  uint16_t instr = read16(loc);
  val = (val & ~1) | ((val >> bitsSize) & 1);
  uint16_t mask = (0xffff >> (16 - bitsSize));
  uint16_t data = (instr & ~mask) | (val & mask);
  write16(loc, data);
}

//used for: R_NANOMIPS_PC25_S1, R_NANOMIPS_PC21_S1, R_NANOMIPS_PC14_S1 and R_NANOMIPS_PC11_S1
template <endianness E>
static void writePcRel32(uint8_t *loc, uint64_t val, uint8_t bitsSize) {
    uint32_t instr = readShuffle32<E>(loc); 
    // instr = bswap(instr);
    val = (val & ~1) | ((val >> bitsSize) & 1);
    uint32_t mask = (0xffffffff >> (32 - bitsSize));
    uint32_t data = (instr & ~mask) | (val & mask);
    // data = bswap(data);
    writeShuffle32<E>(loc, data);
}

//used for: R_NANOMIPS_LO12, R_NANOMIPS_GPREL19_S2, R_NANOMIPS_GPREL18, R_NANOMIPS_GPREL17_S1 and R_NANOMIPS_GPREL_LO12
template <endianness E>
static void writeValue32be(uint8_t *loc, uint64_t val, uint8_t bitsSize,
                       uint8_t shift) {
    uint32_t instr = readShuffle32<E>(loc); 
    // instr = bswap(instr);
    uint32_t mask = (0xffffffff >> (32 - bitsSize)) << shift;
    uint32_t data = (instr & ~mask) | (val & mask);
    // data = bswap(data);
    writeShuffle32<E>(loc, data);
}

void checkIntPcRel(uint8_t *loc, int64_t v, int n, const Relocation &rel, const Symbol &sym) {
  if ((v & 1) != 0)
    error(getErrorLocation(loc) + "\tvalue: \t" + llvm::utohexstr(v) + "\tlast bit has to be zero in all PC_REL \n");
  if(sym.isUndefWeak()) //if symbol is weak, then we don't have to check it's range
    return;
  else if (rel.type == R_NANOMIPS_PC4_S1)
    checkUInt(loc, v, n, rel); // R_NANOMIPS_PC4_S1 is unsigned 5-bit integer
  else
    checkInt(loc, v, n, rel); //we have to check if value v fits in signed n-bit integer
}

template<class ELFT>
RelExpr NanoMips<ELFT>::getRelExpr(RelType type, const Symbol &s,
                            const uint8_t *loc) const {
  switch (type){
  case R_NANOMIPS_PC25_S1:
  case R_NANOMIPS_PC21_S1:
  case R_NANOMIPS_PC14_S1:
  case R_NANOMIPS_PC11_S1:
  case R_NANOMIPS_PC10_S1:
  case R_NANOMIPS_PC7_S1:
  case R_NANOMIPS_PC4_S1:
  case R_NANOMIPS_PC_I32:
  case R_NANOMIPS_PC32:
    return R_PC;
  case R_NANOMIPS_NEG:
    return R_NANOMIPS_NEG_COMPOSITE;
  case R_NANOMIPS_32:
  case R_NANOMIPS_UNSIGNED_8:
  case R_NANOMIPS_SIGNED_8:
  case R_NANOMIPS_UNSIGNED_16:
  case R_NANOMIPS_SIGNED_16:
  case R_NANOMIPS_LO12: 
  case R_NANOMIPS_ASHIFTR_1:
  case R_NANOMIPS_I32:
  case R_NANOMIPS_HI20:
    return R_ABS;
  case R_NANOMIPS_PC_HI20:
    return R_NANOMIPS_PAGE_PC;
  case R_NANOMIPS_GPREL19_S2:
  case R_NANOMIPS_GPREL18:
  case R_NANOMIPS_GPREL17_S1:
  case R_NANOMIPS_GPREL_I32:
  case R_NANOMIPS_GPREL_HI20:
  case R_NANOMIPS_GPREL_LO12:
  case R_NANOMIPS_GPREL7_S2:
    return R_NANOMIPS_GPREL;
  case R_NANOMIPS_NONE:
  case R_NANOMIPS_FIXED:
  case R_NANOMIPS_ALIGN:
  case R_NANOMIPS_INSN32:
  case R_NANOMIPS_INSN16:
    return R_NONE;
  default:
    error(getErrorLocation(loc) + "unknown relocation (" + Twine(type) +
          ") against symbol " + toString(s) + " loc: " + llvm::utohexstr(uint64_t(loc)) + " file name: " + toString(s.file->getName()) );
    return R_NONE;
  }                   
}

template <class ELFT>
void NanoMips<ELFT>::relocate(uint8_t *loc, const Relocation &rel, uint64_t val) const {
  switch (rel.type) {
  case R_NANOMIPS_PC_I32:
    checkInt(loc, val - 4, 32, rel);
    writeImm48bitIns<ELFT::TargetEndianness>(loc, val - 4);
    break;
  case R_NANOMIPS_PC32:
  case R_NANOMIPS_32:
  case R_NANOMIPS_I32:
  case R_NANOMIPS_GPREL_I32:
    checkInt(loc, val, 32, rel);
    writeImm48bitIns<ELFT::TargetEndianness>(loc, val);
    break;
  case R_NANOMIPS_NEG:
  case R_NANOMIPS_ASHIFTR_1: 
    assert(0 && "Incorrect logic for R_NANOMIPS_NEG and R_NANOMIPS_ASHIFTR_1");
    break;
  case R_NANOMIPS_NONE:
  case R_NANOMIPS_FIXED:
  case R_NANOMIPS_ALIGN:
  case R_NANOMIPS_INSN16:
  case R_NANOMIPS_INSN32:
    break;
  case R_NANOMIPS_UNSIGNED_16:
    checkUInt(loc, val, 16, rel);
    write16(loc, val);
    break;
  case R_NANOMIPS_SIGNED_16:
    checkInt(loc, val, 16, rel);
    write16(loc, val);
    break;
  case R_NANOMIPS_HI20:
  case R_NANOMIPS_PC_HI20:
  case R_NANOMIPS_GPREL_HI20:
    checkInt(loc, val, 32, rel);
    writeValueHi20<ELFT::TargetEndianness>(loc, val); 
    break;
  case R_NANOMIPS_PC4_S1:{
    checkIntPcRel(loc, val - 2, 5, rel, *rel.sym);
    val = (val - 2) >> 1;
    writeValue16(loc, val, 4, 0);
    break;
  }
  case R_NANOMIPS_SIGNED_8:{
    checkInt(loc, val, 8, rel);
    write8(loc, val);
    break;
  }
  case R_NANOMIPS_UNSIGNED_8:
    checkUInt(loc, val, 8, rel);
    write8(loc, val);
    break;
  case R_NANOMIPS_GPREL7_S2:
    checkUInt(loc, val, 9, rel);
    writeValue16(loc, val, 7, 2);
    break;
  case R_NANOMIPS_PC10_S1:
    checkIntPcRel(loc, val - 2, 11, rel, *rel.sym);
    writePcRel16(loc, val - 2, 10);
    break;
  case R_NANOMIPS_PC7_S1:
    checkIntPcRel(loc, val - 2, 8, rel, *rel.sym);
    writePcRel16(loc, val - 2, 7);
    break;
  case R_NANOMIPS_PC25_S1:
    checkIntPcRel(loc, val - 4, 26, rel, *rel.sym);
    writePcRel32<ELFT::TargetEndianness>(loc, val - 4, 25);
    break;
  case R_NANOMIPS_PC21_S1:
    checkIntPcRel(loc, val - 4, 22, rel, *rel.sym);
    writePcRel32<ELFT::TargetEndianness>(loc, val - 4, 21);
    break;
  case R_NANOMIPS_PC14_S1:
    checkIntPcRel(loc, val - 4, 15, rel, *rel.sym);
    writePcRel32<ELFT::TargetEndianness>(loc, val - 4, 14);
    break;
  case R_NANOMIPS_PC11_S1:
    checkIntPcRel(loc, val - 4, 12, rel, *rel.sym);
    writePcRel32<ELFT::TargetEndianness>(loc, val - 4, 11);
    break;
  case R_NANOMIPS_LO12:
    writeValue32be<ELFT::TargetEndianness>(loc, val, 12, 0);
    break;
  case R_NANOMIPS_GPREL19_S2:
    checkUInt(loc, val, 21, rel);
    writeValue32be<ELFT::TargetEndianness>(loc, val, 19, 2);
    break;
  case R_NANOMIPS_GPREL18:
    checkUInt(loc, val, 18, rel);
    writeValue32be<ELFT::TargetEndianness>(loc, val, 18, 0);
    break;
  case R_NANOMIPS_GPREL17_S1:
    checkUInt(loc, val, 18, rel);
    writeValue32be<ELFT::TargetEndianness>(loc, val, 17, 1);
    break;
  case R_NANOMIPS_GPREL_LO12:
    checkInt(loc, val, 12, rel);
    writeValue32be<ELFT::TargetEndianness>(loc, val, 12, 0);
    break;
  default:
    llvm_unreachable("unknown relocation");
    break;
  }
}

template <class ELFT>
TargetInfo *elf::getNanoMipsTargetInfo() {
    static NanoMips<ELFT> t;
    return &t;
}

template <class ELFT>
bool NanoMips<ELFT>::mayRelax() const
{
  // TODO: When the finalize-relocs option is added, change this expression
  // also goes for sort-by-reference option
  return (!config->relocatable && (config->relax || config->expand));
}

template <class ELFT>
bool NanoMips<ELFT>::safeToModify(InputSection *sec) const
{
  bool modifiable = false;
  if(auto *obj = sec->getFile<ELF32LE>())
  {
    modifiable = (obj->getObj().getHeader().e_flags & EF_NANOMIPS_LINKRELAX) != 0;
  }
  return modifiable;
}


// TODO: Emit reloc option, somewhat different transformations
template <class ELFT>
bool NanoMips<ELFT>::relaxOnce(int pass) const
{
  LLVM_DEBUG(llvm::dbgs() << "Transformation Pass num: " << pass << "\n";);
  // TODO: Should full nanoMips ISA be checked as full or per obj, as it is checked
  bool changed = false;
  if(pass == 0)
  {
    initTransformAuxInfo();
  }
  if(this->mayRelax())
  {
    for(OutputSection *osec : outputSections)
    {
      if((osec->flags & (SHF_EXECINSTR | SHF_ALLOC)) != (SHF_EXECINSTR | SHF_ALLOC) ||
          !(osec->type & SHT_PROGBITS))
          continue;
      for(InputSection *sec : getInputSections(osec))
      {
        if(!this->safeToModify(sec) || sec->numRelocations == 0) continue;
        this->transform(sec);

      }
    }
    changed = this->currentTransformation.shouldRunAgain();
    const_cast<NanoMipsTransformController &>(this->currentTransformation).changeState();
  }
  return changed;
}

template <class ELFT>
void NanoMips<ELFT>::transform(InputSection *sec) const 
{
  const uint32_t bits = config->wordsize * 8;
  uint64_t secAddr = sec->getOutputSection()->addr + sec->outSecOff;


  NanoMipsRelaxAux &aux = *sec->nanoMipsRelaxAux;
  MutableArrayRef<SymbolAnchor> sa = makeMutableArrayRef(aux.anchors.data(), aux.anchors.size());
  int64_t totalDelta = 0; 
  // std::fill_n(aux.relocInfo.data(), sec->relocations.size(), std::pair<int64_t, RelType>(0, R_NANOMIPS_NONE));
  aux.relocInfo.insert(aux.relocInfo.begin(), sec->relocations.size(), std::pair<int64_t, RelType>(0, R_NANOMIPS_NONE));
  aux.writes.clear();
  // Need to do it like this bc at transform we may invalidate the iterator
  // TODO: Relocs are not sorted by offset, check if they should be?
  for(uint32_t relNum = 0; relNum < sec->relocations.size(); relNum++)
  {
    Relocation &reloc = sec->relocations[relNum];
    if(reloc.type == R_NANOMIPS_NONE) continue;
    int64_t &curRelDelta = aux.relocInfo[relNum].first;
    // TODO: Check if section should be compressed when returning value
    uint64_t addrLoc = secAddr + reloc.offset;
    uint64_t valueToRelocate = llvm::SignExtend64(sec->getRelocTargetVA(sec->file, reloc.type, reloc.addend, addrLoc, *reloc.sym, reloc.expr), bits);
    const NanoMipsRelocProperty *relocProp =  relocPropertyTable.getRelocProperty(reloc.type);
    if(!relocProp) continue;

    uint32_t instSize = relocProp->getInstSize();
    // 48 bit instruction reloc offsets point to 32 bit imm/off not to the beginning of ins
    uint64_t relocOffset = reloc.offset - (instSize == 6 ? 2 : 0);
    uint64_t insn = readInsn<ELFT::TargetEndianness>(sec->data(), reloc.offset, instSize);

    uint64_t insMask = relocProp->getMask();
    LLVM_DEBUG(
      llvm::dbgs() << "Reloc property: " << relocProp->getName() << "\n";
      llvm::dbgs() << "\tInsMask: 0x" << utohexstr(insMask) << "\n";
      llvm::dbgs() << "Instruction Read: 0x" << utohexstr(insn) << "\n";
    );

    const NanoMipsInsProperty *insProperty = this->currentTransformation.getInsProperty(insn, insMask, reloc.type, sec);
    if(!insProperty) continue;

    LLVM_DEBUG(
      llvm::dbgs() << "InsProperty: " << insProperty->toString() << "\n";
    );

    // if is forced length
    // TODO: Should check if R_NANOMIPS_INSN32 should allow expansion, or INSN16
    // Note: Will skip this step, don't know how to generate FIXED,INSN32 or INSN16 relocs
    // TODO: Find out how to generate these relocations

    // Note: Will skip symbol calculation as well, we calculate them through getRelocTargetVA 
    // TODO: Return to this later, and see if somethings need to be fixed

    // TODO: Undef weak symbols
    const NanoMipsTransformTemplate *transformTemplate = this->currentTransformation.getTransformTemplate(insProperty, reloc, valueToRelocate, insn, sec);
    if(!transformTemplate) continue;

    LLVM_DEBUG( 
      llvm::dbgs() << "TransformTemplate: " << transformTemplate->toString() << "\n";
    );

    // TODO: gold creates a new nanomips input section, check if it is needed?

    // Bytes to remove/add
    int32_t delta =  instSize - transformTemplate->getSizeOfTransform();
    for(; sa.size() && sa[0].offset <= relocOffset; sa = sa.slice(1))
    {
      if(sa[0].end) sa[0].d->size = sa[0].offset - totalDelta + sa[0].d->value;
      else { 
        sa[0].d->value = sa[0].offset - totalDelta;
        sa[0].offset = sa[0].d->value;
      }
    }
    totalDelta += delta;
    if(totalDelta != curRelDelta)
      curRelDelta = totalDelta;



    // if(delta != 0)
      // this->currentTransformation.updateSectionContent(sec, relocOffset + instSize, delta);

    // Transform
    this->currentTransformation.transform(reloc, transformTemplate, insProperty, sec, insn, relNum);

    // auto &newInsns = this->currentTransformation.getNewInsns();
    // for(auto &newInsn : newInsns)
    // {
    //   writeInsn<ELFT::TargetEndianness>(newInsn.insn, sec->data(), newInsn.offset, newInsn.size);
    // }
    // newInsns.clear();
    // Finalize content?
  }
  if(totalDelta != 0)
  {
    for(SymbolAnchor &a : sa)
    {
      if(a.end) a.d->size = a.offset - totalDelta + a.d->value;
      else {
        a.d->value = a.offset - totalDelta;
        a.offset = a.d->value;
      }
    }
    const_cast<NanoMipsTransformController &>(this->currentTransformation).setChanged();
    // TODO: Check if there are some relaxations/expansions that preserve byte count
    finalizeSecTransformation(sec, totalDelta);
  }


  return;
}

template <class ELFT>
void NanoMips<ELFT>::initTransformAuxInfo() const
{
  // Storage is used in higher llvms
  SmallVector<InputSection *, 0> storage;
  for(OutputSection *osec: outputSections)
  {
    if((osec->flags & (SHF_EXECINSTR | SHF_ALLOC)) != (SHF_EXECINSTR | SHF_ALLOC) ||
          !(osec->type & SHT_PROGBITS))
          continue;
    
    for(InputSection *sec : getInputSections(osec))
    {
      if(!this->safeToModify(sec) || sec->numRelocations == 0) continue;

      sec->nanoMipsRelaxAux = make<NanoMipsRelaxAux>();
      sec->nanoMipsRelaxAux->relocInfo.reserve(sec->numRelocations);
    }
  }

  for(InputFile *file : objectFiles)
  {
    for(Symbol *sym : file->symbols)
    {
      auto *d = dyn_cast<Defined>(sym);
      if(!d || d->file != file) continue;

      if(auto *sec = dyn_cast_or_null<InputSection>(d->section))
      {
        if((sec->flags & (SHF_EXECINSTR | SHF_ALLOC)) != (SHF_EXECINSTR | SHF_ALLOC) ||
          !(sec->type & SHT_PROGBITS) || !sec->nanoMipsRelaxAux || !this->safeToModify(sec) ||
          sec->numRelocations == 0) continue;
        
        sec->nanoMipsRelaxAux->anchors.push_back({d->value, d, false});
        sec->nanoMipsRelaxAux->anchors.push_back({d->value + d->size, d, true});
      }
    }
  }

  for(OutputSection *osec: outputSections)
  {
    if((osec->flags & (SHF_EXECINSTR | SHF_ALLOC)) != (SHF_EXECINSTR | SHF_ALLOC) || !(osec->type & SHT_PROGBITS)) continue;

    for(InputSection *sec: getInputSections(osec))
    {
      if(!this->safeToModify(sec) || sec->numRelocations == 0) continue;

      llvm::sort(sec->nanoMipsRelaxAux->anchors, [](auto &a, auto &b) {
        return std::make_pair(a.offset, a.end) < std::make_pair(b.offset, b.end);
      });
      llvm::stable_sort(sec->relocations, [](auto &a, auto &b){ return a.offset < b.offset; });
    }
  }
}

template <class ELFT>
void NanoMips<ELFT>::finalizeSecTransformation(InputSection *isec, int64_t totalDelta) const {

  NanoMipsRelaxAux &aux = *isec->nanoMipsRelaxAux;
  // No need to do anything if we have nothing to change
  assert(aux.writes.size() != 0);
  ArrayRef<uint8_t> oldData = isec->data();
  size_t newSize = oldData.size() - totalDelta;
  size_t writesIdx = 0;
  // TODO: Check later if the linker eats up a lot of memory
  // it is probably because of this, make a better way to do
  // this (relaxations can be definitely done without new section containers)
  uint8_t *p = bAlloc.Allocate<uint8_t>(newSize);
  isec->setRawData(makeArrayRef(p, newSize));
  isec->bytesDropped = 0;
  // How much delta did we pass already
  int64_t delta = 0;
  // Where we got in the section
  uint64_t offset = 0;
  for(size_t i = 0, e = isec->relocations.size(); i < e; i++)
  {
    // TODO: Check this if statement
    if(aux.relocInfo[i].first == 0) continue;
    int64_t curDelta = aux.relocInfo[i].first - delta;
    delta = aux.relocInfo[i].first;
    // if(curDelta == 0 && aux.relocInfo[i].second == R_NANOMIPS_NONE)
    //   continue;

    const Relocation &rel = isec->relocations[i];
    const NanoMipsRelocProperty *relocProp = relocPropertyTable.getRelocProperty(rel.type);
    uint32_t relOffset = rel.offset - (relocProp->getInstSize() == 6 ? 2 : 0);
    uint64_t size = relOffset - offset;
    memcpy(p, oldData.data() + offset, size);
    p += size;

    do {
      uint64_t write = aux.writes[writesIdx].first;
      uint32_t writeSize = aux.writes[writesIdx].second & (-1UL << 1);
      writeInsn<ELFT::TargetEndianness>(write, p, writeSize);
      p += writeSize;
    } while(aux.writes[writesIdx++].second & 1);

    offset = relOffset + relocProp->getInstSize();
  }
  memcpy(p, oldData.data() + offset, oldData.size() - offset);

  // adjust relocs
  delta = 0;
  int64_t prevDelta = 0;
  writesIdx = 0;
  for(size_t i = 0, e = isec->relocations.size(); i < e; i++)
  {
    if(i != 0 && aux.relocInfo[i - 1].first)
    {
      prevDelta = delta;
      delta = aux.relocInfo[i - 1].first;
    }
    // uint64_t cur = isec->relocations[i].offset;
    // do {
    if(aux.relocInfo[i].first != 0)
    {
      isec->relocations[i].offset -= delta;
      writesIdx++;
      const NanoMipsRelocProperty *relocProperty = relocPropertyTable.getRelocProperty(isec->relocations[i].type);
      const NanoMipsRelocProperty *relocPropertyTransform = relocPropertyTable.getRelocProperty(aux.relocInfo[i].second);
      isec->relocations[i].type = aux.relocInfo[i].second;
      // for 6-byte instruction reloc offset points to the last 4 bytes not to beginning of ins
      if(relocProperty->getInstSize() == 6 && relocPropertyTransform->getInstSize() != 6)
        isec->relocations[i].offset -= 2;
      else if(relocProperty->getInstSize() != 6 && relocPropertyTransform->getInstSize() == 6)
        isec->relocations[i].offset += 2;
    }
    // This means that the instruction was separated to more than one reloc
    else if(writesIdx != 0 && (aux.writes[writesIdx - 1].second & 1))
    {
      isec->relocations[i].offset -= prevDelta;
      writesIdx++;
    }
    else {
      isec->relocations[i].offset -= delta;
    }
    // } while (++i != e && isec->relocations[i].offset == cur);
  }
}


template TargetInfo *elf::getNanoMipsTargetInfo<ELF32LE>();
template TargetInfo *elf::getNanoMipsTargetInfo<ELF32BE>();
template TargetInfo *elf::getNanoMipsTargetInfo<ELF64LE>();
template TargetInfo *elf::getNanoMipsTargetInfo<ELF64BE>();

uint64_t elf::getNanoMipsNegCompositeRelDataAlloc(Relocation *&it, Relocation *&end, uint8_t *bufLoc, uint8_t *buf, InputSectionBase *sec, const InputFile *file, uint64_t addrLoc)
{
  const Relocation &rel = *it++;
  const unsigned bits = config->wordsize * 8;
  RelType type = rel.type;
  Symbol &sym = *rel.sym;
  assert(type == R_NANOMIPS_NEG && "First relocation type for R_NANOMIPS_NEG_COMPOSITE must be R_NANOMIPS_NEG");
  assert(it != end && "R_NANOMIPS_NEG_COMPOSITE is composed of more than one relocation");
  
  const uint64_t targetVA = llvm::SignExtend64(sec->getRelocTargetVA(
    file, type, rel.addend, addrLoc, sym, rel.expr
    ), 
    bits);
  const Relocation &next1 = *it;
  uint64_t offset1 = next1.offset;
  uint8_t *bufLoc1 = buf + offset1;
  RelType type1 = next1.type;
  Symbol &sym1 = *next1.sym;
  if(bufLoc != bufLoc1)
  {
      message("Incorrect logic for negative and shift");
      exit(6);
  }
  const uint64_t targetVA1 = llvm::SignExtend64(sec->getRelocTargetVA(
    file, type1, next1.addend, addrLoc, sym1, next1.expr
    ), 
    bits);
  if(type1 == R_NANOMIPS_ASHIFTR_1)
  {
    it++;
    assert(it != end && "R_NANOMIPS_NEG_COMPOSITE with R_NANOMIPS_ASHIFTR_1 consists of one more relocation");
    const Relocation &next2 = *it;
    uint64_t offset2 = next2.offset;
    uint8_t *bufLoc2 = buf + offset2;
    RelType type2 = next2.type;
    Symbol &sym2 = *next2.sym;
    if(bufLoc != bufLoc2)
    {
      message("Incorrect logic for negative and shift");
      exit(6);
    }

    const uint64_t targetVA2 = llvm::SignExtend64(sec->getRelocTargetVA(
      file, type2, next2.addend, addrLoc, sym2, next2.expr
      ), bits);
    uint64_t data = (targetVA1 + targetVA) >> 1; 
    if(type2 == R_NANOMIPS_SIGNED_16 || type2 == R_NANOMIPS_SIGNED_8)
      data = llvm::SignExtend64(data, bits);
    data += targetVA2;
    return data;
  }
  else
  {
    uint64_t data = targetVA1 + targetVA;
    if(type1 == R_NANOMIPS_SIGNED_16 || type1 == R_NANOMIPS_SIGNED_8)
      data = llvm::SignExtend64(data, bits);
    return data;
  }


}

template<class ELFT, class RelTy> 
uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc(typename ArrayRef<RelTy>::iterator &it, typename ArrayRef<RelTy>::iterator &end, uint8_t *bufLoc, uint8_t *buf, InputSectionBase *sec, const InputFile *file, uint64_t addrLoc, const TargetInfo *target)
{
  const RelTy &rel = *it++;
  const unsigned bits = config->wordsize * 8;
  RelType type = rel.getType(config->isMips64EL);
  Symbol &sym = sec->getFile<ELFT>()->getRelocTargetSym(rel);
  assert(type == llvm::ELF::R_NANOMIPS_NEG && "First relocation type for R_NANOMIPS_NEG_COMPOSITE must be R_NANOMIPS_NEG");
  assert(it != end && "R_NANOMIPS_NEG_COMPOSITE is composed of more than one relocation");
  
  const uint64_t targetVA = llvm::SignExtend64(sec->getRelocTargetVA(
    file, type, getAddend<ELFT>(rel), addrLoc, sym, target->getRelExpr(type, sym, bufLoc)
    ), 
    bits);
  const RelTy &next1 = *it;
  uint64_t offset1 = next1.r_offset;
  uint8_t *bufLoc1 = buf + offset1;
  RelType type1 = next1.getType(config->isMips64EL);
  Symbol &sym1 = sec->getFile<ELFT>()->getRelocTargetSym(next1);
  if(bufLoc != bufLoc1)
  {
      message("Incorrect logic for negative and shift");
      exit(6);
  }
  const uint64_t targetVA1 = llvm::SignExtend64(sec->getRelocTargetVA(
    file, type1, getAddend<ELFT>(next1), addrLoc, sym1, target->getRelExpr(type1, sym1, bufLoc1)
    ), 
    bits);
  if(type1 == llvm::ELF::R_NANOMIPS_ASHIFTR_1)
  {
    it++;
    assert(it != end && "R_NANOMIPS_NEG_COMPOSITE with R_NANOMIPS_ASHIFTR_1 consists of one more relocation");
    const RelTy &next2 = *it;
    uint64_t offset2 = next2.r_offset;
    uint8_t *bufLoc2 = buf + offset2;
    RelType type2 = next2.getType(config->isMips64EL);
    Symbol &sym2 = sec->getFile<ELFT>()->getRelocTargetSym(next2);
    if(bufLoc != bufLoc2)
    {
      message("Incorrect logic for negative and shift");
      exit(6);
    }

    const uint64_t targetVA2 = llvm::SignExtend64(sec->getRelocTargetVA(
      file, type2, getAddend<ELFT>(next2), addrLoc, sym2, target->getRelExpr(type2, sym2, bufLoc2)
      ), bits);
    uint64_t data = (targetVA1 + targetVA) >> 1; 
    if(type2 == llvm::ELF::R_NANOMIPS_SIGNED_16 || type2 == llvm::ELF::R_NANOMIPS_SIGNED_8)
      data = llvm::SignExtend64(data, bits);
    data += targetVA2;
    return data;
  }
  else
  {
    uint64_t data = targetVA1 + targetVA;
    if(type1 == llvm::ELF::R_NANOMIPS_SIGNED_16 || type1 == llvm::ELF::R_NANOMIPS_SIGNED_8)
      data = llvm::SignExtend64(data, bits);
    return data;
  }


}

template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF32LE, ELF32LE::Rel>(ArrayRef<ELF32LE::Rel>::iterator &, ArrayRef<ELF32LE::Rel>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF32LE, ELF32LE::Rela>(ArrayRef<ELF32LE::Rela>::iterator &, ArrayRef<ELF32LE::Rela>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF32BE, ELF32BE::Rel>(ArrayRef<ELF32BE::Rel>::iterator &, ArrayRef<ELF32BE::Rel>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF32BE, ELF32BE::Rela>(ArrayRef<ELF32BE::Rela>::iterator &, ArrayRef<ELF32BE::Rela>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF64LE, ELF64LE::Rel>(ArrayRef<ELF64LE::Rel>::iterator &, ArrayRef<ELF64LE::Rel>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF64LE, ELF64LE::Rela>(ArrayRef<ELF64LE::Rela>::iterator &, ArrayRef<ELF64LE::Rela>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF64BE, ELF64BE::Rel>(ArrayRef<ELF64BE::Rel>::iterator &, ArrayRef<ELF64BE::Rel>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);
template uint64_t elf::getNanoMipsNegCompositeRelDataNonAlloc<ELF64BE, ELF64BE::Rela>(ArrayRef<ELF64BE::Rela>::iterator &, ArrayRef<ELF64BE::Rela>::iterator &, uint8_t *, uint8_t *, InputSectionBase *, const InputFile *, uint64_t, const TargetInfo *);

