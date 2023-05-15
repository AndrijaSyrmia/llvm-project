#ifndef LLVM_CODEGEN_INITIALIZEDBGINSTRUCTIONDELETE_H
#define LLVM_CODEGEN_INITIALIZEDBGINSTRUCTIONDELETE_H

#include "llvm/PassRegistry.h"

namespace llvm{
    void initializeDbgInstructionDeletePass(PassRegistry&);
}


#endif