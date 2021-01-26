#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n14_div_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_DIV_D(0x43dae2d159cc9ec9, 0x43d90f261a598cd2, 0x3ff12a99f0a90432)
    TEST_DIV_D(0x43dd2c3714465257, 0x43c5744a25312aac, 0x4005c197681bfd9f)
    TEST_DIV_D(0x43c1c70f94a3743e, 0x43ce8dac5d283f6c, 0x3fe29e8952603afb)
    TEST_DIV_D(0x43c758a0f920db8f, 0x43de78aa78dd5178, 0x3fd88474f599d792)
    TEST_DIV_D(0x43d457c01f16f419, 0x43b22008544db128, 0x4011f52786160293)
    TEST_DIV_D(0x4380b118d8f8b74f, 0x43b190cde766ef44, 0x3fbe6876c6591a3a)
    TEST_DIV_D(0x43b40e0f76335225, 0x43b09cf92e0ded72, 0x3ff3509121bf3b1b)
    TEST_DIV_D(0x43dff7308cc6fbf6, 0x43d069f1325ada02, 0x3fff28de9e2f1246)
    TEST_DIV_D(0x43d39abed9897917, 0x43d466d40350c6f6, 0x3feebfe5857f9bf1)
    TEST_DIV_D(0x43cf96dd18be41f2, 0x43c2b89851b15ded, 0x3ffaff73e305671d)
    TEST_DIV_D(0x43d0db184958a322, 0x43c99d5882b90ed2, 0x3ff50ec9968c86ff)
    TEST_DIV_D(0x43c221d42c168ead, 0x43d9d8e1179d68aa, 0x3fd672cc0427c9bc)
    TEST_DIV_D(0x43a1db7b56f30719, 0x43d0d4f43342c0f8, 0x3fc0f98dada373a4)
    TEST_DIV_D(0x43b89a769b54e49f, 0x43dc7cc9150b2a22, 0x3fcba31373f3211d)
    TEST_DIV_D(0x43a06d881c05203b, 0x43cd4afc3a0409c3, 0x3fc1f22f03eef6d4)
    TEST_DIV_D(0x43be7ff5217c3dbd, 0x43dcdee3771b3abc, 0x3fd0e7234f20e025)
    TEST_DIV_D(0x43c1110d38228b6f, 0x43c803641f30a7ea, 0x3fe6be304ecc7e21)
    TEST_DIV_D(0x43d066b090555dfe, 0x43d102eb7f0141c9, 0x3feeda1de6101b68)
    TEST_DIV_D(0x43cc02411f3ba330, 0x43ddc9319f97120b, 0x3fde173e4d7fe23e)
    TEST_DIV_D(0x43c231dcf52f4425, 0x43d47ab4dacb545e, 0x3fdc6e26eae91ea2)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n14_div_d_test)

