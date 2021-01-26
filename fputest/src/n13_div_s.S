#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n13_div_s_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_DIV_S(0x4ed7168b, 0x4e49ec8f, 0x4008583d)
    TEST_DIV_S(0x4ec87931, 0x4ecc6691, 0x3f7b14d3)
    TEST_DIV_S(0x4ee961b9, 0x4dca4ae8, 0x4093abea)
    TEST_DIV_S(0x4e2ba251, 0x4ec4aab2, 0x3edf6a40)
    TEST_DIV_S(0x4e0e387d, 0x4e8dd0fa, 0x3f005d6d)
    TEST_DIV_S(0x4e746d63, 0x4ea0fdaf, 0x3f425695)
    TEST_DIV_S(0x4e3ac508, 0x4e836e3e, 0x3f35e501)
    TEST_DIV_S(0x4ef3c554, 0x4eea8bc3, 0x3f8508ca)
    TEST_DIV_S(0x4ea2be01, 0x4eb7a0c6, 0x3f62e1f2)
    TEST_DIV_S(0x4d910043, 0x4e9b6250, 0x3e6ee4c7)
    TEST_DIV_S(0x4c0588c7, 0x4df8b74f, 0x3d8971ec)
    TEST_DIV_S(0x4d8c866f, 0x4ecdde87, 0x3e2ebe7c)
    TEST_DIV_S(0x4da0707c, 0x4e4d4895, 0x3ec813ae)
    TEST_DIV_S(0x4d84e7c9, 0x4d5ed726, 0x3f98aeaa)
    TEST_DIV_S(0x4effb984, 0x4ddf7ebd, 0x40927562)
    TEST_DIV_S(0x4e834f8a, 0x4ed6d00f, 0x3f1c7cd7)
    TEST_DIV_S(0x4e9cd5f7, 0x4e179175, 0x400472d2)
    TEST_DIV_S(0x4ea336a0, 0x4e8637af, 0x3f9ba714)
    TEST_DIV_S(0x4e7cb6e9, 0x4ef907c9, 0x3f01e4c3)
    TEST_DIV_S(0x4e15c4c3, 0x4ec577b3, 0x3ec2298e)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n13_div_s_test)

