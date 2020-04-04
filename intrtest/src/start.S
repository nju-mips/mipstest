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
    mfc0 $k0, $12    # status
    mfc0 $k0, $13    # cause
    li $k1, 1
    mtc0 $zero, $11  # compare
    eret
ex_end:
