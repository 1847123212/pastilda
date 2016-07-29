        AREA    OSKERNEL, CODE, READONLY, ALIGN=2
        PRESERVE8

        EXPORT  HardFault_Handler
        IMPORT  HardFaultHandler

        THUMB

HardFault_Handler
        tst    LR, #4            ;// Check EXC_RETURN in Link register bit 2.
        ite    EQ
        mrseq  R0, MSP           ;// Stacking was using MSP.
        mrsne  R0, PSP           ;// Stacking was using PSP.
        b      HardFaultHandler  ;// Stack pointer passed through R0.

		END
