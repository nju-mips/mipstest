#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n8_seh_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_SEH(0x75ce8687, 0xffff8687)
    TEST_SEH(0x4367c83e, 0xffffc83e)
    TEST_SEH(0x7b268d2a, 0xffff8d2a)
    TEST_SEH(0x15044d0d, 0x00004d0d)
    TEST_SEH(0x00000055, 0x00000055)
    TEST_SEH(0x00000088, 0x00000088)
    TEST_SEH(0x000000dc, 0x000000dc)
    TEST_SEH(0x00000009, 0x00000009)
    TEST_SEH(0x0000d199, 0xffffd199)
    TEST_SEH(0x0000d033, 0xffffd033)
    TEST_SEH(0x00006b13, 0x00006b13)
    TEST_SEH(0x00006670, 0x00006670)
    TEST_SEH(0x00f2020c, 0x0000020c)
    TEST_SEH(0x00fbabd6, 0xffffabd6)
    TEST_SEH(0x00f0eeab, 0xffffeeab)
    TEST_SEH(0x00f9f413, 0xfffff413)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n8_seh_test)
