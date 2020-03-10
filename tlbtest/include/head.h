#define GPIO_ADDR    0xb0000000

inst_error:
	li k0, 1
	li v0,GPIO_ADDR
	sb  k0,0(v0)
1:  b 1b
	nop
