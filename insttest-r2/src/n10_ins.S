#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n10_ins_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_INS(0x561d90a9, 0x7f8ef599, 0x561e90a9, 16, 2)
    TEST_INS(0x38021245, 0x358b8480, 0x3a521245, 20, 7)
    TEST_INS(0x27db2103, 0x0409f67b, 0x26732103, 19, 6)
    TEST_INS(0x5dde9b56, 0x4535b777, 0x5d629b56, 18, 8)
    TEST_INS(0x642229dd, 0x32a16e44, 0x6402a9dd, 15, 7)
    TEST_INS(0x4a9a8c2b, 0x00af69a6, 0x2a9a8c2b, 29, 2)
    TEST_INS(0x1da58354, 0x48ec7da5, 0x0e4d8354, 16, 13)
    TEST_INS(0x07aaee30, 0x47969d08, 0x07aaee30, 31, 1)
    TEST_INS(0x28cd46b0, 0x5dc97ed9, 0x28cd46b0, 19, 1)
    TEST_INS(0x44afdd07, 0x631f58f5, 0x44afdd07, 23, 1)
    TEST_INS(0x50bff56b, 0x6b22fe0b, 0x50bff56b, 10, 1)
    TEST_INS(0x2c30671d, 0x2e2290c1, 0x2caca71d, 14, 13)
    TEST_INS(0x7a03e9fd, 0x10af50fa, 0x7a19b1fd, 10, 11)
    TEST_INS(0x02e54a27, 0x24b43e28, 0x02e55a67, 6, 8)
    TEST_INS(0x765b2d76, 0x1132ddbb, 0x425b2d76, 25, 6)
    TEST_INS(0x0a06e9b9, 0x4a061ba6, 0x0a128fb9, 6, 17)
    TEST_INS(0x32693d59, 0x32dfd669, 0x36693d59, 25, 2)
    TEST_INS(0x03406e31, 0x7b191a60, 0x03496e31, 15, 5)
    TEST_INS(0x38e70bda, 0x5409639c, 0x3ce18bda, 14, 14)
    TEST_INS(0x5b1f97bc, 0x698e32f7, 0x5b1f06dc, 3, 14)
    TEST_INS(0x0fb2078d, 0x5538b8d9, 0x0fce078d, 17, 6)
    TEST_INS(0x20fa2a57, 0x12b361f4, 0x23fe2a57, 15, 12)
    TEST_INS(0x1cd77fa8, 0x665957cd, 0x17277fa8, 20, 8)
    TEST_INS(0x1c0ec7da, 0x213a0f61, 0x1c9ec7da, 19, 5)
    TEST_INS(0x100a67cd, 0x53080533, 0x1353abcd, 9, 22)
    TEST_INS(0x674193f8, 0x169d19fe, 0x674193f8, 31, 1)
    TEST_INS(0xe97205ed, 0x24231fd2, 0x4af205ed, 23, 9)
    TEST_INS(0x4fc2655b, 0x26110cc9, 0x4fc2655b, 26, 1)
    TEST_INS(0x138b6743, 0x5f906ce8, 0x138b154b, 3, 15)
    TEST_INS(0x5cf44f72, 0x37893fa2, 0x5cc46f72, 13, 11)
    TEST_INS(0x1f5f78d9, 0x73ebef1b, 0x12d9c901, 3, 26)
    TEST_INS(0x26711dd6, 0x2f7890db, 0x267118d6, 7, 5)
    TEST_INS(0x5358f976, 0x39c4c4a3, 0x5358f970, 1, 2)
    TEST_INS(0x04feeda0, 0x3a9a8d68, 0x04feeda0, 27, 1)
    TEST_INS(0x7f0f38d3, 0x4ff0f38d, 0x27dace33, 4, 27)
    TEST_INS(0x0e5dd6bf, 0x779d338e, 0x745dd6bf, 24, 7)
    TEST_INS(0x66d2829c, 0x07e8ec0a, 0x6682829c, 19, 4)
    TEST_INS(0x6f9b7de0, 0x4346f20e, 0x5f9b7de0, 28, 2)
    TEST_INS(0x2d51b87f, 0x727546e1, 0x2b96cdff, 6, 21)
    TEST_INS(0x3f9b5bed, 0x5207e6d6, 0x3598c3ed, 10, 18)
    TEST_INS(0xed10236c, 0x08f1bd5d, 0x7510236c, 27, 5)
    TEST_INS(0xb14f110c, 0x438c4ac5, 0x7a0f110c, 22, 10)
    TEST_INS(0x93f0009a, 0x2249f800, 0x4a00049a, 9, 23)
    TEST_INS(0x028204f0, 0x0eb8f805, 0x400204f0, 23, 9)
    TEST_INS(0xb3b10ae9, 0x0316cec4, 0x314dcae9, 14, 18)
    TEST_INS(0x15ff759d, 0x0affbace, 0x17d04d85, 1, 31)
    TEST_INS(0x29c799ef, 0x4a71e67b, 0x5b173f93, 2, 30)
    TEST_INS(0x3e354cc5, 0x27c6a998, 0x124a20bd, 3, 29)
    TEST_INS(0x535d7797, 0x535d7797, 0x5ea30063, 0, 32)
    TEST_INS(0x9579b450, 0x25655e6d, 0x143bc450, 10, 22)
    TEST_INS(0x313209e7, 0x313209e7, 0x1d2d81ad, 0, 32)
    TEST_INS(0x0d609402, 0x64cb2596, 0x0d609402, 31, 1)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n10_ins_test)
