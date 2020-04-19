#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n14_lwc1_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    nop
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n14_lwc1_test)

