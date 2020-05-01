# mipstest

introduction:
1. insttest
    * test basic instructions (mips32r1 and mips32r2)
2. extest
    * test exception implementation
3. tlbtest
    * test mmu (always assume 32 tlb entries)
4. intrtest
    * test timer interrupt (especially occurred in delayslot or exception)
5. fputest
    * test fpu instructions

migrate notes:

1. All testcases will be loaded into 0xBFC00000 - 0xBFCFFFFF.
2. When encounter test failure, framework will write 1 to 0xB0000000
3. After passing all testcases, value 0 will be written to 0xB0000000
