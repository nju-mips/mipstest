#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n16_sqrt_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_SQRT_D(0x43dae2d159cc9ec9, 0x41e4bd9daf5e34d2)
    TEST_SQRT_D(0x43d90f261a598cd2, 0x41e4060e5305c89b)
    TEST_SQRT_D(0x43dd2c3714465257, 0x41e59ace33fe7586)
    TEST_SQRT_D(0x43c5744a25312aac, 0x41da33ab843dbf03)
    TEST_SQRT_D(0x43c1c70f94a3743e, 0x41d7d9ec2e58d5ef)
    TEST_SQRT_D(0x43ce8dac5d283f6c, 0x41df44b202736817)
    TEST_SQRT_D(0x43c758a0f920db8f, 0x41db552e5b9bde49)
    TEST_SQRT_D(0x43de78aa78dd5178, 0x41e614917748f096)
    TEST_SQRT_D(0x43d457c01f16f419, 0x41e20a8b302aa09a)
    TEST_SQRT_D(0x43b22008544db128, 0x41d10789c71cba9c)
    TEST_SQRT_D(0x4380b118d8f8b74f, 0x41b71c852af73304)
    TEST_SQRT_D(0x43b190cde766ef44, 0x41d0c3b9cef2674a)
    TEST_SQRT_D(0x43b40e0f76335225, 0x41d1e9c03b7cc90a)
    TEST_SQRT_D(0x43b09cf92e0ded72, 0x41d04dbfb00b7e18)
    TEST_SQRT_D(0x43dff7308cc6fbf6, 0x41e69d80c38aa083)
    TEST_SQRT_D(0x43d069f1325ada02, 0x41e034a2076106f2)
    TEST_SQRT_D(0x43d39abed9897917, 0x41e1b5f56e1b18f8)
    TEST_SQRT_D(0x43d466d40350c6f6, 0x41e211398ac4dddd)
    TEST_SQRT_D(0x43cf96dd18be41f2, 0x41dfcb4317373fd7)
    TEST_SQRT_D(0x43c2b89851b15ded, 0x41d879daddc7791c)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n16_sqrt_d_test)

