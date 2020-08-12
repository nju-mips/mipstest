#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n7_add_s_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_ADD_S(0x4ed7168b, 0x4e49ec8f, 0x4f1e0669)
    TEST_ADD_S(0x4ec87931, 0x4ecc6691, 0x4f4a6fe1)
    TEST_ADD_S(0x4ee961b9, 0x4dca4ae8, 0x4f0dfa3a)
    TEST_ADD_S(0x4e2ba251, 0x4ec4aab2, 0x4f0d3ded)
    TEST_ADD_S(0x4e0e387d, 0x4e8dd0fa, 0x4ed4ed38)
    TEST_ADD_S(0x4e746d63, 0x4ea0fdaf, 0x4f0d9a30)
    TEST_ADD_S(0x4e3ac508, 0x4e836e3e, 0x4ee0d0c2)
    TEST_ADD_S(0x4ef3c554, 0x4eea8bc3, 0x4f6f288c)
    TEST_ADD_S(0x4ea2be01, 0x4eb7a0c6, 0x4f2d2f64)
    TEST_ADD_S(0x4d910043, 0x4e9b6250, 0x4ebfa261)
    TEST_ADD_S(0x4c0588c7, 0x4df8b74f, 0x4e04b434)
    TEST_ADD_S(0x4d8c866f, 0x4ecdde87, 0x4ef10023)
    TEST_ADD_S(0x4da0707c, 0x4e4d4895, 0x4e8ec06a)
    TEST_ADD_S(0x4d84e7c9, 0x4d5ed726, 0x4df4535c)
    TEST_ADD_S(0x4effb984, 0x4ddf7ebd, 0x4f1bcc9a)
    TEST_ADD_S(0x4e834f8a, 0x4ed6d00f, 0x4f2d0fcc)
    TEST_ADD_S(0x4e9cd5f7, 0x4e179175, 0x4ee89eb2)
    TEST_ADD_S(0x4ea336a0, 0x4e8637af, 0x4f14b728)
    TEST_ADD_S(0x4e7cb6e9, 0x4ef907c9, 0x4f3bb19f)
    TEST_ADD_S(0x4e15c4c3, 0x4ec577b3, 0x4f082d0a)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n7_add_s_test)

