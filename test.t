#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x17c47a0 .scope module, "agc" "agc" 2 4;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 3 "alu_op"
    .port_info 2 /INPUT 2 "MAddr_MUX"
    .port_info 3 /INPUT 2 "Q_MUX"
    .port_info 4 /INPUT 2 "A_MUX"
    .port_info 5 /INPUT 2 "X_MUX"
    .port_info 6 /INPUT 2 "Z_MUX"
    .port_info 7 /INPUT 2 "Y_MUX"
    .port_info 8 /INPUT 1 "LP_MUX"
    .port_info 9 /INPUT 1 "B_MUX"
    .port_info 10 /INPUT 1 "LP_WE"
    .port_info 11 /INPUT 1 "G_WE"
    .port_info 12 /INPUT 1 "Q_WE"
    .port_info 13 /INPUT 1 "B_WE"
    .port_info 14 /INPUT 1 "A_WE"
    .port_info 15 /INPUT 1 "Y_WE"
    .port_info 16 /INPUT 1 "X_WE"
    .port_info 17 /INPUT 1 "Z_WE"
    .port_info 18 /INPUT 1 "mem_WE"
L_0x1810080 .functor BUFZ 15, v0x1804cd0_0, C4<000000000000000>, C4<000000000000000>, C4<000000000000000>;
L_0x180ec80 .functor BUFZ 16, v0x180ded0_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
L_0x1822ef0 .functor NOT 16, v0x180ded0_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
o0x7fba00684368 .functor BUFZ 2, C4<zz>; HiZ drive
v0x18073c0_0 .net "A_MUX", 1 0, o0x7fba00684368;  0 drivers
o0x7fba00684398 .functor BUFZ 1, C4<z>; HiZ drive
v0x1807460_0 .net "A_WE", 0 0, o0x7fba00684398;  0 drivers
v0x1807500_0 .net "AorNegA", 15 0, L_0x180ec80;  1 drivers
o0x7fba006843f8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1807610_0 .net "B_MUX", 0 0, o0x7fba006843f8;  0 drivers
o0x7fba00684428 .functor BUFZ 1, C4<z>; HiZ drive
v0x18076d0_0 .net "B_WE", 0 0, o0x7fba00684428;  0 drivers
o0x7fba00684458 .functor BUFZ 1, C4<z>; HiZ drive
v0x1807790_0 .net "G_WE", 0 0, o0x7fba00684458;  0 drivers
o0x7fba00684488 .functor BUFZ 1, C4<z>; HiZ drive
v0x1807850_0 .net "LP_MUX", 0 0, o0x7fba00684488;  0 drivers
o0x7fba006844b8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1807910_0 .net "LP_WE", 0 0, o0x7fba006844b8;  0 drivers
o0x7fba006844e8 .functor BUFZ 2, C4<zz>; HiZ drive
v0x18079d0_0 .net "MAddr_MUX", 1 0, o0x7fba006844e8;  0 drivers
v0x1807b40_0 .net "PC_addr", 0 0, L_0x1822140;  1 drivers
o0x7fba00684548 .functor BUFZ 2, C4<zz>; HiZ drive
v0x1807c00_0 .net "Q_MUX", 1 0, o0x7fba00684548;  0 drivers
o0x7fba00684578 .functor BUFZ 1, C4<z>; HiZ drive
v0x1807ce0_0 .net "Q_WE", 0 0, o0x7fba00684578;  0 drivers
v0x1807da0_0 .net "S", 11 0, L_0x1822000;  1 drivers
v0x1807e80_0 .net "U", 15 0, L_0x1811f50;  1 drivers
o0x7fba00684608 .functor BUFZ 2, C4<zz>; HiZ drive
v0x1807f60_0 .net "X_MUX", 1 0, o0x7fba00684608;  0 drivers
o0x7fba00684638 .functor BUFZ 1, C4<z>; HiZ drive
v0x1808000_0 .net "X_WE", 0 0, o0x7fba00684638;  0 drivers
o0x7fba00684668 .functor BUFZ 2, C4<zz>; HiZ drive
v0x18080a0_0 .net "Y_MUX", 1 0, o0x7fba00684668;  0 drivers
o0x7fba00684698 .functor BUFZ 1, C4<z>; HiZ drive
v0x1808250_0 .net "Y_WE", 0 0, o0x7fba00684698;  0 drivers
o0x7fba006846c8 .functor BUFZ 2, C4<zz>; HiZ drive
v0x18082f0_0 .net "Z_MUX", 1 0, o0x7fba006846c8;  0 drivers
o0x7fba006846f8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1808390_0 .net "Z_WE", 0 0, o0x7fba006846f8;  0 drivers
L_0x7fba0063a4e0 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1808430_0 .net/2u *"_s100", 1 0, L_0x7fba0063a4e0;  1 drivers
v0x18084f0_0 .net *"_s102", 0 0, L_0x18248e0;  1 drivers
v0x18085b0_0 .net *"_s104", 31 0, L_0x1824980;  1 drivers
L_0x7fba0063a528 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1808690_0 .net *"_s107", 29 0, L_0x7fba0063a528;  1 drivers
L_0x7fba0063a570 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x1808770_0 .net/2u *"_s108", 31 0, L_0x7fba0063a570;  1 drivers
v0x1808850_0 .net *"_s110", 0 0, L_0x1824830;  1 drivers
v0x1808910_0 .net *"_s112", 31 0, L_0x1824c20;  1 drivers
L_0x7fba0063a5b8 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x18089f0_0 .net *"_s115", 29 0, L_0x7fba0063a5b8;  1 drivers
L_0x7fba0063a600 .functor BUFT 1, C4<00000000000000000000000000000010>, C4<0>, C4<0>, C4<0>;
v0x1808ad0_0 .net/2u *"_s116", 31 0, L_0x7fba0063a600;  1 drivers
v0x1808bb0_0 .net *"_s118", 0 0, L_0x1824ac0;  1 drivers
v0x1808c70_0 .net *"_s120", 15 0, L_0x1822ef0;  1 drivers
v0x1808d50_0 .net *"_s122", 15 0, L_0x1824f10;  1 drivers
v0x1808e30_0 .net *"_s124", 15 0, L_0x1824d10;  1 drivers
v0x1808180_0 .net *"_s126", 15 0, L_0x1825180;  1 drivers
L_0x7fba0063a648 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1809100_0 .net/2u *"_s130", 1 0, L_0x7fba0063a648;  1 drivers
v0x18091e0_0 .net *"_s132", 0 0, L_0x1825450;  1 drivers
v0x18092a0_0 .net *"_s134", 31 0, L_0x1825220;  1 drivers
L_0x7fba0063a690 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1809380_0 .net *"_s137", 29 0, L_0x7fba0063a690;  1 drivers
L_0x7fba0063a6d8 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x1809460_0 .net/2u *"_s138", 31 0, L_0x7fba0063a6d8;  1 drivers
v0x1809540_0 .net *"_s140", 0 0, L_0x1825690;  1 drivers
v0x1809600_0 .net *"_s142", 31 0, L_0x1825540;  1 drivers
L_0x7fba0063a720 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x18096e0_0 .net *"_s145", 29 0, L_0x7fba0063a720;  1 drivers
L_0x7fba0063a768 .functor BUFT 1, C4<00000000000000000000000000000010>, C4<0>, C4<0>, C4<0>;
v0x18097c0_0 .net/2u *"_s146", 31 0, L_0x7fba0063a768;  1 drivers
v0x18098a0_0 .net *"_s148", 0 0, L_0x1825930;  1 drivers
L_0x7fba0063a7b0 .functor BUFT 1, C4<0000000000000001>, C4<0>, C4<0>, C4<0>;
v0x1809960_0 .net/2u *"_s150", 15 0, L_0x7fba0063a7b0;  1 drivers
v0x1809a40_0 .net *"_s152", 15 0, L_0x18257d0;  1 drivers
v0x1809b20_0 .net *"_s154", 15 0, L_0x1825be0;  1 drivers
v0x1809c00_0 .net *"_s156", 15 0, L_0x1825ac0;  1 drivers
v0x1809ce0_0 .net *"_s16", 11 0, L_0x18220a0;  1 drivers
L_0x7fba0063a7f8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1809dc0_0 .net/2u *"_s160", 1 0, L_0x7fba0063a7f8;  1 drivers
v0x1809ea0_0 .net *"_s162", 0 0, L_0x1825cd0;  1 drivers
v0x1809f60_0 .net *"_s164", 31 0, L_0x18261e0;  1 drivers
L_0x7fba0063a840 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180a040_0 .net *"_s167", 29 0, L_0x7fba0063a840;  1 drivers
L_0x7fba0063a888 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x180a120_0 .net/2u *"_s168", 31 0, L_0x7fba0063a888;  1 drivers
v0x180a200_0 .net *"_s170", 0 0, L_0x18260a0;  1 drivers
v0x180a2c0_0 .net *"_s172", 31 0, L_0x1826470;  1 drivers
L_0x7fba0063a8d0 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180a3a0_0 .net *"_s175", 29 0, L_0x7fba0063a8d0;  1 drivers
L_0x7fba0063a918 .functor BUFT 1, C4<00000000000000000000000000000010>, C4<0>, C4<0>, C4<0>;
v0x180a480_0 .net/2u *"_s176", 31 0, L_0x7fba0063a918;  1 drivers
v0x180a560_0 .net *"_s178", 0 0, L_0x1824370;  1 drivers
v0x180a620_0 .net *"_s180", 15 0, L_0x1826370;  1 drivers
L_0x7fba0063a960 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v0x180a700_0 .net *"_s183", 3 0, L_0x7fba0063a960;  1 drivers
v0x180a7e0_0 .net *"_s184", 15 0, L_0x1826510;  1 drivers
v0x180a8c0_0 .net *"_s186", 15 0, L_0x1826a90;  1 drivers
v0x180a9a0_0 .net *"_s188", 15 0, L_0x1826970;  1 drivers
L_0x7fba0063a9a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x180aa80_0 .net/2u *"_s192", 1 0, L_0x7fba0063a9a8;  1 drivers
v0x1808f10_0 .net *"_s194", 0 0, L_0x1826bd0;  1 drivers
v0x1808fd0_0 .net *"_s196", 31 0, L_0x1826fd0;  1 drivers
L_0x7fba0063a9f0 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180af30_0 .net *"_s199", 29 0, L_0x7fba0063a9f0;  1 drivers
v0x180aff0_0 .net *"_s20", 11 0, L_0x18224f0;  1 drivers
L_0x7fba0063aa38 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x180b0d0_0 .net/2u *"_s200", 31 0, L_0x7fba0063aa38;  1 drivers
v0x180b1b0_0 .net *"_s202", 0 0, L_0x1826e40;  1 drivers
v0x180b270_0 .net *"_s204", 15 0, L_0x18272b0;  1 drivers
v0x180b350_0 .net *"_s206", 15 0, L_0x1827110;  1 drivers
L_0x7fba0063a0f0 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v0x180b430_0 .net *"_s24", 3 0, L_0x7fba0063a0f0;  1 drivers
v0x180b510_0 .net *"_s26", 31 0, L_0x1822720;  1 drivers
L_0x7fba0063a138 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180b5f0_0 .net *"_s29", 29 0, L_0x7fba0063a138;  1 drivers
v0x180b6d0_0 .net *"_s3", 14 0, L_0x1810080;  1 drivers
L_0x7fba0063a180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180b7b0_0 .net/2u *"_s30", 31 0, L_0x7fba0063a180;  1 drivers
v0x180b890_0 .net *"_s32", 0 0, L_0x1822860;  1 drivers
v0x180b950_0 .net *"_s34", 15 0, L_0x18229f0;  1 drivers
L_0x7fba0063a1c8 .functor BUFT 1, C4<000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180ba30_0 .net *"_s37", 14 0, L_0x7fba0063a1c8;  1 drivers
v0x180bb10_0 .net *"_s38", 31 0, L_0x1822b30;  1 drivers
L_0x7fba0063a210 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180bbf0_0 .net *"_s41", 29 0, L_0x7fba0063a210;  1 drivers
L_0x7fba0063a258 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x180bcd0_0 .net/2u *"_s42", 31 0, L_0x7fba0063a258;  1 drivers
v0x180bdb0_0 .net *"_s44", 0 0, L_0x1822d10;  1 drivers
v0x180be70_0 .net *"_s46", 15 0, L_0x1822e00;  1 drivers
L_0x7fba0063a2a0 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v0x180bf50_0 .net *"_s49", 3 0, L_0x7fba0063a2a0;  1 drivers
v0x180c030_0 .net *"_s50", 15 0, L_0x1822fb0;  1 drivers
v0x180c110_0 .net *"_s52", 15 0, L_0x18230f0;  1 drivers
v0x180c1f0_0 .net *"_s56", 31 0, L_0x18233f0;  1 drivers
L_0x7fba0063a2e8 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180c2d0_0 .net *"_s59", 30 0, L_0x7fba0063a2e8;  1 drivers
L_0x7fba0063a330 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180c3b0_0 .net/2u *"_s60", 31 0, L_0x7fba0063a330;  1 drivers
v0x180c490_0 .net *"_s62", 0 0, L_0x1823570;  1 drivers
v0x180c550_0 .net *"_s64", 15 0, L_0x18236b0;  1 drivers
L_0x7fba0063a018 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x180c630_0 .net/2s *"_s7", 0 0, L_0x7fba0063a018;  1 drivers
L_0x7fba0063a378 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x180c710_0 .net/2u *"_s70", 1 0, L_0x7fba0063a378;  1 drivers
v0x180c7f0_0 .net *"_s72", 0 0, L_0x1823b60;  1 drivers
v0x180c8b0_0 .net *"_s74", 31 0, L_0x1823c00;  1 drivers
L_0x7fba0063a3c0 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x180c990_0 .net *"_s77", 29 0, L_0x7fba0063a3c0;  1 drivers
L_0x7fba0063a408 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x180ca70_0 .net/2u *"_s78", 31 0, L_0x7fba0063a408;  1 drivers
v0x180cb50_0 .net *"_s80", 0 0, L_0x1823d60;  1 drivers
v0x180cc10_0 .net *"_s82", 15 0, L_0x1823e50;  1 drivers
v0x180ccf0_0 .net *"_s84", 15 0, L_0x1823fc0;  1 drivers
v0x180cdd0_0 .net *"_s88", 1 0, L_0x1824280;  1 drivers
L_0x7fba0063a450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x180ceb0_0 .net *"_s91", 0 0, L_0x7fba0063a450;  1 drivers
L_0x7fba0063a498 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x180cf90_0 .net/2u *"_s92", 1 0, L_0x7fba0063a498;  1 drivers
v0x180d070_0 .net *"_s94", 0 0, L_0x1824480;  1 drivers
v0x180d130_0 .net *"_s96", 15 0, L_0x18241a0;  1 drivers
o0x7fba00683978 .functor BUFZ 3, C4<zzz>; HiZ drive
v0x180d210_0 .net "alu_op", 2 0, o0x7fba00683978;  0 drivers
o0x7fba00683948 .functor BUFZ 1, C4<z>; HiZ drive
v0x180d300_0 .net "clk", 0 0, o0x7fba00683948;  0 drivers
L_0x7fba0063a060 .functor BUFT 1, C4<0000000000000001>, C4<0>, C4<0>, C4<0>;
v0x180d3a0_0 .net "imm", 15 0, L_0x7fba0063a060;  1 drivers
v0x180d460_0 .net "inA", 15 0, L_0x1825360;  1 drivers
v0x180d540_0 .net "inB", 15 0, L_0x1824740;  1 drivers
v0x180d620_0 .net "inG", 15 0, L_0x1823980;  1 drivers
v0x180d700_0 .net "inLP", 15 0, L_0x1823840;  1 drivers
v0x180d7e0_0 .net "inQ", 15 0, L_0x1824100;  1 drivers
v0x180d8c0_0 .net "inX", 15 0, L_0x1826d50;  1 drivers
v0x180d9a0_0 .net "inY", 15 0, L_0x1825fb0;  1 drivers
v0x180da80_0 .net "inZ", 15 0, L_0x1827550;  1 drivers
v0x180db60_0 .net "mAddr", 11 0, L_0x1823300;  1 drivers
v0x180dc70_0 .net "memOut", 15 0, L_0x18223e0;  1 drivers
o0x7fba00684008 .functor BUFZ 1, C4<z>; HiZ drive
v0x180dd30_0 .net "mem_WE", 0 0, o0x7fba00684008;  0 drivers
v0x180de00_0 .net "preU", 14 0, v0x1804cd0_0;  1 drivers
v0x180ded0_0 .var "regA", 15 0;
v0x180df70_0 .var "regB", 15 0;
v0x180e050_0 .var "regG", 15 0;
v0x180e130_0 .var "regLP", 15 0;
v0x180e210_0 .var "regQ", 15 0;
v0x180e2f0_0 .var "regX", 15 0;
v0x180ab70_0 .var "regY", 15 0;
v0x180ac40_0 .var "regZ", 15 0;
L_0x1811f50 .concat8 [ 1 15 0 0], L_0x7fba0063a018, L_0x1810080;
L_0x1822000 .part v0x180df70_0, 1, 12;
L_0x18220a0 .part v0x180ac40_0, 1, 12;
L_0x1822140 .part L_0x18220a0, 0, 1;
L_0x18224f0 .part v0x180ded0_0, 1, 12;
L_0x18225e0 .concat [ 12 4 0 0], L_0x18224f0, L_0x7fba0063a0f0;
L_0x1822720 .concat [ 2 30 0 0], o0x7fba006844e8, L_0x7fba0063a138;
L_0x1822860 .cmp/eq 32, L_0x1822720, L_0x7fba0063a180;
L_0x18229f0 .concat [ 1 15 0 0], L_0x1822140, L_0x7fba0063a1c8;
L_0x1822b30 .concat [ 2 30 0 0], o0x7fba006844e8, L_0x7fba0063a210;
L_0x1822d10 .cmp/eq 32, L_0x1822b30, L_0x7fba0063a258;
L_0x1822e00 .concat [ 12 4 0 0], L_0x1822000, L_0x7fba0063a2a0;
L_0x1822fb0 .functor MUXZ 16, v0x180ded0_0, L_0x1822e00, L_0x1822d10, C4<>;
L_0x18230f0 .functor MUXZ 16, L_0x1822fb0, L_0x18229f0, L_0x1822860, C4<>;
L_0x1823300 .part L_0x18230f0, 0, 12;
L_0x18233f0 .concat [ 1 31 0 0], o0x7fba00684488, L_0x7fba0063a2e8;
L_0x1823570 .cmp/eq 32, L_0x18233f0, L_0x7fba0063a330;
L_0x18236b0 .functor MUXZ 16, L_0x1811f50, L_0x18223e0, L_0x1823570, C4<>;
L_0x1823840 .functor MUXZ 16, L_0x1823840, L_0x18236b0, o0x7fba006844b8, C4<>;
L_0x1823980 .functor MUXZ 16, L_0x1823980, L_0x18223e0, o0x7fba00684458, C4<>;
L_0x1823b60 .cmp/eq 2, o0x7fba00684548, L_0x7fba0063a378;
L_0x1823c00 .concat [ 2 30 0 0], o0x7fba00684548, L_0x7fba0063a3c0;
L_0x1823d60 .cmp/eq 32, L_0x1823c00, L_0x7fba0063a408;
L_0x1823e50 .functor MUXZ 16, v0x180ac40_0, L_0x1811f50, L_0x1823d60, C4<>;
L_0x1823fc0 .functor MUXZ 16, L_0x1823e50, L_0x18223e0, L_0x1823b60, C4<>;
L_0x1824100 .functor MUXZ 16, L_0x1824100, L_0x1823fc0, o0x7fba00684578, C4<>;
L_0x1824280 .concat [ 1 1 0 0], o0x7fba006843f8, L_0x7fba0063a450;
L_0x1824480 .cmp/eq 2, L_0x1824280, L_0x7fba0063a498;
L_0x18241a0 .functor MUXZ 16, L_0x1811f50, L_0x18223e0, L_0x1824480, C4<>;
L_0x1824740 .functor MUXZ 16, L_0x1824740, L_0x18241a0, o0x7fba00684458, C4<>;
L_0x18248e0 .cmp/eq 2, o0x7fba00684368, L_0x7fba0063a4e0;
L_0x1824980 .concat [ 2 30 0 0], o0x7fba00684368, L_0x7fba0063a528;
L_0x1824830 .cmp/eq 32, L_0x1824980, L_0x7fba0063a570;
L_0x1824c20 .concat [ 2 30 0 0], o0x7fba00684368, L_0x7fba0063a5b8;
L_0x1824ac0 .cmp/eq 32, L_0x1824c20, L_0x7fba0063a600;
L_0x1824f10 .functor MUXZ 16, v0x180e050_0, L_0x1822ef0, L_0x1824ac0, C4<>;
L_0x1824d10 .functor MUXZ 16, L_0x1824f10, L_0x1811f50, L_0x1824830, C4<>;
L_0x1825180 .functor MUXZ 16, L_0x1824d10, L_0x18223e0, L_0x18248e0, C4<>;
L_0x1825360 .functor MUXZ 16, L_0x1825360, L_0x1825180, o0x7fba00684398, C4<>;
L_0x1825450 .cmp/eq 2, o0x7fba00684668, L_0x7fba0063a648;
L_0x1825220 .concat [ 2 30 0 0], o0x7fba00684668, L_0x7fba0063a690;
L_0x1825690 .cmp/eq 32, L_0x1825220, L_0x7fba0063a6d8;
L_0x1825540 .concat [ 2 30 0 0], o0x7fba00684668, L_0x7fba0063a720;
L_0x1825930 .cmp/eq 32, L_0x1825540, L_0x7fba0063a768;
L_0x18257d0 .functor MUXZ 16, L_0x7fba0063a060, L_0x7fba0063a7b0, L_0x1825930, C4<>;
L_0x1825be0 .functor MUXZ 16, L_0x18257d0, v0x180ded0_0, L_0x1825690, C4<>;
L_0x1825ac0 .functor MUXZ 16, L_0x1825be0, L_0x18223e0, L_0x1825450, C4<>;
L_0x1825fb0 .functor MUXZ 16, L_0x1825fb0, L_0x1825ac0, o0x7fba00684698, C4<>;
L_0x1825cd0 .cmp/eq 2, o0x7fba00684608, L_0x7fba0063a7f8;
L_0x18261e0 .concat [ 2 30 0 0], o0x7fba00684608, L_0x7fba0063a840;
L_0x18260a0 .cmp/eq 32, L_0x18261e0, L_0x7fba0063a888;
L_0x1826470 .concat [ 2 30 0 0], o0x7fba00684608, L_0x7fba0063a8d0;
L_0x1824370 .cmp/eq 32, L_0x1826470, L_0x7fba0063a918;
L_0x1826370 .concat [ 12 4 0 0], L_0x1822000, L_0x7fba0063a960;
L_0x1826510 .functor MUXZ 16, L_0x180ec80, L_0x1826370, L_0x1824370, C4<>;
L_0x1826a90 .functor MUXZ 16, L_0x1826510, v0x180ac40_0, L_0x18260a0, C4<>;
L_0x1826970 .functor MUXZ 16, L_0x1826a90, L_0x18223e0, L_0x1825cd0, C4<>;
L_0x1826d50 .functor MUXZ 16, L_0x1826d50, L_0x1826970, o0x7fba00684638, C4<>;
L_0x1826bd0 .cmp/eq 2, o0x7fba006846c8, L_0x7fba0063a9a8;
L_0x1826fd0 .concat [ 2 30 0 0], o0x7fba006846c8, L_0x7fba0063a9f0;
L_0x1826e40 .cmp/eq 32, L_0x1826fd0, L_0x7fba0063aa38;
L_0x18272b0 .functor MUXZ 16, v0x180df70_0, L_0x1811f50, L_0x1826e40, C4<>;
L_0x1827110 .functor MUXZ 16, L_0x18272b0, L_0x18223e0, L_0x1826bd0, C4<>;
L_0x1827550 .functor MUXZ 16, L_0x1827550, L_0x1827110, o0x7fba006846f8, C4<>;
S_0x17d3ea0 .scope module, "alu" "ALU" 2 16, 3 1 0, S_0x17c47a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "res"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
    .port_info 4 /INPUT 1 "clk"
