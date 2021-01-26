#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n19_neg_s_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_NEG_S(0x4ed7168b, 0xced7168b)
    TEST_NEG_S(0x4e49ec8f, 0xce49ec8f)
    TEST_NEG_S(0x4ec87931, 0xcec87931)
    TEST_NEG_S(0x4ecc6691, 0xcecc6691)
    TEST_NEG_S(0x4ee961b9, 0xcee961b9)
    TEST_NEG_S(0x4dca4ae8, 0xcdca4ae8)
    TEST_NEG_S(0x4e2ba251, 0xce2ba251)
    TEST_NEG_S(0x4ec4aab2, 0xcec4aab2)
    TEST_NEG_S(0x4e0e387d, 0xce0e387d)
    TEST_NEG_S(0x4e8dd0fa, 0xce8dd0fa)
    TEST_NEG_S(0x4e746d63, 0xce746d63)
    TEST_NEG_S(0x4ea0fdaf, 0xcea0fdaf)
    TEST_NEG_S(0x4e3ac508, 0xce3ac508)
    TEST_NEG_S(0x4e836e3e, 0xce836e3e)
    TEST_NEG_S(0x4ef3c554, 0xcef3c554)
    TEST_NEG_S(0x4eea8bc3, 0xceea8bc3)
    TEST_NEG_S(0x4ea2be01, 0xcea2be01)
    TEST_NEG_S(0x4eb7a0c6, 0xceb7a0c6)
    TEST_NEG_S(0x4d910043, 0xcd910043)
    TEST_NEG_S(0x4e9b6250, 0xce9b6250)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n19_neg_s_test)

