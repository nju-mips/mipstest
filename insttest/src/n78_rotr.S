#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n78_rotr_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_ROTR(0x2078b9d6, 0, 0x2078b9d6)
    TEST_ROTR(0x0bfb8d73, 0, 0x0bfb8d73)
    TEST_ROTR(0x661ec910, 1, 0x330f6488)
    TEST_ROTR(0x10de566c, 1, 0x086f2b36)
    TEST_ROTR(0x391c83eb, 2, 0xce4720fa)
    TEST_ROTR(0x3312df8c, 2, 0x0cc4b7e3)
    TEST_ROTR(0x6be66e9b, 3, 0x6d7ccdd3)
    TEST_ROTR(0x0df7044a, 3, 0x41bee089)
    TEST_ROTR(0x007bf5cd, 4, 0xd007bf5c)
    TEST_ROTR(0x4a859311, 4, 0x14a85931)
    TEST_ROTR(0x3509f9b7, 5, 0xb9a84fcd)
    TEST_ROTR(0x42c0917d, 5, 0xea16048b)
    TEST_ROTR(0x6b3e5537, 6, 0xddacf954)
    TEST_ROTR(0x390c05ed, 6, 0xb4e43017)
    TEST_ROTR(0x101e326d, 7, 0xda203c64)
    TEST_ROTR(0x3bc62435, 7, 0x6a778c48)
    TEST_ROTR(0x42d2be62, 8, 0x6242d2be)
    TEST_ROTR(0x772e472e, 8, 0x2e772e47)
    TEST_ROTR(0x311a8803, 9, 0x01988d44)
    TEST_ROTR(0x47db0f7e, 9, 0xbf23ed87)
    TEST_ROTR(0x01185a81, 10, 0xa0404616)
    TEST_ROTR(0x5e1bf15f, 10, 0x57d786fc)
    TEST_ROTR(0x75173ab4, 11, 0x568ea2e7)
    TEST_ROTR(0x2a49560d, 11, 0xc1a5492a)
    TEST_ROTR(0x652c8ed5, 12, 0xed5652c8)
    TEST_ROTR(0x4144d2e2, 12, 0x2e24144d)
    TEST_ROTR(0x767bd46a, 13, 0xa353b3de)
    TEST_ROTR(0x2b857aba, 13, 0xd5d15c2b)
    TEST_ROTR(0x43cca916, 14, 0xa4590f32)
    TEST_ROTR(0x6bc1dfca, 14, 0x7f29af07)
    TEST_ROTR(0x27cebaf6, 15, 0x75ec4f9d)
    TEST_ROTR(0x644562ed, 15, 0xc5dac88a)
    TEST_ROTR(0x77bd6d3d, 16, 0x6d3d77bd)
    TEST_ROTR(0x0ded8406, 16, 0x84060ded)
    TEST_ROTR(0x7523b959, 17, 0xdcacba91)
    TEST_ROTR(0x30d9f128, 17, 0xf894186c)
    TEST_ROTR(0x41006392, 18, 0x18e49040)
    TEST_ROTR(0x610a27f4, 18, 0x89fd1842)
    TEST_ROTR(0x3ed0f572, 19, 0x1eae47da)
    TEST_ROTR(0x417c595f, 19, 0x8b2be82f)
    TEST_ROTR(0x2b8fbb06, 20, 0xfbb062b8)
    TEST_ROTR(0x73daef2a, 20, 0xaef2a73d)
    TEST_ROTR(0x043ceadc, 21, 0xe756e021)
    TEST_ROTR(0x16ce103d, 21, 0x7081e8b6)
    TEST_ROTR(0x2ce6f517, 22, 0x9bd45cb3)
    TEST_ROTR(0x145b1d49, 22, 0x6c752451)
    TEST_ROTR(0x52943472, 23, 0x2868e4a5)
    TEST_ROTR(0x6fb9b37a, 23, 0x7366f4df)
    TEST_ROTR(0x0b896477, 24, 0x8964770b)
    TEST_ROTR(0x03aebc75, 24, 0xaebc7503)
    TEST_ROTR(0x3794c2f8, 25, 0xca617c1b)
    TEST_ROTR(0x0ca1bef8, 25, 0x50df7c06)
    TEST_ROTR(0x61caadd5, 26, 0x72ab7558)
    TEST_ROTR(0x2cabfdac, 26, 0x2aff6b0b)
    TEST_ROTR(0x36eb1505, 27, 0xdd62a0a6)
    TEST_ROTR(0x46f73caa, 27, 0xdee79548)
    TEST_ROTR(0x6df0d08e, 28, 0xdf0d08e6)
    TEST_ROTR(0x2d66e970, 28, 0xd66e9702)
    TEST_ROTR(0x727cb764, 29, 0x93e5bb23)
    TEST_ROTR(0x31bd79a5, 29, 0x8debcd29)
    TEST_ROTR(0x1928c93a, 30, 0x64a324e8)
    TEST_ROTR(0x1a4b725a, 30, 0x692dc968)
    TEST_ROTR(0x1602dc92, 31, 0x2c05b924)
    TEST_ROTR(0x10e63677, 31, 0x21cc6cee)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n78_rotr_test)
