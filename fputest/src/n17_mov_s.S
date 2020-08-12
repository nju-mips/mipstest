#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n17_mov_s_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_MOV_S(0x4ed7168b, 0x4ed7168b)
    TEST_MOV_S(0x4e49ec8f, 0x4e49ec8f)
    TEST_MOV_S(0x4ec87931, 0x4ec87931)
    TEST_MOV_S(0x4ecc6691, 0x4ecc6691)
    TEST_MOV_S(0x4ee961b9, 0x4ee961b9)
    TEST_MOV_S(0x4dca4ae8, 0x4dca4ae8)
    TEST_MOV_S(0x4e2ba251, 0x4e2ba251)
    TEST_MOV_S(0x4ec4aab2, 0x4ec4aab2)
    TEST_MOV_S(0x4e0e387d, 0x4e0e387d)
    TEST_MOV_S(0x4e8dd0fa, 0x4e8dd0fa)
    TEST_MOV_S(0x4e746d63, 0x4e746d63)
    TEST_MOV_S(0x4ea0fdaf, 0x4ea0fdaf)
    TEST_MOV_S(0x4e3ac508, 0x4e3ac508)
    TEST_MOV_S(0x4e836e3e, 0x4e836e3e)
    TEST_MOV_S(0x4ef3c554, 0x4ef3c554)
    TEST_MOV_S(0x4eea8bc3, 0x4eea8bc3)
    TEST_MOV_S(0x4ea2be01, 0x4ea2be01)
    TEST_MOV_S(0x4eb7a0c6, 0x4eb7a0c6)
    TEST_MOV_S(0x4d910043, 0x4d910043)
    TEST_MOV_S(0x4e9b6250, 0x4e9b6250)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n17_mov_s_test)