v0x1803840_0 .net "A", 15 0, v0x180e2f0_0;  1 drivers
v0x1803940_0 .net "B", 15 0, v0x180ab70_0;  1 drivers
v0x1803a20_0 .var "C", 14 0;
v0x1803ae0_0 .var "D", 14 0;
v0x1803bc0_0 .net *"_s0", 0 0, L_0x17e2ba0;  1 drivers
v0x1803cf0_0 .net *"_s12", 0 0, L_0x180f570;  1 drivers
v0x1803dd0_0 .net *"_s16", 0 0, L_0x180f7c0;  1 drivers
v0x1803eb0_0 .net *"_s20", 0 0, L_0x180faa0;  1 drivers
v0x1803f90_0 .net *"_s24", 0 0, L_0x180fd40;  1 drivers
v0x1804100_0 .net *"_s28", 0 0, L_0x180fcd0;  1 drivers
v0x18041e0_0 .net *"_s32", 0 0, L_0x1810370;  1 drivers
v0x18042c0_0 .net *"_s36", 0 0, L_0x180f4a0;  1 drivers
v0x18043a0_0 .net *"_s4", 0 0, L_0x180ef90;  1 drivers
v0x1804480_0 .net *"_s40", 0 0, L_0x1810620;  1 drivers
v0x1804560_0 .net *"_s44", 0 0, L_0x18108d0;  1 drivers
v0x1804640_0 .net *"_s48", 0 0, L_0x1810b60;  1 drivers
v0x1804720_0 .net *"_s52", 0 0, L_0x1810e00;  1 drivers
v0x18048d0_0 .net *"_s56", 0 0, L_0x1811980;  1 drivers
v0x1804970_0 .net *"_s8", 0 0, L_0x180f1e0;  1 drivers
v0x1804a50_0 .net "clk", 0 0, o0x7fba00683948;  alias, 0 drivers
v0x1804b10_0 .net "command", 2 0, o0x7fba00683978;  alias, 0 drivers
v0x1804bf0_0 .var "product", 29 0;
v0x1804cd0_0 .var "res", 14 0;
v0x1804db0_0 .var "result", 14 0;
v0x1804e90_0 .net "resultAND", 14 0, L_0x18110e0;  1 drivers
E_0x17b4a90 .event posedge, v0x1804a50_0;
L_0x180ed10 .part v0x180e2f0_0, 1, 1;
L_0x180ee50 .part v0x180ab70_0, 1, 1;
L_0x180f000 .part v0x180e2f0_0, 2, 1;
L_0x180f0f0 .part v0x180ab70_0, 2, 1;
L_0x180f280 .part v0x180e2f0_0, 3, 1;
L_0x180f400 .part v0x180ab70_0, 3, 1;
L_0x180f5e0 .part v0x180e2f0_0, 4, 1;
L_0x180f680 .part v0x180ab70_0, 4, 1;
L_0x180f860 .part v0x180e2f0_0, 5, 1;
L_0x180f950 .part v0x180ab70_0, 5, 1;
L_0x180fb40 .part v0x180e2f0_0, 6, 1;
L_0x180fbe0 .part v0x180ab70_0, 6, 1;
L_0x180fde0 .part v0x180e2f0_0, 7, 1;
L_0x180ffe0 .part v0x180ab70_0, 7, 1;
L_0x1810190 .part v0x180e2f0_0, 8, 1;
L_0x1810280 .part v0x180ab70_0, 8, 1;
L_0x1810440 .part v0x180e2f0_0, 9, 1;
L_0x1810530 .part v0x180ab70_0, 9, 1;
L_0x18106f0 .part v0x180e2f0_0, 10, 1;
L_0x18107e0 .part v0x180ab70_0, 10, 1;
L_0x1810980 .part v0x180e2f0_0, 11, 1;
L_0x1810a70 .part v0x180ab70_0, 11, 1;
L_0x1810c20 .part v0x180e2f0_0, 12, 1;
L_0x1810d10 .part v0x180ab70_0, 12, 1;
L_0x1810f00 .part v0x180e2f0_0, 13, 1;
L_0x1810ff0 .part v0x180ab70_0, 13, 1;
L_0x18111c0 .part v0x180e2f0_0, 14, 1;
L_0x18112b0 .part v0x180ab70_0, 14, 1;
LS_0x18110e0_0_0 .concat8 [ 1 1 1 1], L_0x17e2ba0, L_0x180ef90, L_0x180f1e0, L_0x180f570;
LS_0x18110e0_0_4 .concat8 [ 1 1 1 1], L_0x180f7c0, L_0x180faa0, L_0x180fd40, L_0x180fcd0;
LS_0x18110e0_0_8 .concat8 [ 1 1 1 1], L_0x1810370, L_0x180f4a0, L_0x1810620, L_0x18108d0;
LS_0x18110e0_0_12 .concat8 [ 1 1 1 0], L_0x1810b60, L_0x1810e00, L_0x1811980;
L_0x18110e0 .concat8 [ 4 4 4 3], LS_0x18110e0_0_0, LS_0x18110e0_0_4, LS_0x18110e0_0_8, LS_0x18110e0_0_12;
L_0x1811a40 .part v0x180e2f0_0, 15, 1;
L_0x18113a0 .part v0x180ab70_0, 15, 1;
S_0x17cfc70 .scope generate, "genblock[0]" "genblock[0]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x17b01b0 .param/l "i" 0 3 34, +C4<00>;
L_0x17e2ba0 .functor AND 1, L_0x180ed10, L_0x180ee50, C4<1>, C4<1>;
v0x17aee00_0 .net *"_s0", 0 0, L_0x180ed10;  1 drivers
v0x17ff6e0_0 .net *"_s1", 0 0, L_0x180ee50;  1 drivers
S_0x17ff7c0 .scope generate, "genblock[1]" "genblock[1]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x17ff9d0 .param/l "i" 0 3 34, +C4<01>;
L_0x180ef90 .functor AND 1, L_0x180f000, L_0x180f0f0, C4<1>, C4<1>;
v0x17ffa90_0 .net *"_s0", 0 0, L_0x180f000;  1 drivers
v0x17ffb70_0 .net *"_s1", 0 0, L_0x180f0f0;  1 drivers
S_0x17ffc50 .scope generate, "genblock[2]" "genblock[2]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x17ffe90 .param/l "i" 0 3 34, +C4<010>;
L_0x180f1e0 .functor AND 1, L_0x180f280, L_0x180f400, C4<1>, C4<1>;
v0x17fff30_0 .net *"_s0", 0 0, L_0x180f280;  1 drivers
v0x1800010_0 .net *"_s1", 0 0, L_0x180f400;  1 drivers
S_0x18000f0 .scope generate, "genblock[3]" "genblock[3]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1800300 .param/l "i" 0 3 34, +C4<011>;
L_0x180f570 .functor AND 1, L_0x180f5e0, L_0x180f680, C4<1>, C4<1>;
v0x18003c0_0 .net *"_s0", 0 0, L_0x180f5e0;  1 drivers
v0x18004a0_0 .net *"_s1", 0 0, L_0x180f680;  1 drivers
S_0x1800580 .scope generate, "genblock[4]" "genblock[4]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x18007e0 .param/l "i" 0 3 34, +C4<0100>;
L_0x180f7c0 .functor AND 1, L_0x180f860, L_0x180f950, C4<1>, C4<1>;
v0x18008a0_0 .net *"_s0", 0 0, L_0x180f860;  1 drivers
v0x1800980_0 .net *"_s1", 0 0, L_0x180f950;  1 drivers
S_0x1800a60 .scope generate, "genblock[5]" "genblock[5]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1800c70 .param/l "i" 0 3 34, +C4<0101>;
L_0x180faa0 .functor AND 1, L_0x180fb40, L_0x180fbe0, C4<1>, C4<1>;
v0x1800d30_0 .net *"_s0", 0 0, L_0x180fb40;  1 drivers
v0x1800e10_0 .net *"_s1", 0 0, L_0x180fbe0;  1 drivers
S_0x1800ef0 .scope generate, "genblock[6]" "genblock[6]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1801100 .param/l "i" 0 3 34, +C4<0110>;
L_0x180fd40 .functor AND 1, L_0x180fde0, L_0x180ffe0, C4<1>, C4<1>;
v0x18011c0_0 .net *"_s0", 0 0, L_0x180fde0;  1 drivers
v0x18012a0_0 .net *"_s1", 0 0, L_0x180ffe0;  1 drivers
S_0x1801380 .scope generate, "genblock[7]" "genblock[7]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1801590 .param/l "i" 0 3 34, +C4<0111>;
L_0x180fcd0 .functor AND 1, L_0x1810190, L_0x1810280, C4<1>, C4<1>;
v0x1801650_0 .net *"_s0", 0 0, L_0x1810190;  1 drivers
v0x1801730_0 .net *"_s1", 0 0, L_0x1810280;  1 drivers
S_0x1801810 .scope generate, "genblock[8]" "genblock[8]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1800790 .param/l "i" 0 3 34, +C4<01000>;
L_0x1810370 .functor AND 1, L_0x1810440, L_0x1810530, C4<1>, C4<1>;
v0x1801b20_0 .net *"_s0", 0 0, L_0x1810440;  1 drivers
v0x1801c00_0 .net *"_s1", 0 0, L_0x1810530;  1 drivers
S_0x1801ce0 .scope generate, "genblock[9]" "genblock[9]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1801ef0 .param/l "i" 0 3 34, +C4<01001>;
L_0x180f4a0 .functor AND 1, L_0x18106f0, L_0x18107e0, C4<1>, C4<1>;
v0x1801fb0_0 .net *"_s0", 0 0, L_0x18106f0;  1 drivers
v0x1802090_0 .net *"_s1", 0 0, L_0x18107e0;  1 drivers
S_0x1802170 .scope generate, "genblock[10]" "genblock[10]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1802380 .param/l "i" 0 3 34, +C4<01010>;
L_0x1810620 .functor AND 1, L_0x1810980, L_0x1810a70, C4<1>, C4<1>;
v0x1802440_0 .net *"_s0", 0 0, L_0x1810980;  1 drivers
v0x1802520_0 .net *"_s1", 0 0, L_0x1810a70;  1 drivers
S_0x1802600 .scope generate, "genblock[11]" "genblock[11]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1802810 .param/l "i" 0 3 34, +C4<01011>;
L_0x18108d0 .functor AND 1, L_0x1810c20, L_0x1810d10, C4<1>, C4<1>;
v0x18028d0_0 .net *"_s0", 0 0, L_0x1810c20;  1 drivers
v0x18029b0_0 .net *"_s1", 0 0, L_0x1810d10;  1 drivers
S_0x1802a90 .scope generate, "genblock[12]" "genblock[12]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1802ca0 .param/l "i" 0 3 34, +C4<01100>;
L_0x1810b60 .functor AND 1, L_0x1810f00, L_0x1810ff0, C4<1>, C4<1>;
v0x1802d60_0 .net *"_s0", 0 0, L_0x1810f00;  1 drivers
v0x1802e40_0 .net *"_s1", 0 0, L_0x1810ff0;  1 drivers
S_0x1802f20 .scope generate, "genblock[13]" "genblock[13]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x1803130 .param/l "i" 0 3 34, +C4<01101>;
L_0x1810e00 .functor AND 1, L_0x18111c0, L_0x18112b0, C4<1>, C4<1>;
v0x18031f0_0 .net *"_s0", 0 0, L_0x18111c0;  1 drivers
v0x18032d0_0 .net *"_s1", 0 0, L_0x18112b0;  1 drivers
S_0x18033b0 .scope generate, "genblock[14]" "genblock[14]" 3 34, 3 34 0, S_0x17d3ea0;
 .timescale 0 0;
