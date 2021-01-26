#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n12_mul_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_MUL_D(0x43dae2d159cc9ec9, 0x43d90f261a598cd2, 0x47c50dede3c615da)
    TEST_MUL_D(0x43dd2c3714465257, 0x43c5744a25312aac, 0x47b38f08051ef621)
    TEST_MUL_D(0x43c1c70f94a3743e, 0x43ce8dac5d283f6c, 0x47a0f95379b4cd78)
    TEST_MUL_D(0x43c758a0f920db8f, 0x43de78aa78dd5178, 0x47b63b1fa43a07ba)
    TEST_MUL_D(0x43d457c01f16f419, 0x43b22008544db128, 0x47970b723a47883d)
    TEST_MUL_D(0x4380b118d8f8b74f, 0x43b190cde766ef44, 0x4742533b149f9680)
    TEST_MUL_D(0x43b40e0f76335225, 0x43b09cf92e0ded72, 0x4774d2d0e17e4784)
    TEST_MUL_D(0x43dff7308cc6fbf6, 0x43d069f1325ada02, 0x47c0656c4da40bfb)
    TEST_MUL_D(0x43d39abed9897917, 0x43d466d40350c6f6, 0x47b8ff6cd707636a)
    TEST_MUL_D(0x43cf96dd18be41f2, 0x43c2b89851b15ded, 0x47a27b1632787771)
    TEST_MUL_D(0x43d0db184958a322, 0x43c99d5882b90ed2, 0x47aafc190fa6e247)
    TEST_MUL_D(0x43c221d42c168ead, 0x43d9d8e1179d68aa, 0x47ad4aa34bb11f00)
    TEST_MUL_D(0x43a1db7b56f30719, 0x43d0d4f43342c0f8, 0x4782c92805822312)
    TEST_MUL_D(0x43b89a769b54e49f, 0x43dc7cc9150b2a22, 0x47a5e718edeb2402)
    TEST_MUL_D(0x43a06d881c05203b, 0x43cd4afc3a0409c3, 0x477e138440fbce3e)
    TEST_MUL_D(0x43be7ff5217c3dbd, 0x43dcdee3771b3abc, 0x47ab8466ff1db501)
    TEST_MUL_D(0x43c1110d38228b6f, 0x43c803641f30a7ea, 0x47999d31d285e659)
    TEST_MUL_D(0x43d066b090555dfe, 0x43d102eb7f0141c9, 0x47b17019d5de69c3)
    TEST_MUL_D(0x43cc02411f3ba330, 0x43ddc9319f97120b, 0x47ba12249c7d6051)
    TEST_MUL_D(0x43c231dcf52f4425, 0x43d47ab4dacb545e, 0x47a749de110cff0a)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n12_mul_d_test)

