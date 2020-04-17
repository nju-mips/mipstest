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
    li sp, DADDR(A000)
    li gp, 0x1A000
	j main
	nop

.org 0x200
    eret
    nop

.org 0x380
    eret
    nop

main:
	.set noreorder
    .cprestore

    lui s0, 0          ## initial run number
	li  s3, 0

inst_test:
    jal n1_ll_test       # ll test
    nop
    jal n2_sc_test       # sc test
    nop
    jal n3_madd_test     # madd test
    nop
    jal n4_maddu_test    # maddu test
    nop
    jal n5_msub_test     # msub test
    nop
    jal n6_msubu_test    # msubu test
    nop
    jal n7_seb_test      # seb
    nop
    jal n8_seh_test      # seh
    nop
    jal n9_wsbh_test     # wsbh
    nop
    jal n10_ins_test     # ins
    nop
    jal n11_ext_test     # ext
    nop
#if HAS_FPU
    jal n12_mfc1_test    # mfc1
    nop
    jal n13_mtc1_test    # mtc1
    nop
    jal n14_lwc1_test    # lwc1
    nop
    jal n15_swc1_test    # swc1
    nop
    jal n16_ldc1_test    # ldc1
    nop
    jal n17_sdc1_test    # sdc1
    nop
    jal n18_add_s_test   # add.s
    nop
    jal n19_add_d_test   # add.d
    nop
    jal n20_sub_s_test   # sub.s
    nop
    jal n21_sub_d_test   # sub.d
    nop
    jal n22_mul_s_test   # mul.s
    nop
    jal n23_mul_d_test   # mul.d
    nop
    jal n24_div_s_test   # div.s
    nop
    jal n25_div_d_test   # div.d
    nop
    jal n26_sqrt_s_test  # sqrt.s
    nop
    jal n27_sqrt_d_test  # sqrt.d
    nop
#else
    addiu s3, s3, 16
#endif

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