P_0x18035c0 .param/l "i" 0 3 34, +C4<01110>;
L_0x1811980 .functor AND 1, L_0x1811a40, L_0x18113a0, C4<1>, C4<1>;
v0x1803680_0 .net *"_s0", 0 0, L_0x1811a40;  1 drivers
v0x1803760_0 .net *"_s1", 0 0, L_0x18113a0;  1 drivers
S_0x1805010 .scope module, "mem" "memory" 2 23, 4 4 0, S_0x17c47a0;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 3 "eBank"
    .port_info 2 /INPUT 5 "fBank"
    .port_info 3 /INPUT 1 "superBank"
    .port_info 4 /INPUT 12 "memAddress"
    .port_info 5 /INPUT 16 "dataIn"
    .port_info 6 /INPUT 1 "writeEnable"
    .port_info 7 /INPUT 16 "regZ"
    .port_info 8 /INPUT 16 "regX"
    .port_info 9 /INPUT 16 "regY"
    .port_info 10 /INPUT 16 "regA"
    .port_info 11 /INPUT 16 "regB"
    .port_info 12 /INPUT 16 "regQ"
    .port_info 13 /INPUT 16 "regG"
    .port_info 14 /INPUT 16 "regLP"
    .port_info 15 /OUTPUT 16 "result"
    .port_info 16 /OUTPUT 16 "finalAddress"
