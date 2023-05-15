#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/initializeDbgInstructionDelete.h"

using namespace llvm;


#define DEBUG_TYPE "dbg-ins-delete"

static cl::opt<bool>
EnableDbgInsDelete("enable-dbg-ins-delete", cl::Hidden, cl::init(false), cl::desc("Enable Debug Instruction Deletion"));

namespace{
    class DbgInstructionDelete: public MachineFunctionPass{
        public:
        static char ID;
        bool runOnMachineFunction(MachineFunction& MF) override;
        DbgInstructionDelete();
    };
}

char DbgInstructionDelete::ID = 0;
//preskocen

INITIALIZE_PASS_BEGIN(DbgInstructionDelete, DEBUG_TYPE, "Delete Debug Instructions", false, false)
INITIALIZE_PASS_END(DbgInstructionDelete, DEBUG_TYPE, "Delete Debug Instructions", false, false)

DbgInstructionDelete::DbgInstructionDelete() : MachineFunctionPass(DbgInstructionDelete::ID)
{
    initializeDbgInstructionDeletePass(*PassRegistry::getPassRegistry());
}

bool DbgInstructionDelete::runOnMachineFunction(MachineFunction& MF)
{
    if(EnableDbgInsDelete)
    {
        for(MachineBasicBlock& MBB: MF)
        {
            for(MachineBasicBlock::iterator MBB_iterator = MBB.begin(), MBB_end = MBB.end(); MBB_iterator != MBB_end;)
            {
                MachineInstr& MI = *MBB_iterator;
                MBB_iterator++;
                if(MI.isDebugInstr())
                {
                    MI.eraseFromParent();
                }

            }
        }
        return true;
    }
    return false;
}
