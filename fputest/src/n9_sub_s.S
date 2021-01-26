#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n9_sub_s_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_SUB_S(0x4ed7168b, 0x4e49ec8f, 0x4e644087)
    TEST_SUB_S(0x4ec87931, 0x4ecc6691, 0xcbfb5800)
    TEST_SUB_S(0x4ee961b9, 0x4dca4ae8, 0x4eb6ceff)
    TEST_SUB_S(0x4e2ba251, 0x4ec4aab2, 0xce5db313)
    TEST_SUB_S(0x4e0e387d, 0x4e8dd0fa, 0xce0d6977)
    TEST_SUB_S(0x4e746d63, 0x4ea0fdaf, 0xcd9b1bf6)
    TEST_SUB_S(0x4e3ac508, 0x4e836e3e, 0xcd982ee8)
    TEST_SUB_S(0x4ef3c554, 0x4eea8bc3, 0x4c939910)
    TEST_SUB_S(0x4ea2be01, 0x4eb7a0c6, 0xcd271628)
    TEST_SUB_S(0x4d910043, 0x4e9b6250, 0xce6e447e)
    TEST_SUB_S(0x4c0588c7, 0x4df8b74f, 0xcde80636)
    TEST_SUB_S(0x4d8c866f, 0x4ecdde87, 0xceaabceb)
    TEST_SUB_S(0x4da0707c, 0x4e4d4895, 0xcdfa20ae)
    TEST_SUB_S(0x4d84e7c9, 0x4d5ed726, 0x4c2be1b0)
    TEST_SUB_S(0x4effb984, 0x4ddf7ebd, 0x4ec7d9d5)
    TEST_SUB_S(0x4e834f8a, 0x4ed6d00f, 0xce27010a)
    TEST_SUB_S(0x4e9cd5f7, 0x4e179175, 0x4e221a79)
    TEST_SUB_S(0x4ea336a0, 0x4e8637af, 0x4d67f788)
    TEST_SUB_S(0x4e7cb6e9, 0x4ef907c9, 0xce7558a9)
    TEST_SUB_S(0x4e15c4c3, 0x4ec577b3, 0xce752aa3)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n9_sub_s_test)

