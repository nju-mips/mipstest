#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n9_wsbh_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_WSBH(0x287b78ef, 0x7b28ef78)
    TEST_WSBH(0x181e0b04, 0x1e18040b)
    TEST_WSBH(0x79025ad8, 0x0279d85a)
    TEST_WSBH(0x503c59fc, 0x3c50fc59)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n9_wsbh_test)
