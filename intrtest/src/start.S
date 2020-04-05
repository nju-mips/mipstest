.set noreorder
.globl _start
.globl start
.globl ex_begin
.globl ex_end
_start:
start:
    la $sp, _stack_pointer
    jal main
    nop
    li $t0, 0xb0000000
    sw $zero, 0($t0)
    nop

ex_begin:
    mtc0 $zero, $11  # compare
    mfc0 $k0, $14    # epc
    mfc0 $k0, $12    # status
    mfc0 $k0, $13    # cause

    andi $k0, $k0, 0x7c
    beqz $k0, 2f     # ex code is intr
    nop

1:  mfc0 $k0, $14    # epc
    addiu $k0, $k0, 4
    mtc0 $k0, $14

2:  li $k1, 1
    eret
ex_end:
