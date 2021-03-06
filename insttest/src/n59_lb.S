#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n59_lb_test)
    .set noreorder
    addiu s0, s0, 1
    li  s2, 0x0
###test inst
    TEST_LB(0xc83b0be0, DADDR(6760), 0x000037a1, 0x000037a0, 0x0000000b)
    TEST_LB(0x1eec280c, DADDR(4598), 0x0000980c, 0x0000980c, 0x0000000c)
    TEST_LB(0xa0afed52, DADDR(4590), 0x00008a82, 0x00008a80, 0xffffffaf)
    TEST_LB(0x1eb637c7, DADDR(165c), 0x00006a9a, 0x00006a98, 0xffffffb6)
    TEST_LB(0x85415fbc, DADDR(1430), 0x00005e48, 0x00005e48, 0xffffffbc)
    TEST_LB(0x499d7dd4, DADDR(4974), 0x00000edc, 0x00000edc, 0xffffffd4)
    TEST_LB(0xc6e31856, DADDR(d704), 0x00001e9c, 0x00001e9c, 0x00000056)
    TEST_LB(0x5ad99018, DADDR(68f0), 0x00007ba4, 0x00007ba4, 0x00000018)
    TEST_LB(0x440411ac, DADDR(74e8), 0x00002240, 0x00002240, 0xffffffac)
    TEST_LB(0xe5567fd6, DADDR(5f60), 0x00009418, 0x00009418, 0xffffffd6)
    TEST_LB(0x2ede8ae6, DADDR(3bdc), 0x00007c2d, 0x00007c2c, 0xffffff8a)
    TEST_LB(0x64881a10, DADDR(cd7c), 0x00000486, 0x00000484, 0xffffff88)
    TEST_LB(0x48fc3566, DADDR(59f4), 0x00005c52, 0x00005c50, 0xfffffffc)
    TEST_LB(0xd9334400, DADDR(6648), 0x00007054, 0x00007054, 0x00000000)
    TEST_LB(0x751c6a16, DADDR(278c), 0x00007125, 0x00007124, 0x0000006a)
    TEST_LB(0x59ea6680, DADDR(9b48), 0x00000f42, 0x00000f40, 0xffffffea)
    TEST_LB(0xfb87edd4, DADDR(3f18), 0x00002f00, 0x00002f00, 0xffffffd4)
    TEST_LB(0xdca52840, DADDR(3960), 0x00002efc, 0x00002efc, 0x00000040)
    TEST_LB(0x4cdd43c8, DADDR(a6e0), 0x0000213c, 0x0000213c, 0xffffffc8)
    TEST_LB(0x6d3dceb8, DADDR(0c90), 0x00000338, 0x00000338, 0xffffffb8)
    TEST_LB(0xe83814f0, DADDR(44e8), 0x00002174, 0x00002174, 0xfffffff0)
    TEST_LB(0xbb62f9ba, DADDR(1408), 0x00003c40, 0x00003c40, 0xffffffba)
    TEST_LB(0x9eb52b80, DADDR(d46c), 0x000002ae, 0x000002ac, 0xffffffb5)
    TEST_LB(0x3fe86b54, DADDR(2424), 0x0000a6f7, 0x0000a6f4, 0x0000003f)
    TEST_LB(0xbbd2dc3c, DADDR(4040), 0x00007528, 0x00007528, 0x0000003c)
    TEST_LB(0xdc0d9270, DADDR(4e40), 0x00006c98, 0x00006c98, 0x00000070)
    TEST_LB(0x946b9d00, DADDR(2ba8), 0x00008d40, 0x00008d40, 0x00000000)
    TEST_LB(0xbe6d9734, DADDR(a6d4), 0x000018f0, 0x000018f0, 0x00000034)
    TEST_LB(0x16e0b3c0, DADDR(80ac), 0x00006feb, 0x00006fe8, 0x00000016)
    TEST_LB(0x6bc49d90, DADDR(b9dc), 0x000025ba, 0x000025b8, 0xffffffc4)
    TEST_LB(0x6346f980, DADDR(7f2c), 0x00004c38, 0x00004c38, 0xffffff80)
    TEST_LB(0xc1a46720, DADDR(58f4), 0x000097a6, 0x000097a4, 0xffffffa4)
    TEST_LB(0x64cef3ac, DADDR(1498), 0x0000729c, 0x0000729c, 0xffffffac)
    TEST_LB(0xa730cfc0, DADDR(1b80), 0x0000254f, 0x0000254c, 0xffffffa7)
    TEST_LB(0x38240a20, DADDR(3280), 0x000099d3, 0x000099d0, 0x00000038)
    TEST_LB(0xa6f3c710, DADDR(0344), 0x0000e3b0, 0x0000e3b0, 0x00000010)
    TEST_LB(0x69cd6980, DADDR(73a8), 0x0000559e, 0x0000559c, 0xffffffcd)
    TEST_LB(0x7aecb546, DADDR(8730), 0x00006b60, 0x00006b60, 0x00000046)
    TEST_LB(0x9c244870, DADDR(2bd0), 0x00004344, 0x00004344, 0x00000070)
    TEST_LB(0x1dd2d522, DADDR(06d8), 0x00002376, 0x00002374, 0xffffffd2)
    TEST_LB(0xfca71dcc, DADDR(23a8), 0x0000b4dd, 0x0000b4dc, 0x0000001d)
    TEST_LB(0x8b317ee0, DADDR(0ca4), 0x0000d47c, 0x0000d47c, 0xffffffe0)
    TEST_LB(0x30b73214, DADDR(076c), 0x00005b4a, 0x00005b48, 0xffffffb7)
    TEST_LB(0xef778c1c, DADDR(a97c), 0x00002df8, 0x00002df8, 0x0000001c)
    TEST_LB(0xc4aa18c0, DADDR(3af8), 0x0000c2ac, 0x0000c2ac, 0xffffffc0)
    TEST_LB(0xfe4b7514, DADDR(e080), 0x000007c8, 0x000007c8, 0x00000014)
    TEST_LB(0x43fc33e8, DADDR(6478), 0x0000827e, 0x0000827c, 0xfffffffc)
    TEST_LB(0xa1e30564, DADDR(5e8c), 0x00001f45, 0x00001f44, 0x00000005)
    TEST_LB(0x9abb3880, DADDR(1de0), 0x0000de6a, 0x0000de68, 0xffffffbb)
    TEST_LB(0x4653e630, DADDR(244c), 0x00005878, 0x00005878, 0x00000030)
    TEST_LB(0xdfd32410, DADDR(833c), 0x0000403c, 0x0000403c, 0x00000010)
    TEST_LB(0xeb7c5500, DADDR(5aac), 0x00005df0, 0x00005df0, 0x00000000)
    TEST_LB(0xe4106bd0, DADDR(3dc4), 0x0000712c, 0x0000712c, 0xffffffd0)
    TEST_LB(0xead286f4, DADDR(50c4), 0x00002222, 0x00002220, 0xffffffd2)
    TEST_LB(0xe9f49570, DADDR(1d40), 0x00005724, 0x00005724, 0x00000070)
    TEST_LB(0xe395f2c0, DADDR(bbb8), 0x00003962, 0x00003960, 0xffffff95)
    TEST_LB(0x6c9caac0, DADDR(4dc4), 0x00002649, 0x00002648, 0xffffffaa)
    TEST_LB(0x11e6af20, DADDR(0000), 0x0000bb0c, 0x0000bb0c, 0x00000020)
    TEST_LB(0x87997498, DADDR(0000), 0x00000b00, 0x00000b00, 0xffffff98)
    TEST_LB(0x15abb120, DADDR(0000), 0x0000b278, 0x0000b278, 0x00000020)
    TEST_LB(0x833dd7d0, DADDR(0000), 0x0000c380, 0x0000c380, 0xffffffd0)
    TEST_LB(0x7f44e290, DADDR(0000), 0x000011d0, 0x000011d0, 0xffffff90)
    TEST_LB(0x992d268f, DADDR(0000), 0x00007b2f, 0x00007b2c, 0xffffff99)
    TEST_LB(0x15996bf7, DADDR(0000), 0x0000348a, 0x00003488, 0xffffff99)
    TEST_LB(0x2da02d90, DADDR(0000), 0x00005c10, 0x00005c10, 0xffffff90)
    TEST_LB(0x24dac600, DADDR(0000), 0x000070da, 0x000070d8, 0xffffffda)
    TEST_LB(0xc59cd73c, DADDR(0000), 0x00005fd8, 0x00005fd8, 0x0000003c)
    TEST_LB(0x994a7300, DADDR(0000), 0x000072ca, 0x000072c8, 0x0000004a)
    TEST_LB(0x7e4051cd, DADDR(0000), 0x0000acda, 0x0000acd8, 0x00000040)
    TEST_LB(0xba9fb840, DADDR(0000), 0x00006b8c, 0x00006b8c, 0x00000040)
    TEST_LB(0x7d109500, DADDR(0000), 0x0000d8f7, 0x0000d8f4, 0x0000007d)
    TEST_LB(0xda709060, DADDR(0000), 0x00008780, 0x00008780, 0x00000060)
    TEST_LB(0xa59f9eb8, DADDR(0000), 0x00005590, 0x00005590, 0xffffffb8)
    TEST_LB(0x1b9b9d20, DADDR(0000), 0x0000b958, 0x0000b958, 0x00000020)
    TEST_LB(0xe945cba3, DADDR(0000), 0x0000ebbc, 0x0000ebbc, 0xffffffa3)
    TEST_LB(0x6122f40e, DADDR(0000), 0x0000e37a, 0x0000e378, 0x00000022)
    TEST_LB(0x066cdae8, DADDR(0000), 0x00005d16, 0x00005d14, 0x0000006c)
    TEST_LB(0x31ce4d3c, DADDR(0000), 0x0000df28, 0x0000df28, 0x0000003c)
    TEST_LB(0xe95b473a, DADDR(0000), 0x00009c80, 0x00009c80, 0x0000003a)
    TEST_LB(0x27a2d01c, DADDR(0000), 0x00004d27, 0x00004d24, 0x00000027)
    TEST_LB(0xd3dbcfc8, DADDR(0000), 0x0000f20e, 0x0000f20c, 0xffffffdb)
    TEST_LB(0x604fbdca, DADDR(0000), 0x0000c604, 0x0000c604, 0xffffffca)
    TEST_LB(0xd319d84e, DADDR(0000), 0x00004a74, 0x00004a74, 0x0000004e)
    TEST_LB(0x65062d8d, DADDR(0000), 0x000010bc, 0x000010bc, 0xffffff8d)
    TEST_LB(0x6b30c710, DADDR(0000), 0x0000eee2, 0x0000eee0, 0x00000030)
    TEST_LB(0x0fa45c2f, DADDR(0000), 0x0000dd26, 0x0000dd24, 0xffffffa4)
    TEST_LB(0x7904ca38, DADDR(0000), 0x00003fdb, 0x00003fd8, 0x00000079)
    TEST_LB(0x48111e40, DADDR(0000), 0x0000bd34, 0x0000bd34, 0x00000040)
    TEST_LB(0x8b110828, DADDR(0000), 0x0000b4be, 0x0000b4bc, 0x00000011)
    TEST_LB(0x366c3980, DADDR(0000), 0x00008eb8, 0x00008eb8, 0xffffff80)
    TEST_LB(0xafa63c10, DADDR(0000), 0x000013e8, 0x000013e8, 0x00000010)
    TEST_LB(0x305d45e5, DADDR(0000), 0x0000bc3e, 0x0000bc3c, 0x0000005d)
    TEST_LB(0xe165f7e0, DADDR(0000), 0x00008f3e, 0x00008f3c, 0x00000065)
    TEST_LB(0xf28295e8, DADDR(0000), 0x000025fd, 0x000025fc, 0xffffff95)
    TEST_LB(0x7bcc0898, DADDR(0000), 0x00004c75, 0x00004c74, 0x00000008)
    TEST_LB(0xeaa165b4, DADDR(0000), 0x0000637b, 0x00006378, 0xffffffea)
    TEST_LB(0x3ff57a80, DADDR(0000), 0x00000f03, 0x00000f00, 0x0000003f)
    TEST_LB(0x300e8840, DADDR(0000), 0x00001b04, 0x00001b04, 0x00000040)
    TEST_LB(0xfb63b448, DADDR(0000), 0x00000000, 0x00000000, 0x00000048)
    TEST_LB(0x358c8a40, DADDR(0000), 0x00000002, 0x00000000, 0xffffff8c)
    TEST_LB(0x5e903520, DADDR(0000), 0x00000000, 0x00000000, 0x00000020)
    TEST_LB(0x83832cc2, DADDR(0000), 0x00000001, 0x00000000, 0x0000002c)
    TEST_LB(0x4554da80, DADDR(0000), 0x00000002, 0x00000000, 0x00000054)
    TEST_LB(0x8e310700, DADDR(0000), 0x00000001, 0x00000000, 0x00000007)
    TEST_LB(0xf152d038, DADDR(0000), 0x00000001, 0x00000000, 0xffffffd0)
    TEST_LB(0xa100c498, DADDR(0000), 0x00000002, 0x00000000, 0x00000000)
    TEST_LB(0xea4a9128, DADDR(0000), 0x00000003, 0x00000000, 0xffffffea)
    TEST_LB(0x8941eeb0, DADDR(0000), 0x00000000, 0x00000000, 0xffffffb0)
    TEST_LB(0x1b289e0c, DADDR(0000), 0x00000002, 0x00000000, 0x00000028)
    TEST_LB(0x333c7a70, DADDR(0000), 0x00000002, 0x00000000, 0x0000003c)
    TEST_LB(0x865efaf0, DADDR(0000), 0x00000002, 0x00000000, 0x0000005e)
    TEST_LB(0xac40eea4, DADDR(0000), 0x00000002, 0x00000000, 0x00000040)
    TEST_LB(0x24b5e96a, DADDR(0000), 0x00000002, 0x00000000, 0xffffffb5)
    TEST_LB(0x31aa938c, DADDR(0000), 0x00000002, 0x00000000, 0xffffffaa)
    TEST_LB(0x0661cc00, DADDR(0000), 0x00000003, 0x00000000, 0x00000006)
    TEST_LB(0x7eb895a4, DADDR(0000), 0x00000001, 0x00000000, 0xffffff95)
    TEST_LB(0x00000000, DADDR(0000), 0x00000000, 0x00000000, 0x00000000)
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
### return
    jr ra
    nop
END(n59_lb_test)
