.set noreorder
.globl _start
.globl start
_start:
start:
    la $sp, _stack_pointer
    jal main
    nop
    li $t0, 0xb0000000
    sw $zero, 0($t0)
    nop
