#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n79_rotrv_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_ROTRV(0x33a75dcb, 0, 0x33a75dcb)
    TEST_ROTRV(0x3c5c2ff1, 0, 0x3c5c2ff1)
    TEST_ROTRV(0x54a5ce58, 1, 0x2a52e72c)
    TEST_ROTRV(0x4329f007, 1, 0xa194f803)
    TEST_ROTRV(0x07dff7b7, 2, 0xc1f7fded)
    TEST_ROTRV(0x37db4cf8, 2, 0x0df6d33e)
    TEST_ROTRV(0x5356a41d, 3, 0xaa6ad483)
    TEST_ROTRV(0x032447bc, 3, 0x806488f7)
    TEST_ROTRV(0x44ed49f9, 4, 0x944ed49f)
    TEST_ROTRV(0x4b32841c, 4, 0xc4b32841)
    TEST_ROTRV(0x7de97573, 5, 0x9bef4bab)
    TEST_ROTRV(0x4b1429b4, 5, 0xa258a14d)
    TEST_ROTRV(0x43743c2a, 6, 0xa90dd0f0)
    TEST_ROTRV(0x41b41f5b, 6, 0x6d06d07d)
    TEST_ROTRV(0x52c1fb95, 7, 0x2aa583f7)
    TEST_ROTRV(0x4cd32714, 7, 0x2899a64e)
    TEST_ROTRV(0x605e7f06, 8, 0x06605e7f)
    TEST_ROTRV(0x4563a4de, 8, 0xde4563a4)
    TEST_ROTRV(0x66ea1db9, 9, 0xdcb3750e)
    TEST_ROTRV(0x10a04d73, 9, 0xb9885026)
    TEST_ROTRV(0x66845254, 10, 0x9519a114)
    TEST_ROTRV(0x5b125631, 10, 0x8c56c495)
    TEST_ROTRV(0x73e5eef9, 11, 0xdf2e7cbd)
    TEST_ROTRV(0x207fb6b3, 11, 0xd6640ff6)
    TEST_ROTRV(0x2f5c03d0, 12, 0x3d02f5c0)
    TEST_ROTRV(0x68d5d654, 12, 0x65468d5d)
    TEST_ROTRV(0x2acaa7ed, 13, 0x3f695655)
    TEST_ROTRV(0x75240b5c, 13, 0x5ae3a920)
    TEST_ROTRV(0x0330c357, 14, 0x0d5c0cc3)
    TEST_ROTRV(0x72c3a048, 14, 0x8121cb0e)
    TEST_ROTRV(0x5a35436f, 15, 0x86deb46a)
    TEST_ROTRV(0x36d82123, 15, 0x42466db0)
    TEST_ROTRV(0x2f1fd039, 16, 0xd0392f1f)
    TEST_ROTRV(0x2edb11c7, 16, 0x11c72edb)
    TEST_ROTRV(0x7a02112a, 17, 0x08953d01)
    TEST_ROTRV(0x36ffc7f1, 17, 0xe3f89b7f)
    TEST_ROTRV(0x66b65ebf, 18, 0x97afd9ad)
    TEST_ROTRV(0x4d58b547, 18, 0x2d51d356)
    TEST_ROTRV(0x3a240fad, 19, 0x81f5a744)
    TEST_ROTRV(0x2ba3a8b9, 19, 0x75172574)
    TEST_ROTRV(0x188b3964, 20, 0xb3964188)
    TEST_ROTRV(0x380d8520, 20, 0xd8520380)
    TEST_ROTRV(0x76b7d26d, 21, 0xbe936bb5)
    TEST_ROTRV(0x5bff758e, 21, 0xfbac72df)
    TEST_ROTRV(0x79c1a47c, 22, 0x0691f1e7)
    TEST_ROTRV(0x4979ce02, 22, 0xe7380925)
    TEST_ROTRV(0x28d29ca2, 23, 0xa5394451)
    TEST_ROTRV(0x5a202382, 23, 0x404704b4)
    TEST_ROTRV(0x0edd72e0, 24, 0xdd72e00e)
    TEST_ROTRV(0x0fbcba5c, 24, 0xbcba5c0f)
    TEST_ROTRV(0x6ac070f6, 25, 0x60387b35)
    TEST_ROTRV(0x7561c535, 25, 0xb0e29aba)
    TEST_ROTRV(0x6acf108d, 26, 0xb3c4235a)
    TEST_ROTRV(0x5ea65fef, 26, 0xa997fbd7)
    TEST_ROTRV(0x15e17be8, 27, 0xbc2f7d02)
    TEST_ROTRV(0x1a2b145d, 27, 0x45628ba3)
    TEST_ROTRV(0x477c3643, 28, 0x77c36434)
    TEST_ROTRV(0x40ac23d5, 28, 0x0ac23d54)
    TEST_ROTRV(0x0f4f1fb9, 29, 0x7a78fdc8)
    TEST_ROTRV(0x4aacf99b, 29, 0x5567ccda)
    TEST_ROTRV(0x336fc41d, 30, 0xcdbf1074)
    TEST_ROTRV(0x69846329, 30, 0xa6118ca5)
    TEST_ROTRV(0x01851abe, 31, 0x030a357c)
    TEST_ROTRV(0x628f9457, 31, 0xc51f28ae)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n79_rotrv_test)
