#include <asm.h>
#include <regdef.h>
#include <head.h>

LEAF(n7_tlbp_test)
    .set noreorder
    addiu s0, s0 ,1
    addiu s2, zero, 0x0
    lui   t2, 0x1
###test inst
#if 1
#tlbp: G=0
    mtc0 zero, c0_index
    li   t0, 0xbfc00010+(1<<13)*2
    mtc0 t0, c0_entryhi
    tlbp
    mfc0 a0, c0_index
    li   t0, 2
    bne  t0, a0, inst_error
    nop
#tlbp: G=1
    mtc0 zero, c0_index
    li   t0, 0xbfc00010+(1<<13)*31+1
    mtc0 t0, c0_entryhi
    tlbp
    mfc0 a0, c0_index
    li   t0, 31
    bne  t0, a0, inst_error
    nop
#tlbp: G=0
    mtc0 zero, c0_index
    li   t0, 0xbfc00010+(1<<13)*30+3
    mtc0 t0, c0_entryhi
    tlbp
    mfc0 a0, c0_index
    srl  a0, 31
    li   t0, 1
    bne  t0, a0, inst_error
    nop
#endif 
    nop
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
    jr ra
###output (s0<<24)|s3
END(n7_tlbp_test)
