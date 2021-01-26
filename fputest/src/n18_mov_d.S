#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n18_mov_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_MOV_D(0x43dae2d159cc9ec9, 0x43dae2d159cc9ec9)
    TEST_MOV_D(0x43d90f261a598cd2, 0x43d90f261a598cd2)
    TEST_MOV_D(0x43dd2c3714465257, 0x43dd2c3714465257)
    TEST_MOV_D(0x43c5744a25312aac, 0x43c5744a25312aac)
    TEST_MOV_D(0x43c1c70f94a3743e, 0x43c1c70f94a3743e)
    TEST_MOV_D(0x43ce8dac5d283f6c, 0x43ce8dac5d283f6c)
    TEST_MOV_D(0x43c758a0f920db8f, 0x43c758a0f920db8f)
    TEST_MOV_D(0x43de78aa78dd5178, 0x43de78aa78dd5178)
    TEST_MOV_D(0x43d457c01f16f419, 0x43d457c01f16f419)
    TEST_MOV_D(0x43b22008544db128, 0x43b22008544db128)
    TEST_MOV_D(0x4380b118d8f8b74f, 0x4380b118d8f8b74f)
    TEST_MOV_D(0x43b190cde766ef44, 0x43b190cde766ef44)
    TEST_MOV_D(0x43b40e0f76335225, 0x43b40e0f76335225)
    TEST_MOV_D(0x43b09cf92e0ded72, 0x43b09cf92e0ded72)
    TEST_MOV_D(0x43dff7308cc6fbf6, 0x43dff7308cc6fbf6)
    TEST_MOV_D(0x43d069f1325ada02, 0x43d069f1325ada02)
    TEST_MOV_D(0x43d39abed9897917, 0x43d39abed9897917)
    TEST_MOV_D(0x43d466d40350c6f6, 0x43d466d40350c6f6)
    TEST_MOV_D(0x43cf96dd18be41f2, 0x43cf96dd18be41f2)
    TEST_MOV_D(0x43c2b89851b15ded, 0x43c2b89851b15ded)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n18_mov_d_test)