L_0x18221e0 .functor BUFZ 16, v0x1805990_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
L_0x18223e0 .functor BUFZ 16, L_0x1822250, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
v0x1805d60_0 .net *"_s2", 15 0, L_0x1822250;  1 drivers
v0x1805e60_0 .net *"_s4", 17 0, L_0x18222f0;  1 drivers
L_0x7fba0063a0a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1805f40_0 .net *"_s7", 1 0, L_0x7fba0063a0a8;  1 drivers
v0x1806000_0 .net "clk", 0 0, o0x7fba00683948;  alias, 0 drivers
v0x18060f0_0 .net "dataIn", 15 0, L_0x18225e0;  1 drivers
o0x7fba00683b58 .functor BUFZ 3, C4<zzz>; HiZ drive
v0x1806220_0 .net "eBank", 2 0, o0x7fba00683b58;  0 drivers
o0x7fba00683b88 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x18062e0_0 .net "fBank", 4 0, o0x7fba00683b88;  0 drivers
v0x1806380_0 .net "finalAddress", 15 0, L_0x18221e0;  1 drivers
v0x1806440_0 .net "finalAddress1", 15 0, v0x1805990_0;  1 drivers
v0x18065c0_0 .net "memAddress", 11 0, L_0x1823300;  alias, 1 drivers
v0x1806690 .array "memory", 0 65535, 15 0;
o0x7fba00683e58 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x1806730_0 .net "regA", 15 0, o0x7fba00683e58;  0 drivers
o0x7fba00683e88 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x1806810_0 .net "regB", 15 0, o0x7fba00683e88;  0 drivers
o0x7fba00683eb8 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x18068f0_0 .net "regG", 15 0, o0x7fba00683eb8;  0 drivers
o0x7fba00683ee8 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x18069d0_0 .net "regLP", 15 0, o0x7fba00683ee8;  0 drivers
o0x7fba00683f18 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x1806ab0_0 .net "regQ", 15 0, o0x7fba00683f18;  0 drivers
o0x7fba00683f48 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x1806b90_0 .net "regX", 15 0, o0x7fba00683f48;  0 drivers
o0x7fba00683f78 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x1806d40_0 .net "regY", 15 0, o0x7fba00683f78;  0 drivers
o0x7fba00683fa8 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x1806de0_0 .net "regZ", 15 0, o0x7fba00683fa8;  0 drivers
v0x1806ec0_0 .net "result", 15 0, L_0x18223e0;  alias, 1 drivers
o0x7fba00683c18 .functor BUFZ 1, C4<z>; HiZ drive
v0x1806fa0_0 .net "superBank", 0 0, o0x7fba00683c18;  0 drivers
v0x1807070_0 .net "writeEnable", 0 0, o0x7fba00684008;  alias, 0 drivers
L_0x1822250 .array/port v0x1806690, L_0x18222f0;
L_0x18222f0 .concat [ 16 2 0 0], L_0x18221e0, L_0x7fba0063a0a8;
S_0x18053e0 .scope module, "memLogic" "memLogic" 4 24, 5 3 0, S_0x1805010;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 3 "eBank"
    .port_info 2 /INPUT 5 "fBank"
    .port_info 3 /INPUT 1 "superBank"
    .port_info 4 /INPUT 12 "memAddress"
    .port_info 5 /OUTPUT 16 "finalAddress"
