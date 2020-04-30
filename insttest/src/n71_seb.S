#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n71_seb_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_SEB(0x4e5885b6, 0xffffffb6)
    TEST_SEB(0x3296a156, 0x00000056)
    TEST_SEB(0x473412a6, 0xffffffa6)
    TEST_SEB(0x70aa193f, 0x0000003f)
    TEST_SEB(0x000000b5, 0xffffffb5)
    TEST_SEB(0x0000000d, 0x0000000d)
    TEST_SEB(0x00000092, 0xffffff92)
    TEST_SEB(0x000000ec, 0xffffffec)
    TEST_SEB(0x00008907, 0x00000007)
    TEST_SEB(0x00002e75, 0x00000075)
    TEST_SEB(0x000025a7, 0xffffffa7)
    TEST_SEB(0x000039b5, 0xffffffb5)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n71_seb_test)
