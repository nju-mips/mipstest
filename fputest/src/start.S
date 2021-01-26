#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

#define TEST_NUM 27

#define EXT_8TO16(t2, t3) \

##s0, number
##s1, number adress 
##s2, exception use
##s3, score
##s4, exception pc
	.set   noreorder
	.globl _start
_start:
	j main
	nop

.org 0x200
    mfc0 k0, c0_cause
    nop
    mfc0 k0, c0_status
    nop
    mfc0 k0, c0_epc
    addiu k0, k0, 4
    mtc0 k0, c0_epc
    eret
    nop

.org 0x380
    mfc0 k0, c0_cause
    nop
    mfc0 k0, c0_status
    nop
    mfc0 k0, c0_epc
    addiu k0, k0, 4
    mtc0 k0, c0_epc
    eret
    nop

main:
	.set noreorder
    lui s0, 0           ## initial run number
	li  s3, 0
    lui t0,0xF000
    mfc0 t1, c0_status
    or t1, t0, t1
    mtc0 t1, c0_status  # enable fpu
    nop

inst_test:
    jal n1_mfc1_test    # mfc1
    nop
    jal n2_mtc1_test    # mtc1
    nop
    jal n3_lwc1_test    # lwc1
    nop
    jal n4_swc1_test    # swc1
    nop
    jal n5_ldc1_test    # ldc1
    nop
    jal n6_sdc1_test    # sdc1
    nop
    jal n7_add_s_test   # add.s
    nop
    jal n8_add_d_test   # add.d
    nop
    jal n9_sub_s_test   # sub.s
    nop
    jal n10_sub_d_test   # sub.d
    nop
    jal n11_mul_s_test   # mul.s
    nop
    jal n12_mul_d_test   # mul.d
    nop
    jal n13_div_s_test   # div.s
    nop
    jal n14_div_d_test   # div.d
    nop
    jal n15_sqrt_s_test  # sqrt.s
    nop
    jal n16_sqrt_d_test  # sqrt.d
    nop
    jal n17_mov_s_test   # mov.s
    nop
    jal n18_mov_d_test   # mov.d
    nop
    jal n19_neg_s_test   # neg.s
    nop
    jal n20_neg_d_test   # neg.d
    nop

test_end:
    LI  (s0, TEST_NUM)
    bne s0, s3, inst_error
    nop

	li k0, 0
	li v0, GPIO_ADDR
	sb  k0,0(v0)
1:  b 1b
	nop

inst_error:
	li k0, 1
	li v0, GPIO_ADDR
	sb  k0,0(v0)
1:  b 1b
	nop