v0x18056f0_0 .net "clk", 0 0, o0x7fba00683948;  alias, 0 drivers
v0x18057e0_0 .net "eBank", 2 0, o0x7fba00683b58;  alias, 0 drivers
v0x18058a0_0 .net "fBank", 4 0, o0x7fba00683b88;  alias, 0 drivers
v0x1805990_0 .var "finalAddress", 15 0;
v0x1805a70_0 .net "memAddress", 11 0, L_0x1823300;  alias, 1 drivers
v0x1805ba0_0 .net "superBank", 0 0, o0x7fba00683c18;  alias, 0 drivers
E_0x1805690 .event edge, v0x1805a70_0, v0x18057e0_0, v0x18058a0_0, v0x1805ba0_0;
    .scope S_0x17d3ea0;
T_0 ;
    %wait E_0x17b4a90;
    %vpi_call 3 18 "$display", "A = %b", v0x1803a20_0 {0 0 0};
    %load/vec4 v0x1803840_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x1803840_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x1803a20_0, 0, 15;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x1803840_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.2, 8;
    %load/vec4 v0x1803840_0;
    %parti/s 15, 1, 2;
    %inv;
    %store/vec4 v0x1803a20_0, 0, 15;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x1803840_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x1803a20_0, 0, 15;
T_0.3 ;
T_0.1 ;
    %load/vec4 v0x1803940_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.4, 8;
    %load/vec4 v0x1803940_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x1803ae0_0, 0, 15;
    %jmp T_0.5;
