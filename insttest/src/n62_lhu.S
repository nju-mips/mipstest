#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n62_lhu_test)
    .set noreorder
    addiu s0, s0, 1
    li  s2, 0x0
###test inst
    TEST_LHU(0xc5e0fd00, DADDR(1dfc), 0x0000b55e, 0x0000b55c, 0x0000c5e0)
    TEST_LHU(0x258707b2, DADDR(bd8c), 0x00001c34, 0x00001c34, 0x000007b2)
    TEST_LHU(0x263aa087, DADDR(6920), 0x0000641a, 0x00006418, 0x0000263a)
    TEST_LHU(0xb5e11b1a, DADDR(3a6c), 0x00005164, 0x00005164, 0x00001b1a)
    TEST_LHU(0xc972f764, DADDR(14a0), 0x000002cc, 0x000002cc, 0x0000f764)
    TEST_LHU(0x9cc84d98, DADDR(0160), 0x00001268, 0x00001268, 0x00004d98)
    TEST_LHU(0x75e313d0, DADDR(993c), 0x0000456c, 0x0000456c, 0x000013d0)
    TEST_LHU(0x6d19e13e, DADDR(b968), 0x000035de, 0x000035dc, 0x00006d19)
    TEST_LHU(0x4a1efc6c, DADDR(5a08), 0x0000a2f0, 0x0000a2f0, 0x0000fc6c)
    TEST_LHU(0x32e321c0, DADDR(41d4), 0x00006844, 0x00006844, 0x000021c0)
    TEST_LHU(0x7977fa5c, DADDR(4e38), 0x00003380, 0x00003380, 0x0000fa5c)
    TEST_LHU(0x43106c00, DADDR(7bf8), 0x000078ca, 0x000078c8, 0x00004310)
    TEST_LHU(0x43abd100, DADDR(7718), 0x00006cd6, 0x00006cd4, 0x000043ab)
    TEST_LHU(0xdd8dafc0, DADDR(66c0), 0x00005b08, 0x00005b08, 0x0000afc0)
    TEST_LHU(0x46dfa15e, DADDR(086c), 0x00005220, 0x00005220, 0x0000a15e)
    TEST_LHU(0x592810c0, DADDR(1438), 0x0000e178, 0x0000e178, 0x000010c0)
    TEST_LHU(0xb8f4f244, DADDR(30d0), 0x00001944, 0x00001944, 0x0000f244)
    TEST_LHU(0xa32605e0, DADDR(6c44), 0x00000a88, 0x00000a88, 0x000005e0)
    TEST_LHU(0x644ab840, DADDR(0200), 0x0000fbee, 0x0000fbec, 0x0000644a)
    TEST_LHU(0xc9b5aa10, DADDR(6b08), 0x00002200, 0x00002200, 0x0000aa10)
    TEST_LHU(0x97bde956, DADDR(5160), 0x000019d0, 0x000019d0, 0x0000e956)
    TEST_LHU(0x8915acea, DADDR(0210), 0x00007a2e, 0x00007a2c, 0x00008915)
    TEST_LHU(0x7952a818, DADDR(35d4), 0x0000b39e, 0x0000b39c, 0x00007952)
    TEST_LHU(0x457f0d3d, DADDR(6044), 0x000059e0, 0x000059e0, 0x00000d3d)
    TEST_LHU(0x81a3f580, DADDR(7588), 0x00000ab4, 0x00000ab4, 0x0000f580)
    TEST_LHU(0xe9fde394, DADDR(1870), 0x00007952, 0x00007950, 0x0000e9fd)
    TEST_LHU(0xbbf8bfa0, DADDR(2c9c), 0x000066da, 0x000066d8, 0x0000bbf8)
    TEST_LHU(0x1db28a00, DADDR(ae60), 0x000047ea, 0x000047e8, 0x00001db2)
    TEST_LHU(0x5d6b0e7c, DADDR(0c48), 0x000027be, 0x000027bc, 0x00005d6b)
    TEST_LHU(0x57fe8940, DADDR(2030), 0x00001770, 0x00001770, 0x00008940)
    TEST_LHU(0x80030460, DADDR(2878), 0x00003b92, 0x00003b90, 0x00008003)
    TEST_LHU(0x9d1155b8, DADDR(432c), 0x00005da8, 0x00005da8, 0x000055b8)
    TEST_LHU(0x93af2e4a, DADDR(444c), 0x00004b7a, 0x00004b78, 0x000093af)
    TEST_LHU(0x64e93438, DADDR(0000), 0x0000cf1e, 0x0000cf1c, 0x000064e9)
    TEST_LHU(0x855e2566, DADDR(0000), 0x00005372, 0x00005370, 0x0000855e)
    TEST_LHU(0x68e8f220, DADDR(0000), 0x00002060, 0x00002060, 0x0000f220)
    TEST_LHU(0x155b6e78, DADDR(0000), 0x00004da8, 0x00004da8, 0x00006e78)
    TEST_LHU(0xe171e238, DADDR(0000), 0x0000f292, 0x0000f290, 0x0000e171)
    TEST_LHU(0x2d81ef10, DADDR(0000), 0x0000f260, 0x0000f260, 0x0000ef10)
    TEST_LHU(0x18243d74, DADDR(0000), 0x0000b988, 0x0000b988, 0x00003d74)
    TEST_LHU(0xd9a53a80, DADDR(0000), 0x00007866, 0x00007864, 0x0000d9a5)
    TEST_LHU(0x560ce2f8, DADDR(0000), 0x0000cec2, 0x0000cec0, 0x0000560c)
    TEST_LHU(0x5f5c7885, DADDR(0000), 0x00006040, 0x00006040, 0x00007885)
    TEST_LHU(0x4490a4d6, DADDR(0000), 0x0000b7dc, 0x0000b7dc, 0x0000a4d6)
    TEST_LHU(0x3773e260, DADDR(0000), 0x0000e7ae, 0x0000e7ac, 0x00003773)
    TEST_LHU(0xc030663c, DADDR(0000), 0x000087c0, 0x000087c0, 0x0000663c)
    TEST_LHU(0x1ae33eb0, DADDR(0000), 0x0000fad8, 0x0000fad8, 0x00003eb0)
    TEST_LHU(0x98b6446a, DADDR(0000), 0x00004a54, 0x00004a54, 0x0000446a)
    TEST_LHU(0x71408da5, DADDR(0000), 0x00001552, 0x00001550, 0x00007140)
    TEST_LHU(0xf770e08c, DADDR(0000), 0x00004f5c, 0x00004f5c, 0x0000e08c)
    TEST_LHU(0x85d9af84, DADDR(0000), 0x000098ee, 0x000098ec, 0x000085d9)
    TEST_LHU(0x6c751620, DADDR(0000), 0x00004540, 0x00004540, 0x00001620)
    TEST_LHU(0x3ee7efac, DADDR(0000), 0x00002f20, 0x00002f20, 0x0000efac)
    TEST_LHU(0x4ff944b5, DADDR(0000), 0x0000e73e, 0x0000e73c, 0x00004ff9)
    TEST_LHU(0x17f3a4e0, DADDR(0000), 0x00006cfc, 0x00006cfc, 0x0000a4e0)
    TEST_LHU(0xff7514e0, DADDR(0000), 0x00004462, 0x00004460, 0x0000ff75)
    TEST_LHU(0x343a3fd0, DADDR(0000), 0x00004b00, 0x00004b00, 0x00003fd0)
    TEST_LHU(0xdde84990, DADDR(0000), 0x0000dcd6, 0x0000dcd4, 0x0000dde8)
    TEST_LHU(0x63eae1b4, DADDR(0000), 0x0000fc1c, 0x0000fc1c, 0x0000e1b4)
    TEST_LHU(0xb89937ac, DADDR(0000), 0x00000f28, 0x00000f28, 0x000037ac)
    TEST_LHU(0x5b12d590, DADDR(0000), 0x000006ce, 0x000006cc, 0x00005b12)
    TEST_LHU(0x92469cd8, DADDR(0000), 0x0000cde0, 0x0000cde0, 0x00009cd8)
    TEST_LHU(0xf9f157b4, DADDR(0000), 0x0000026e, 0x0000026c, 0x0000f9f1)
    TEST_LHU(0x8ef24670, DADDR(0000), 0x000072c4, 0x000072c4, 0x00004670)
    TEST_LHU(0xd21dd8d4, DADDR(0000), 0x00000e6c, 0x00000e6c, 0x0000d8d4)
    TEST_LHU(0x4a817048, DADDR(0000), 0x0000ada0, 0x0000ada0, 0x00007048)
    TEST_LHU(0xc72484d3, DADDR(0000), 0x0000e128, 0x0000e128, 0x000084d3)
    TEST_LHU(0x3c69df38, DADDR(0000), 0x000061aa, 0x000061a8, 0x00003c69)
    TEST_LHU(0x40bb1d20, DADDR(0000), 0x0000cd88, 0x0000cd88, 0x00001d20)
    TEST_LHU(0x6fd077e8, DADDR(0000), 0x0000bef2, 0x0000bef0, 0x00006fd0)
    TEST_LHU(0x30655800, DADDR(0000), 0x00003cf6, 0x00003cf4, 0x00003065)
    TEST_LHU(0xa6dad5ca, DADDR(0000), 0x00004bb8, 0x00004bb8, 0x0000d5ca)
    TEST_LHU(0x0eaa0400, DADDR(0000), 0x00001250, 0x00001250, 0x00000400)
    TEST_LHU(0xeaf47838, DADDR(0000), 0x00002d30, 0x00002d30, 0x00007838)
    TEST_LHU(0x9f617ab8, DADDR(0000), 0x00000000, 0x00000000, 0x00007ab8)
    TEST_LHU(0x4d02ec52, DADDR(0000), 0x00000002, 0x00000000, 0x00004d02)
    TEST_LHU(0xf9afc020, DADDR(0000), 0x00000002, 0x00000000, 0x0000f9af)
    TEST_LHU(0xdfc9f4d0, DADDR(0000), 0x00000002, 0x00000000, 0x0000dfc9)
    TEST_LHU(0x5d92570c, DADDR(0000), 0x00000000, 0x00000000, 0x0000570c)
    TEST_LHU(0xb450b400, DADDR(0000), 0x00000002, 0x00000000, 0x0000b450)
    TEST_LHU(0x95fdc700, DADDR(0000), 0x00000000, 0x00000000, 0x0000c700)
    TEST_LHU(0x1364eca0, DADDR(0000), 0x00000002, 0x00000000, 0x00001364)
    TEST_LHU(0xa20708ef, DADDR(0000), 0x00000002, 0x00000000, 0x0000a207)
    TEST_LHU(0x029d7ff0, DADDR(0000), 0x00000002, 0x00000000, 0x0000029d)
    TEST_LHU(0xc513af92, DADDR(0000), 0x00000002, 0x00000000, 0x0000c513)
    TEST_LHU(0x17d8be62, DADDR(0000), 0x00000000, 0x00000000, 0x0000be62)
    TEST_LHU(0xbcc5cb24, DADDR(0000), 0x00000002, 0x00000000, 0x0000bcc5)
    TEST_LHU(0x44e5ce74, DADDR(0000), 0x00000000, 0x00000000, 0x0000ce74)
    TEST_LHU(0x870f5910, DADDR(0000), 0x00000000, 0x00000000, 0x00005910)
    TEST_LHU(0xa322c100, DADDR(0000), 0x00000002, 0x00000000, 0x0000a322)
    TEST_LHU(0xe64819f0, DADDR(0000), 0x00000002, 0x00000000, 0x0000e648)
    TEST_LHU(0xbd8427c0, DADDR(0000), 0x00000000, 0x00000000, 0x000027c0)
    TEST_LHU(0xc5137e48, DADDR(0000), 0x00000002, 0x00000000, 0x0000c513)
    TEST_LHU(0x5d9804c0, DADDR(0000), 0x00000002, 0x00000000, 0x00005d98)
    TEST_LHU(0xf04ca5a8, DADDR(0000), 0x00000000, 0x00000000, 0x0000a5a8)
    TEST_LHU(0xbe9c0a40, DADDR(0000), 0x00000000, 0x00000000, 0x00000a40)
    TEST_LHU(0x19989770, DADDR(0000), 0x00000002, 0x00000000, 0x00001998)
    TEST_LHU(0xa98e4e64, DADDR(0000), 0x00000002, 0x00000000, 0x0000a98e)
    TEST_LHU(0xbde42a40, DADDR(0000), 0x00000000, 0x00000000, 0x00002a40)
    TEST_LHU(0xb6a24340, DADDR(0000), 0x00000002, 0x00000000, 0x0000b6a2)
    TEST_LHU(0xadcf71e4, DADDR(0000), 0x00000000, 0x00000000, 0x000071e4)
    TEST_LHU(0x4362a106, DADDR(0000), 0x00000002, 0x00000000, 0x00004362)
    TEST_LHU(0x42f77dee, DADDR(0000), 0x00000002, 0x00000000, 0x000042f7)
    TEST_LHU(0x8def96d0, DADDR(0000), 0x00000000, 0x00000000, 0x000096d0)
    TEST_LHU(0xcf083100, DADDR(0000), 0x00000002, 0x00000000, 0x0000cf08)
    TEST_LHU(0xace84af0, DADDR(0000), 0x00000000, 0x00000000, 0x00004af0)
    TEST_LHU(0xc5d1d550, DADDR(0000), 0x00000002, 0x00000000, 0x0000c5d1)
    TEST_LHU(0xfade1c80, DADDR(0000), 0x00000000, 0x00000000, 0x00001c80)
    TEST_LHU(0x2579310c, DADDR(0000), 0x00000002, 0x00000000, 0x00002579)
    TEST_LHU(0x00000000, DADDR(0000), 0x00000000, 0x00000000, 0x00000000)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n62_lhu_test)
