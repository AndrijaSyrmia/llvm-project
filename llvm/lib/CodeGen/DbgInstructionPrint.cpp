#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"
#include "llvm/CodeGen/Passes.h"
#include <map>

using namespace llvm;

#define DEBUG_TYPE "dbg-ins-print"

static cl::opt<bool>
EnableDbgInsPrint("enable-dbg-ins-print", cl::Hidden, cl::init(false), cl::desc("Enable Debug Instruction Printing"));


namespace{
    class DbgInstructionPrint: public MachineFunctionPass{

        public:
            static char ID;
            DbgInstructionPrint();
            bool runOnMachineFunction(MachineFunction& MF) override;

    };
}

char DbgInstructionPrint::ID = 0;
char& llvm::DbgInstructionPrintID = DbgInstructionPrint::ID;

INITIALIZE_PASS_BEGIN(DbgInstructionPrint, DEBUG_TYPE, "Print Debug Instructions", false, false)
INITIALIZE_PASS_END(DbgInstructionPrint, DEBUG_TYPE, "Print Debug Instructions", false, false)

DbgInstructionPrint::DbgInstructionPrint(): MachineFunctionPass(DbgInstructionPrint::ID)
{
    initializeDbgInstructionPrintPass(*PassRegistry::getPassRegistry());
}

bool DbgInstructionPrint::runOnMachineFunction(MachineFunction& MF)
{
    if(EnableDbgInsPrint)
    {
        errs() << MF.getName() << ":\n";
        std::map<unsigned, unsigned> mapOfDebugs;
        for(const MachineBasicBlock& MBB: MF)
        {
            for(const MachineInstr& MI: MBB)
            {
                if(MI.isDebugInstr())
                {
                    if(mapOfDebugs.count(MI.getOpcode()))
                    {
                        mapOfDebugs[MI.getOpcode()]++;
                    }
                    else
                    {
                        mapOfDebugs[MI.getOpcode()] = 1;
                    }
                }
            }

        }
        for(auto it = mapOfDebugs.cbegin(); it != mapOfDebugs.cend(); it++)
        {
            unsigned key = it->first;
            switch(key)
            {
                case TargetOpcode::DBG_VALUE:
                    errs() << "\tDBG_VALUE: " << it->second << "\n";
                    break;
                case TargetOpcode::DBG_LABEL:
                    errs() << "\tDBG_LABEL: " << it->second << "\n";
                    break;
                case TargetOpcode::DBG_INSTR_REF:
                    errs() << "\tDBG_REF: " << it->second << "\n";
                    break;
                case TargetOpcode::DBG_PHI:
                    errs() << "\tDBG_PHI: " << it->second << "\n";
                    break;
                
                default:
                    errs() << "NOT EXPECTED, OPCODE IS NOT DEBUG" << "\n";
            }

        }
    }
    return false;
}