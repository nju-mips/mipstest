#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

#define TEST_NUM 31

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

/*
 *  exception handle
 */
.org 0x200
    j tlb_refill_ex
    nop

.org 0x380
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    srl  k0, k0, 0x2
    li   k1, 1
    beq  k0, k1, tlb_refill_ex
    nop
    li   k1, 2
    beq  k0, k1, tlb_refill_ex 
    nop
    li   k1, 3
    beq  k0, k1, tlb_refill_ex 
    nop
    j exception_vector_entry
    nop

tlb_refill_ex:
    lui v1, 0xffe8
    ori v1, 0xdc03
    beq v0, v1, tlbwr_ex
    nop
    lui v1, 0xefe8
    ori v1, 0xdc03
    beq v0, v1, tlbwi_ex
    nop

tlbwr_ex:
    li v1, 0x1
    beq t2, v1, tlbwr_allbit
    nop
    li v1, 0x3
    beq t2, v1, tlbwr_asid
    nop
    addiu t0, 0x0001
    addiu t1, 0x0001
    addiu t2, 0x0001
    j tlbwr_return
    nop
tlbwr_allbit:
    ori t0, 0x7
    ori t1, 0x7
    j tlbwr_return
    nop
tlbwr_asid:
    j tlbwr_return
    nop
tlbwr_return:
    mtc0 s0, c0_entryhi
    mtc0 t0, c0_entrylo0
    mtc0 t1, c0_entrylo1
    tlbwr
    lui v1, 0xed08
    ori v1, 0xdc15
    add v1, v1, t2
    .set mips32
    eret
    .set mips1
tlbwi_ex:
    mfc0 v1, c0_badvaddr
    lui a1, 0xffff
    ori a1, 0xe000
    and v1, a1, v1
    mtc0 v1, c0_entryhi
    li v1, 0x4007
    mtc0 v1, c0_entrylo0
    li v1, 0x4007
    mtc0 v1, c0_entrylo1
    tlbwi
    lui v1, 0xed12
    ori v1, 0x5678
    .set mips32
    eret
    .set mips1
    nop

exception_vector_entry:
    mfhi k0
    mflo k1
    li  k0, DADDR(0000)
    lw  k1, 0x0(k0)
    li  k0, 0x01 # syscall
    beq k1, k0, syscall_ex
    nop
    li  k0, 0x02 # break
    beq k1, k0, break_ex
    nop
    li  k0, 0x03 # overflow
    beq k1, k0, overflow_ex
    nop
    li  k0, 0x04 # adel(load)
    beq k1, k0, adel_load_ex
    nop
    li  k0, 0x05 # ades
    beq k1, k0, ades_ex
    nop
    li  k0, 0x06 # adel(inst fetch)
    beq k1, k0, adel_if_ex
    nop
    li  k0, 0x07 # reserved inst
    beq k1, k0, reserved_inst_ex
    nop
    li  k0, 0x08 # int
    beq k1, k0, int_ex
    nop

syscall_ex:
    addu  s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    li   k1, 0x20 # 010_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02
    li   k1, 0x02
    bne  k0, k1, ex_finish
    nop
    lui  s2, 0x1
    b ex_finish
    nop

break_ex:
    addu  s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    li   k1, 0x24 # 010_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li   k1, 0x02 # exl = 1
    bne  k0, k1, ex_finish
    nop
    lui  s2, 0x2
    b ex_finish
    nop

overflow_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x30 # 011_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x3
    b ex_finish
    nop

adel_load_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x10 # 001_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x4
    b ex_finish
    nop

ades_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x14 # 001_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x5
    b ex_finish
    nop

adel_if_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mtc0 s5, c0_epc
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x10 # 001_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x6
    b ex_finish
    nop

reserved_inst_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x28 # 010_1000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x7
    b ex_finish
    nop

int_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    addiu k0, k0, 8
    mtc0  k0, c0_epc   //epc+8
    // disable_trace_cmp
    mfc0 k0, c0_cause  //don't compare cause.bd
    // enable_trace_cmp
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x00 # 000_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    li   k0, 0xffffffff
    li   k1, 0x00000000
    mtc0 k0, c0_compare //clear compare
    mtc0 k1, c0_cause
    lui s2, 0x8
    b ex_ret
    nop

ex_finish:
    mfc0 k0,c0_cause
    lui k1,0x8000
    and k0,k0,k1
    mfc0 k1,c0_epc
    addiu k1,k1,0x4
    beq k0,zero, 1f
    nop
    addiu k1,k1,0x4
1:  
    mtc0  k1,c0_epc
    nop
    bne s2, zero, ex_ret
    nop
    lui s2, 0xffff
ex_ret:
    .set mips32
    eret
    .set mips1
    nop
	b    inst_error
	nop

main:
	.set noreorder

    lui s0, 0          ## initial run number
	li  s3, 0

inst_test:
    jal n1_syscall_ex_test       #syscall
    nop
    jal n2_break_ex_test       #break ex
    nop
    jal n3_add_ov_ex_test      #add ov ex
    nop
    jal n4_addi_ov_ex_test     #addi ov ex
    nop
    jal n5_sub_ov_ex_test      #sub ov ex
    nop
    jal n6_lw_adel_ex_test     #lw adel ex
    nop
    jal n7_lh_adel_ex_test     #lh adel ex
    nop
    jal n8_lhu_adel_ex_test    #lhu adel ex
    nop
    jal n9_sw_ades_ex_test     #sw ades ex
    nop
    jal n10_sh_ades_ex_test     #sh ades ex
    nop
    jal n11_ft_adel_ex_test     #ft adel ex
    nop
    jal n12_ri_ex_test          #ri ex
    nop
    jal n13_soft_int_ex_test    #soft int ex
    nop
    jal n14_beq_ds_ex_test      #beq ds ex
    nop
    jal n15_bne_ds_ex_test      #bne ds ex
    nop
    jal n16_bgez_ds_ex_test     #bgez ds ex
    nop
    jal n17_bgtz_ds_ex_test     #bgtz ds ex
    nop
    jal n18_blez_ds_ex_test     #blez ds ex
    nop
    jal n19_bltz_ds_ex_test     #bltz ds ex
    nop
    jal n20_bltzal_ds_ex_test   #bltzal ds ex
    nop
    jal n21_bgezal_ds_ex_test   #bgezal ds ex
    nop
    jal n22_j_ds_ex_test        #j ds ex
    nop
    jal n23_jal_ds_ex_test      #jal ds ex
    nop
    jal n24_jr_ds_ex_test       #jr ds ex
    nop
    jal n25_jalr_ds_ex_test     #jalr ds ex
    nop
    jal n26_branch_prediction   #branch prediction
    nop
    jal n27_ds_cache_miss       #ds_cache_miss
    nop
    jal n28_cache_flush         #cache flush instr
    nop
	li t0, DADDR(0000)
	sw t0, 0(t0)
    jal n29_pref                #pref prefetch instructoin
    nop
#ifdef HAS_TLB
    jal n30_tlbwi               #tlbwi
    nop
    jal n31_tlbwr               #tlbwr
    nop
#else
	addiu s3, s3, 2
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
