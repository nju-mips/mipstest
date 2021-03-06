#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n61_lh_test)
    .set noreorder
    addiu s0, s0, 1
    li  s2, 0x0
###test inst
    TEST_LH(0x51842560, DADDR(2bc4), 0x0000127c, 0x0000127c, 0x00002560)
    TEST_LH(0x2516116e, DADDR(2220), 0x0000a890, 0x0000a890, 0x0000116e)
    TEST_LH(0x4932330c, DADDR(3810), 0x00008526, 0x00008524, 0x00004932)
    TEST_LH(0xbe4d9ac8, DADDR(ac60), 0x00000092, 0x00000090, 0xffffbe4d)
    TEST_LH(0x5f0c0856, DADDR(1800), 0x00008964, 0x00008964, 0x00000856)
    TEST_LH(0xbfa5bc80, DADDR(9ca0), 0x00002950, 0x00002950, 0xffffbc80)
    TEST_LH(0x67b0ca80, DADDR(b258), 0x00002f74, 0x00002f74, 0xffffca80)
    TEST_LH(0xb0c4ee88, DADDR(0a08), 0x000029d4, 0x000029d4, 0xffffee88)
    TEST_LH(0xa28fbedc, DADDR(130c), 0x0000cf28, 0x0000cf28, 0xffffbedc)
    TEST_LH(0x01589400, DADDR(3568), 0x00009f36, 0x00009f34, 0x00000158)
    TEST_LH(0x20483e02, DADDR(d600), 0x00001e7c, 0x00001e7c, 0x00003e02)
    TEST_LH(0x61718b00, DADDR(8550), 0x000024e0, 0x000024e0, 0xffff8b00)
    TEST_LH(0xb2044740, DADDR(1a30), 0x00006d88, 0x00006d88, 0x00004740)
    TEST_LH(0x6dbe93b6, DADDR(2a08), 0x000013e0, 0x000013e0, 0xffff93b6)
    TEST_LH(0xe96e7db0, DADDR(25e8), 0x0000b50a, 0x0000b508, 0xffffe96e)
    TEST_LH(0x6737a118, DADDR(4f78), 0x00004fae, 0x00004fac, 0x00006737)
    TEST_LH(0x2fec7a40, DADDR(5228), 0x0000a466, 0x0000a464, 0x00002fec)
    TEST_LH(0x5805df3d, DADDR(e870), 0x00000454, 0x00000454, 0xffffdf3d)
    TEST_LH(0x4ea0d20c, DADDR(2194), 0x0000d7c8, 0x0000d7c8, 0xffffd20c)
    TEST_LH(0x7bf8d942, DADDR(5d50), 0x0000a000, 0x0000a000, 0xffffd942)
    TEST_LH(0x37ee910e, DADDR(97f0), 0x00000174, 0x00000174, 0xffff910e)
    TEST_LH(0x02593920, DADDR(23b8), 0x0000b00c, 0x0000b00c, 0x00003920)
    TEST_LH(0xb7e21268, DADDR(cba8), 0x0000221c, 0x0000221c, 0x00001268)
    TEST_LH(0x0074b9d0, DADDR(17a8), 0x0000c28c, 0x0000c28c, 0xffffb9d0)
    TEST_LH(0x1326e800, DADDR(0848), 0x0000816e, 0x0000816c, 0x00001326)
    TEST_LH(0xb42e5a40, DADDR(3b34), 0x000014d8, 0x000014d8, 0x00005a40)
    TEST_LH(0x783e0a00, DADDR(7838), 0x00002c3c, 0x00002c3c, 0x00000a00)
    TEST_LH(0xd6942958, DADDR(53a8), 0x0000564a, 0x00005648, 0xffffd694)
    TEST_LH(0x9d237d60, DADDR(0600), 0x0000590c, 0x0000590c, 0x00007d60)
    TEST_LH(0x098f2730, DADDR(1b58), 0x000088a8, 0x000088a8, 0x00002730)
    TEST_LH(0x2ab8ce90, DADDR(31ec), 0x000038d0, 0x000038d0, 0xffffce90)
    TEST_LH(0x37fdbec8, DADDR(4890), 0x00005bd2, 0x00005bd0, 0x000037fd)
    TEST_LH(0x34fc33ac, DADDR(5448), 0x000016d2, 0x000016d0, 0x000034fc)
    TEST_LH(0xdcc144c8, DADDR(6940), 0x0000673c, 0x0000673c, 0x000044c8)
    TEST_LH(0x3354e5b4, DADDR(5834), 0x00003926, 0x00003924, 0x00003354)
    TEST_LH(0xb5e7da8e, DADDR(cc78), 0x00000800, 0x00000800, 0xffffda8e)
    TEST_LH(0x8c87a650, DADDR(2d9c), 0x00006440, 0x00006440, 0xffffa650)
    TEST_LH(0x3df29bc0, DADDR(0000), 0x0000834e, 0x0000834c, 0x00003df2)
    TEST_LH(0x975c3a5c, DADDR(0000), 0x0000e8cc, 0x0000e8cc, 0x00003a5c)
    TEST_LH(0x29ab53d6, DADDR(0000), 0x000089e8, 0x000089e8, 0x000053d6)
    TEST_LH(0x763b2600, DADDR(0000), 0x00003e7c, 0x00003e7c, 0x00002600)
    TEST_LH(0x774ed370, DADDR(0000), 0x0000a760, 0x0000a760, 0xffffd370)
    TEST_LH(0x8e24d680, DADDR(0000), 0x0000ffe0, 0x0000ffe0, 0xffffd680)
    TEST_LH(0xfe3936cb, DADDR(0000), 0x000017b0, 0x000017b0, 0x000036cb)
    TEST_LH(0x0b892a40, DADDR(0000), 0x0000b03a, 0x0000b038, 0x00000b89)
    TEST_LH(0xd92fe108, DADDR(0000), 0x00005d48, 0x00005d48, 0xffffe108)
    TEST_LH(0x4c4bc954, DADDR(0000), 0x00002258, 0x00002258, 0xffffc954)
    TEST_LH(0xb7baba40, DADDR(0000), 0x0000a106, 0x0000a104, 0xffffb7ba)
    TEST_LH(0x8a754a34, DADDR(0000), 0x000053a8, 0x000053a8, 0x00004a34)
    TEST_LH(0x062c0990, DADDR(0000), 0x0000b7c0, 0x0000b7c0, 0x00000990)
    TEST_LH(0xf3c0fc50, DADDR(0000), 0x0000e692, 0x0000e690, 0xfffff3c0)
    TEST_LH(0x941e1b70, DADDR(0000), 0x00009544, 0x00009544, 0x00001b70)
    TEST_LH(0x06a8f600, DADDR(0000), 0x0000c14e, 0x0000c14c, 0x000006a8)
    TEST_LH(0xf0c9f8c0, DADDR(0000), 0x00004156, 0x00004154, 0xfffff0c9)
    TEST_LH(0x6d67df7c, DADDR(0000), 0x00001ce6, 0x00001ce4, 0x00006d67)
    TEST_LH(0x7b5c8c40, DADDR(0000), 0x0000a170, 0x0000a170, 0xffff8c40)
    TEST_LH(0xa01d88d6, DADDR(0000), 0x0000f236, 0x0000f234, 0xffffa01d)
    TEST_LH(0xbb91715e, DADDR(0000), 0x0000ea5e, 0x0000ea5c, 0xffffbb91)
    TEST_LH(0xa2086268, DADDR(0000), 0x0000ae6c, 0x0000ae6c, 0x00006268)
    TEST_LH(0xc16e7fd2, DADDR(0000), 0x000010e4, 0x000010e4, 0x00007fd2)
    TEST_LH(0xf26f0540, DADDR(0000), 0x00007fb8, 0x00007fb8, 0x00000540)
    TEST_LH(0x5df5b227, DADDR(0000), 0x00002b56, 0x00002b54, 0x00005df5)
    TEST_LH(0x17cb2286, DADDR(0000), 0x0000a610, 0x0000a610, 0x00002286)
    TEST_LH(0xcc5b2bee, DADDR(0000), 0x0000ba32, 0x0000ba30, 0xffffcc5b)
    TEST_LH(0xf148bba0, DADDR(0000), 0x0000a0d2, 0x0000a0d0, 0xfffff148)
    TEST_LH(0x337725a6, DADDR(0000), 0x0000762e, 0x0000762c, 0x00003377)
    TEST_LH(0x2982116c, DADDR(0000), 0x0000b980, 0x0000b980, 0x0000116c)
    TEST_LH(0xf335ae26, DADDR(0000), 0x0000de14, 0x0000de14, 0xffffae26)
    TEST_LH(0x1cea3011, DADDR(0000), 0x00004610, 0x00004610, 0x00003011)
    TEST_LH(0x5288a4be, DADDR(0000), 0x000020e0, 0x000020e0, 0xffffa4be)
    TEST_LH(0xaba58c80, DADDR(0000), 0x0000cecc, 0x0000cecc, 0xffff8c80)
    TEST_LH(0x878018c0, DADDR(0000), 0x00001a08, 0x00001a08, 0x000018c0)
    TEST_LH(0xdcfe7908, DADDR(0000), 0x00000002, 0x00000000, 0xffffdcfe)
    TEST_LH(0xca7e2534, DADDR(0000), 0x00000000, 0x00000000, 0x00002534)
    TEST_LH(0x3a5f5000, DADDR(0000), 0x00000000, 0x00000000, 0x00005000)
    TEST_LH(0xc087931c, DADDR(0000), 0x00000000, 0x00000000, 0xffff931c)
    TEST_LH(0x0352c2b4, DADDR(0000), 0x00000002, 0x00000000, 0x00000352)
    TEST_LH(0x674236b0, DADDR(0000), 0x00000000, 0x00000000, 0x000036b0)
    TEST_LH(0xb8008adc, DADDR(0000), 0x00000002, 0x00000000, 0xffffb800)
    TEST_LH(0x9368c576, DADDR(0000), 0x00000000, 0x00000000, 0xffffc576)
    TEST_LH(0xfba1ce40, DADDR(0000), 0x00000000, 0x00000000, 0xffffce40)
    TEST_LH(0x585c5e30, DADDR(0000), 0x00000000, 0x00000000, 0x00005e30)
    TEST_LH(0x9915f89c, DADDR(0000), 0x00000000, 0x00000000, 0xfffff89c)
    TEST_LH(0x8aefa220, DADDR(0000), 0x00000002, 0x00000000, 0xffff8aef)
    TEST_LH(0x42ccca62, DADDR(0000), 0x00000000, 0x00000000, 0xffffca62)
    TEST_LH(0x00000000, DADDR(0000), 0x00000000, 0x00000000, 0x00000000)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n61_lh_test)
