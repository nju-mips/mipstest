#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n10_sub_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_SUB_D(0x43dae2d159cc9ec9, 0x43d90f261a598cd2, 0x439d3ab3f7311f70)
    TEST_SUB_D(0x43dd2c3714465257, 0x43c5744a25312aac, 0x43d2721201adbd01)
    TEST_SUB_D(0x43c1c70f94a3743e, 0x43ce8dac5d283f6c, 0xc3b98d399109965c)
    TEST_SUB_D(0x43c758a0f920db8f, 0x43de78aa78dd5178, 0xc3d2cc59fc4ce3b0)
    TEST_SUB_D(0x43d457c01f16f419, 0x43b22008544db128, 0x43cf9f7c14070f9e)
    TEST_SUB_D(0x4380b118d8f8b74f, 0x43b190cde766ef44, 0xc3aef555988fb0b4)
    TEST_SUB_D(0x43b40e0f76335225, 0x43b09cf92e0ded72, 0x438b88b2412b2598)
    TEST_SUB_D(0x43dff7308cc6fbf6, 0x43d069f1325ada02, 0x43cf1a7eb4d843e8)
    TEST_SUB_D(0x43d39abed9897917, 0x43d466d40350c6f6, 0xc38982a538e9bbe0)
    TEST_SUB_D(0x43cf96dd18be41f2, 0x43c2b89851b15ded, 0x43b9bc898e19c80a)
    TEST_SUB_D(0x43d0db184958a322, 0x43c99d5882b90ed2, 0x43b031b01ff06ee4)
    TEST_SUB_D(0x43c221d42c168ead, 0x43d9d8e1179d68aa, 0xc3d0c7f701922154)
    TEST_SUB_D(0x43a1db7b56f30719, 0x43d0d4f43342c0f8, 0xc3cd330990c8c02a)
    TEST_SUB_D(0x43b89a769b54e49f, 0x43dc7cc9150b2a22, 0xc3d6562b6e35f0fa)
    TEST_SUB_D(0x43a06d881c05203b, 0x43cd4afc3a0409c3, 0xc3c92f9a3302c1b4)
    TEST_SUB_D(0x43be7ff5217c3dbd, 0x43dcdee3771b3abc, 0xc3d53ee62ebc2b4d)
    TEST_SUB_D(0x43c1110d38228b6f, 0x43c803641f30a7ea, 0xc3abc95b9c3871ec)
    TEST_SUB_D(0x43d066b090555dfe, 0x43d102eb7f0141c9, 0xc383875dd57c7960)
    TEST_SUB_D(0x43cc02411f3ba330, 0x43ddc9319f97120b, 0xc3cf90221ff280e6)
    TEST_SUB_D(0x43c231dcf52f4425, 0x43d47ab4dacb545e, 0xc3c6c38cc0676497)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n10_sub_d_test)