T_0.4 ;
    %load/vec4 v0x1803940_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.6, 8;
    %load/vec4 v0x1803940_0;
    %parti/s 15, 1, 2;
    %inv;
    %store/vec4 v0x1803ae0_0, 0, 15;
    %jmp T_0.7;
T_0.6 ;
    %load/vec4 v0x1803940_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x1803ae0_0, 0, 15;
T_0.7 ;
T_0.5 ;
    %load/vec4 v0x1803a20_0;
    %pad/u 30;
    %load/vec4 v0x1803ae0_0;
    %pad/u 30;
    %mul;
    %store/vec4 v0x1804bf0_0, 0, 30;
    %jmp T_0;
    .thread T_0;
    .scope S_0x17d3ea0;
T_1 ;
    %wait E_0x17b4a90;
    %load/vec4 v0x1804b10_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/u;
    %jmp/1 T_1.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/u;
    %jmp/1 T_1.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/u;
    %jmp/1 T_1.2, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 3;
    %cmp/u;
    %jmp/1 T_1.3, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 3;
    %cmp/u;
    %jmp/1 T_1.4, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 3;
    %cmp/u;
    %jmp/1 T_1.5, 6;
    %dup/vec4;
    %pushi/vec4 6, 0, 3;
    %cmp/u;
    %jmp/1 T_1.6, 6;
    %jmp T_1.7;
