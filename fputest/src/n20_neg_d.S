#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n20_neg_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_NEG_D(0x43dae2d159cc9ec9, 0xc3dae2d159cc9ec9)
    TEST_NEG_D(0x43d90f261a598cd2, 0xc3d90f261a598cd2)
    TEST_NEG_D(0x43dd2c3714465257, 0xc3dd2c3714465257)
    TEST_NEG_D(0x43c5744a25312aac, 0xc3c5744a25312aac)
    TEST_NEG_D(0x43c1c70f94a3743e, 0xc3c1c70f94a3743e)
    TEST_NEG_D(0x43ce8dac5d283f6c, 0xc3ce8dac5d283f6c)
    TEST_NEG_D(0x43c758a0f920db8f, 0xc3c758a0f920db8f)
    TEST_NEG_D(0x43de78aa78dd5178, 0xc3de78aa78dd5178)
    TEST_NEG_D(0x43d457c01f16f419, 0xc3d457c01f16f419)
    TEST_NEG_D(0x43b22008544db128, 0xc3b22008544db128)
    TEST_NEG_D(0x4380b118d8f8b74f, 0xc380b118d8f8b74f)
    TEST_NEG_D(0x43b190cde766ef44, 0xc3b190cde766ef44)
    TEST_NEG_D(0x43b40e0f76335225, 0xc3b40e0f76335225)
    TEST_NEG_D(0x43b09cf92e0ded72, 0xc3b09cf92e0ded72)
    TEST_NEG_D(0x43dff7308cc6fbf6, 0xc3dff7308cc6fbf6)
    TEST_NEG_D(0x43d069f1325ada02, 0xc3d069f1325ada02)
    TEST_NEG_D(0x43d39abed9897917, 0xc3d39abed9897917)
    TEST_NEG_D(0x43d466d40350c6f6, 0xc3d466d40350c6f6)
    TEST_NEG_D(0x43cf96dd18be41f2, 0xc3cf96dd18be41f2)
    TEST_NEG_D(0x43c2b89851b15ded, 0xc3c2b89851b15ded)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n20_neg_d_test)

