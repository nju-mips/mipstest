#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n8_add_d_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x0
###test inst
    TEST_ADD_D(0x43dae2d159cc9ec9, 0x43d90f261a598cd2, 0x43e9f8fbba1315ce)
    TEST_ADD_D(0x43dd2c3714465257, 0x43c5744a25312aac, 0x43e3f32e136f73d6)
    TEST_ADD_D(0x43c1c70f94a3743e, 0x43ce8dac5d283f6c, 0x43d82a5df8e5d9d5)
    TEST_ADD_D(0x43c758a0f920db8f, 0x43de78aa78dd5178, 0x43e5127d7ab6dfa0)
    TEST_ADD_D(0x43d457c01f16f419, 0x43b22008544db128, 0x43d8dfc2342a6063)
    TEST_ADD_D(0x4380b118d8f8b74f, 0x43b190cde766ef44, 0x43b3a6f10286062e)
    TEST_ADD_D(0x43b40e0f76335225, 0x43b09cf92e0ded72, 0x43c2558452209fcc)
    TEST_ADD_D(0x43dff7308cc6fbf6, 0x43d069f1325ada02, 0x43e83090df90eafc)
    TEST_ADD_D(0x43d39abed9897917, 0x43d466d40350c6f6, 0x43e400c96e6d2006)
    TEST_ADD_D(0x43cf96dd18be41f2, 0x43c2b89851b15ded, 0x43d927bab537cff0)
    TEST_ADD_D(0x43d0db184958a322, 0x43c99d5882b90ed2, 0x43dda9c48ab52a8b)
    TEST_ADD_D(0x43c221d42c168ead, 0x43d9d8e1179d68aa, 0x43e174e596d45800)
    TEST_ADD_D(0x43a1db7b56f30719, 0x43d0d4f43342c0f8, 0x43d310639e2121db)
    TEST_ADD_D(0x43b89a769b54e49f, 0x43dc7cc9150b2a22, 0x43e151b35df031a5)
    TEST_ADD_D(0x43a06d881c05203b, 0x43cd4afc3a0409c3, 0x43d0b32f2082a8e9)
    TEST_ADD_D(0x43be7ff5217c3dbd, 0x43dcdee3771b3abc, 0x43e23f705fbd2516)
    TEST_ADD_D(0x43c1110d38228b6f, 0x43c803641f30a7ea, 0x43d48a38aba999ac)
    TEST_ADD_D(0x43d066b090555dfe, 0x43d102eb7f0141c9, 0x43e0b4ce07ab4fe4)
    TEST_ADD_D(0x43cc02411f3ba330, 0x43ddc9319f97120b, 0x43e5e529179a71d2)
    TEST_ADD_D(0x43c231dcf52f4425, 0x43d47ab4dacb545e, 0x43dd93a35562f670)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n8_add_d_test)