T_1.0 ;
    %load/vec4 v0x1803a20_0;
    %load/vec4 v0x1803ae0_0;
    %add;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0x1803a20_0;
    %load/vec4 v0x1803ae0_0;
    %sub;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0x1804e90_0;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0x1804bf0_0;
    %parti/s 15, 0, 2;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0x1804bf0_0;
    %parti/s 15, 15, 5;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0x1803a20_0;
    %load/vec4 v0x1803ae0_0;
    %mod;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0x1803a20_0;
    %load/vec4 v0x1803ae0_0;
    %div;
    %store/vec4 v0x1804db0_0, 0, 15;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0x1804db0_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 2, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x1803840_0;
    %parti/s 1, 15, 5;
    %load/vec4 v0x1803940_0;
    %parti/s 1, 15, 5;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.8, 8;
    %load/vec4 v0x1804db0_0;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %inv;
    %store/vec4 v0x1804cd0_0, 0, 15;
    %jmp T_1.9;
T_1.8 ;
    %load/vec4 v0x1804b10_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1803840_0;
    %parti/s 1, 15, 5;
    %load/vec4 v0x1803940_0;
    %parti/s 1, 15, 5;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.10, 8;
    %load/vec4 v0x1804db0_0;
    %inv;
    %store/vec4 v0x1804cd0_0, 0, 15;
    %jmp T_1.11;
