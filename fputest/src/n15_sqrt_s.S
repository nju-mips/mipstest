#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n15_sqrt_s_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_SQRT_S(0x4ed7168b, 0x4725ecee)
    TEST_SQRT_S(0x4e49ec8f, 0x46e35c27)
    TEST_SQRT_S(0x4ec87931, 0x47203073)
    TEST_SQRT_S(0x4ecc6691, 0x4721c02d)
    TEST_SQRT_S(0x4ee961b9, 0x472cd672)
    TEST_SQRT_S(0x4dca4ae8, 0x46a0ea18)
    TEST_SQRT_S(0x4e2ba251, 0x46d19d5c)
    TEST_SQRT_S(0x4ec4aab2, 0x471ea93e)
    TEST_SQRT_S(0x4e0e387d, 0x46becf62)
    TEST_SQRT_S(0x4e8dd0fa, 0x4706bb2e)
    TEST_SQRT_S(0x4e746d63, 0x46fa2590)
    TEST_SQRT_S(0x4ea0fdaf, 0x470f8d03)
    TEST_SQRT_S(0x4e3ac508, 0x46daa973)
    TEST_SQRT_S(0x4e836e3e, 0x4701b438)
    TEST_SQRT_S(0x4ef3c554, 0x4730a48c)
    TEST_SQRT_S(0x4eea8bc3, 0x472d44ab)
    TEST_SQRT_S(0x4ea2be01, 0x4710545a)
    TEST_SQRT_S(0x4eb7a0c6, 0x47194fb8)
    TEST_SQRT_S(0x4d910043, 0x46883c4e)
    TEST_SQRT_S(0x4e9b6250, 0x470d0767)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n15_sqrt_s_test)

