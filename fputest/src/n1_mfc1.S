#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n1_mfc1_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_MFC1(0xbd5972d1, 0xbd5972d1)
    TEST_MFC1(0xb63e63e4, 0xb63e63e4)
    TEST_MFC1(0xc2902fdc, 0xc2902fdc)
    TEST_MFC1(0x72617ff5, 0x72617ff5)
    TEST_MFC1(0x3ea91bf2, 0x3ea91bf2)
    TEST_MFC1(0xdab0b4f0, 0xdab0b4f0)
    TEST_MFC1(0x8ceeaa08, 0x8ceeaa08)
    TEST_MFC1(0x3ee644c0, 0x3ee644c0)
    TEST_MFC1(0x9a5d6fe0, 0x9a5d6fe0)
    TEST_MFC1(0x2eaf38e8, 0x2eaf38e8)
    TEST_MFC1(0xfd281a38, 0xfd281a38)
    TEST_MFC1(0x739922d0, 0x739922d0)
    TEST_MFC1(0x35e02b56, 0x35e02b56)
    TEST_MFC1(0xccf948ba, 0xccf948ba)
    TEST_MFC1(0x2cd206d8, 0x2cd206d8)
    TEST_MFC1(0x783cec40, 0x783cec40)
    TEST_MFC1(0x3711e200, 0x3711e200)
    TEST_MFC1(0x364eca6e, 0x364eca6e)
    TEST_MFC1(0x57b0d404, 0x57b0d404)
    TEST_MFC1(0x4e0a2670, 0x4e0a2670)
    TEST_MFC1(0x201ec750, 0x201ec750)
    TEST_MFC1(0x6ad84ba0, 0x6ad84ba0)
    TEST_MFC1(0x8607994c, 0x8607994c)
    TEST_MFC1(0xd81d41ea, 0xd81d41ea)
    TEST_MFC1(0x84284dc0, 0x84284dc0)
    TEST_MFC1(0xdbe9f33a, 0xdbe9f33a)
    TEST_MFC1(0x71780f80, 0x71780f80)
    TEST_MFC1(0x0d952de0, 0x0d952de0)
    TEST_MFC1(0x16ec4528, 0x16ec4528)
    TEST_MFC1(0x4776e0ae, 0x4776e0ae)
    TEST_MFC1(0x94087e02, 0x94087e02)
    TEST_MFC1(0xb36c9cfc, 0xb36c9cfc)
    TEST_MFC1(0x46587f08, 0x46587f08)
    TEST_MFC1(0x222545bc, 0x222545bc)
    TEST_MFC1(0xd3c617c0, 0xd3c617c0)
    TEST_MFC1(0x2e6bfd75, 0x2e6bfd75)
    TEST_MFC1(0x3130e930, 0x3130e930)
    TEST_MFC1(0xffca05f8, 0xffca05f8)
    TEST_MFC1(0x102693fa, 0x102693fa)
    TEST_MFC1(0xd3fe3f14, 0xd3fe3f14)
    TEST_MFC1(0x8b1de170, 0x8b1de170)
    TEST_MFC1(0x956a769b, 0x956a769b)
    TEST_MFC1(0xace66bcc, 0xace66bcc)
    TEST_MFC1(0xd0fd19f0, 0xd0fd19f0)
    TEST_MFC1(0xed13df18, 0xed13df18)
    TEST_MFC1(0xa1bad7a6, 0xa1bad7a6)
    TEST_MFC1(0x2ad714b0, 0x2ad714b0)
    TEST_MFC1(0x14172b70, 0x14172b70)
    TEST_MFC1(0x7cff4e80, 0x7cff4e80)
    TEST_MFC1(0x171f65d8, 0x171f65d8)
    TEST_MFC1(0xcb7c6c00, 0xcb7c6c00)
    TEST_MFC1(0x9d1b5482, 0x9d1b5482)
    TEST_MFC1(0x1445c71c, 0x1445c71c)
    TEST_MFC1(0x09610836, 0x09610836)
    TEST_MFC1(0x7815eb60, 0x7815eb60)
    TEST_MFC1(0x70fa2370, 0x70fa2370)
    TEST_MFC1(0x91304650, 0x91304650)
    TEST_MFC1(0x0182aca8, 0x0182aca8)
    TEST_MFC1(0xac519e50, 0xac519e50)
    TEST_MFC1(0xf2b18ec0, 0xf2b18ec0)
    TEST_MFC1(0xb2d17089, 0xb2d17089)
    TEST_MFC1(0x892afd04, 0x892afd04)
    TEST_MFC1(0x79f96348, 0x79f96348)
    TEST_MFC1(0xe4ad3ddd, 0xe4ad3ddd)
    TEST_MFC1(0x1508b690, 0x1508b690)
    TEST_MFC1(0xdcae5c80, 0xdcae5c80)
    TEST_MFC1(0x4d20d118, 0x4d20d118)
    TEST_MFC1(0x7c0db120, 0x7c0db120)
    TEST_MFC1(0x5064e560, 0x5064e560)
    TEST_MFC1(0x4c15f2d5, 0x4c15f2d5)
    TEST_MFC1(0xc46dac00, 0xc46dac00)
    TEST_MFC1(0x13bf78e0, 0x13bf78e0)
    TEST_MFC1(0x801da900, 0x801da900)
    TEST_MFC1(0x04617750, 0x04617750)
    TEST_MFC1(0xa564430b, 0xa564430b)
    TEST_MFC1(0x56662adc, 0x56662adc)
    TEST_MFC1(0x53317267, 0x53317267)
    TEST_MFC1(0xdcc2f8d6, 0xdcc2f8d6)
    TEST_MFC1(0x7f9b08c0, 0x7f9b08c0)
    TEST_MFC1(0x2aea842c, 0x2aea842c)
    TEST_MFC1(0x2b3e5458, 0x2b3e5458)
    TEST_MFC1(0xdf410fc0, 0xdf410fc0)
    TEST_MFC1(0xc20e5b9c, 0xc20e5b9c)
    TEST_MFC1(0x69b5f0d6, 0x69b5f0d6)
    TEST_MFC1(0x2bfd57a6, 0x2bfd57a6)
    TEST_MFC1(0xa9bc1acc, 0xa9bc1acc)
    TEST_MFC1(0xe8cdc640, 0xe8cdc640)
    TEST_MFC1(0x0ee2a818, 0x0ee2a818)
    TEST_MFC1(0xcb71a800, 0xcb71a800)
    TEST_MFC1(0x09edf428, 0x09edf428)
    TEST_MFC1(0xed823800, 0xed823800)
    TEST_MFC1(0xd93ab3f8, 0xd93ab3f8)
    TEST_MFC1(0xafb6e9c0, 0xafb6e9c0)
    TEST_MFC1(0xa2937eb0, 0xa2937eb0)
    TEST_MFC1(0xc36b4870, 0xc36b4870)
    TEST_MFC1(0xea8633d0, 0xea8633d0)
    TEST_MFC1(0x4f814438, 0x4f814438)
    TEST_MFC1(0x7ef598e8, 0x7ef598e8)
    TEST_MFC1(0x1c2de7d0, 0x1c2de7d0)
    TEST_MFC1(0xccfdfbc9, 0xccfdfbc9)
    TEST_MFC1(0xd9d2d81a, 0xd9d2d81a)
    TEST_MFC1(0x21fa397c, 0x21fa397c)
    TEST_MFC1(0x3d1cf92c, 0x3d1cf92c)
    TEST_MFC1(0x137af739, 0x137af739)
    TEST_MFC1(0x9d325d28, 0x9d325d28)
    TEST_MFC1(0x8bc784f8, 0x8bc784f8)
    TEST_MFC1(0x267eae80, 0x267eae80)
    TEST_MFC1(0xabfac0ca, 0xabfac0ca)
    TEST_MFC1(0x7a286b6c, 0x7a286b6c)
    TEST_MFC1(0x741ac718, 0x741ac718)
    TEST_MFC1(0x0a0d4930, 0x0a0d4930)
    TEST_MFC1(0xc86ec474, 0xc86ec474)
    TEST_MFC1(0x07fecfd8, 0x07fecfd8)
    TEST_MFC1(0x84747a80, 0x84747a80)
    TEST_MFC1(0x00000000, 0x00000000)
    
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n1_mfc1_test)