T_1.10 ;
    %load/vec4 v0x1804db0_0;
    %store/vec4 v0x1804cd0_0, 0, 15;
T_1.11 ;
T_1.9 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x18053e0;
T_2 ;
    %wait E_0x1805690;
    %load/vec4 v0x1805a70_0;
    %parti/s 2, 10, 5;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_2.0, 4;
    %load/vec4 v0x1805a70_0;
    %parti/s 2, 8, 5;
    %cmpi/e 3, 0, 2;
    %jmp/0xz  T_2.2, 4;
    %pushi/vec4 0, 0, 5;
    %load/vec4 v0x18057e0_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x1805a70_0;
    %parti/s 8, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x1805990_0, 0;
    %jmp T_2.3;
T_2.2 ;
    %pushi/vec4 0, 0, 6;
    %load/vec4 v0x1805a70_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x1805990_0, 0;
T_2.3 ;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v0x1805a70_0;
    %parti/s 2, 10, 5;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_2.4, 4;
    %load/vec4 v0x18058a0_0;
    %parti/s 2, 3, 3;
    %cmpi/e 3, 0, 2;
    %jmp/0xz  T_2.6, 4;
    %load/vec4 v0x1805ba0_0;
    %cmpi/e 1, 0, 1;
    %jmp/0xz  T_2.8, 4;
    %pushi/vec4 4, 0, 3;
    %load/vec4 v0x18058a0_0;
    %parti/s 3, 0, 2;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x1805a70_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x1805990_0, 0;
    %jmp T_2.9;
T_2.8 ;
    %pushi/vec4 0, 0, 1;
    %load/vec4 v0x18058a0_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x1805a70_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x1805990_0, 0;
T_2.9 ;
    %jmp T_2.7;
T_2.6 ;
    %pushi/vec4 0, 0, 1;
    %load/vec4 v0x18058a0_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x1805a70_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x1805990_0, 0;
T_2.7 ;
    %jmp T_2.5;
T_2.4 ;
    %pushi/vec4 0, 0, 4;
    %load/vec4 v0x1805a70_0;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x1805990_0, 0;
T_2.5 ;
T_2.1 ;
    %jmp T_2;
    .thread T_2, $push;
    .scope S_0x1805010;
T_3 ;
    %wait E_0x17b4a90;
    %load/vec4 v0x1807070_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %load/vec4 v0x18060f0_0;
    %load/vec4 v0x1806380_0;
    %pad/u 18;
    %ix/vec4 3;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
T_3.0 ;
    %load/vec4 v0x1806de0_0;
    %ix/load 3, 0, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x1806b90_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x1806d40_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x1806730_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x1806810_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x1806ab0_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x18068f0_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %load/vec4 v0x18069d0_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %pushi/vec4 1, 0, 16;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1806690, 0, 4;
    %jmp T_3;
    .thread T_3;
    .scope S_0x17c47a0;
T_4 ;
    %wait E_0x17b4a90;
    %load/vec4 v0x180d700_0;
    %store/vec4 v0x180e130_0, 0, 16;
    %load/vec4 v0x180d620_0;
    %store/vec4 v0x180e050_0, 0, 16;
    %load/vec4 v0x180d7e0_0;
    %store/vec4 v0x180e210_0, 0, 16;
    %load/vec4 v0x180d540_0;
    %store/vec4 v0x180df70_0, 0, 16;
    %load/vec4 v0x180d460_0;
    %store/vec4 v0x180ded0_0, 0, 16;
    %load/vec4 v0x180d9a0_0;
    %store/vec4 v0x180ab70_0, 0, 16;
    %load/vec4 v0x180d8c0_0;
    %store/vec4 v0x180e2f0_0, 0, 16;
    %load/vec4 v0x180da80_0;
    %store/vec4 v0x180ac40_0, 0, 16;
    %jmp T_4;
    .thread T_4;
# The file index is used to find the file name in the following table.
:file_names 6;
    "N/A";
    "<interactive>";
    "agc.v";
    "./behavioral_alu.v";
    "./memory.v";
    "./memLogic.v";
