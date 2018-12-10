#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x22b6150 .scope module, "agc" "agc" 2 4;
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
P_0x229ee00 .param/l "eBank" 0 2 11, C4<000>;
P_0x229ee40 .param/l "fBank" 0 2 12, C4<00000>;
P_0x229ee80 .param/l "superBank" 0 2 13, C4<0>;
L_0x23025a0 .functor BUFZ 15, v0x22f5b40_0, C4<000000000000000>, C4<000000000000000>, C4<000000000000000>;
L_0x22ff440 .functor BUFZ 16, v0x22feaa0_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
L_0x2313910 .functor NOT 16, v0x22feaa0_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
o0x7fecc6f5f2d8 .functor BUFZ 2, C4<zz>; HiZ drive
v0x22f8180_0 .net "A_MUX", 1 0, o0x7fecc6f5f2d8;  0 drivers
o0x7fecc6f5f308 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f8220_0 .net "A_WE", 0 0, o0x7fecc6f5f308;  0 drivers
v0x22f82c0_0 .net "AorNegA", 15 0, L_0x22ff440;  1 drivers
o0x7fecc6f5f368 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f83d0_0 .net "B_MUX", 0 0, o0x7fecc6f5f368;  0 drivers
o0x7fecc6f5f398 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f8490_0 .net "B_WE", 0 0, o0x7fecc6f5f398;  0 drivers
o0x7fecc6f5f3c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f85a0_0 .net "G_WE", 0 0, o0x7fecc6f5f3c8;  0 drivers
o0x7fecc6f5f3f8 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f8660_0 .net "LP_MUX", 0 0, o0x7fecc6f5f3f8;  0 drivers
o0x7fecc6f5f428 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f8720_0 .net "LP_WE", 0 0, o0x7fecc6f5f428;  0 drivers
o0x7fecc6f5f458 .functor BUFZ 2, C4<zz>; HiZ drive
v0x22f87e0_0 .net "MAddr_MUX", 1 0, o0x7fecc6f5f458;  0 drivers
v0x22f8950_0 .net "PC_addr", 11 0, L_0x2312800;  1 drivers
o0x7fecc6f5f4b8 .functor BUFZ 2, C4<zz>; HiZ drive
v0x22f8a30_0 .net "Q_MUX", 1 0, o0x7fecc6f5f4b8;  0 drivers
o0x7fecc6f5f4e8 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f8b10_0 .net "Q_WE", 0 0, o0x7fecc6f5f4e8;  0 drivers
v0x22f8bd0_0 .net "S", 11 0, L_0x2312760;  1 drivers
v0x22f8cb0_0 .net "U", 15 0, L_0x2302660;  1 drivers
o0x7fecc6f5f578 .functor BUFZ 2, C4<zz>; HiZ drive
v0x22f8d90_0 .net "X_MUX", 1 0, o0x7fecc6f5f578;  0 drivers
o0x7fecc6f5f5a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f8e70_0 .net "X_WE", 0 0, o0x7fecc6f5f5a8;  0 drivers
o0x7fecc6f5f5d8 .functor BUFZ 2, C4<zz>; HiZ drive
v0x22f8f30_0 .net "Y_MUX", 1 0, o0x7fecc6f5f5d8;  0 drivers
o0x7fecc6f5f608 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f90e0_0 .net "Y_WE", 0 0, o0x7fecc6f5f608;  0 drivers
o0x7fecc6f5f638 .functor BUFZ 2, C4<zz>; HiZ drive
v0x22f9180_0 .net "Z_MUX", 1 0, o0x7fecc6f5f638;  0 drivers
o0x7fecc6f5f668 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f9240_0 .net "Z_WE", 0 0, o0x7fecc6f5f668;  0 drivers
v0x22f9300_0 .net *"_s101", 31 0, L_0x2314b90;  1 drivers
L_0x7fecc6f155b8 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22f93e0_0 .net *"_s104", 29 0, L_0x7fecc6f155b8;  1 drivers
L_0x7fecc6f15600 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22f94c0_0 .net/2u *"_s105", 31 0, L_0x7fecc6f15600;  1 drivers
v0x22f95a0_0 .net *"_s107", 0 0, L_0x2315070;  1 drivers
v0x22f9660_0 .net *"_s109", 31 0, L_0x2314ee0;  1 drivers
L_0x7fecc6f15648 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22f9740_0 .net *"_s112", 29 0, L_0x7fecc6f15648;  1 drivers
L_0x7fecc6f15690 .functor BUFT 1, C4<00000000000000000000000000000010>, C4<0>, C4<0>, C4<0>;
v0x22f9820_0 .net/2u *"_s113", 31 0, L_0x7fecc6f15690;  1 drivers
v0x22f9900_0 .net *"_s115", 0 0, L_0x23152b0;  1 drivers
v0x22f99c0_0 .net *"_s117", 15 0, L_0x2313910;  1 drivers
v0x22f9aa0_0 .net *"_s119", 15 0, L_0x23151b0;  1 drivers
v0x22f9b80_0 .net *"_s121", 15 0, L_0x23155a0;  1 drivers
v0x22f9c60_0 .net *"_s123", 15 0, L_0x2315760;  1 drivers
L_0x7fecc6f156d8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22f9d40_0 .net/2u *"_s127", 1 0, L_0x7fecc6f156d8;  1 drivers
v0x22f9010_0 .net *"_s129", 0 0, L_0x2315a20;  1 drivers
v0x22f9ff0_0 .net *"_s131", 31 0, L_0x2315ac0;  1 drivers
L_0x7fecc6f15720 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fa0d0_0 .net *"_s134", 29 0, L_0x7fecc6f15720;  1 drivers
L_0x7fecc6f15768 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22fa1b0_0 .net/2u *"_s135", 31 0, L_0x7fecc6f15768;  1 drivers
v0x22fa290_0 .net *"_s137", 0 0, L_0x2315940;  1 drivers
v0x22fa350_0 .net *"_s139", 31 0, L_0x2315d90;  1 drivers
L_0x7fecc6f157b0 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fa430_0 .net *"_s142", 29 0, L_0x7fecc6f157b0;  1 drivers
L_0x7fecc6f157f8 .functor BUFT 1, C4<00000000000000000000000000000010>, C4<0>, C4<0>, C4<0>;
v0x22fa510_0 .net/2u *"_s143", 31 0, L_0x7fecc6f157f8;  1 drivers
v0x22fa5f0_0 .net *"_s145", 0 0, L_0x2315c00;  1 drivers
L_0x7fecc6f15840 .functor BUFT 1, C4<0000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22fa6b0_0 .net/2u *"_s147", 15 0, L_0x7fecc6f15840;  1 drivers
v0x22fa790_0 .net *"_s149", 15 0, L_0x2315fd0;  1 drivers
v0x22fa870_0 .net *"_s151", 15 0, L_0x23161d0;  1 drivers
v0x22fa950_0 .net *"_s153", 15 0, L_0x23162c0;  1 drivers
L_0x7fecc6f15888 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22faa30_0 .net/2u *"_s157", 1 0, L_0x7fecc6f15888;  1 drivers
v0x22fab10_0 .net *"_s159", 0 0, L_0x2316630;  1 drivers
v0x22fabd0_0 .net *"_s161", 31 0, L_0x2316360;  1 drivers
L_0x7fecc6f158d0 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22facb0_0 .net *"_s164", 29 0, L_0x7fecc6f158d0;  1 drivers
L_0x7fecc6f15918 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22fad90_0 .net/2u *"_s165", 31 0, L_0x7fecc6f15918;  1 drivers
v0x22fae70_0 .net *"_s167", 0 0, L_0x23142f0;  1 drivers
v0x22faf30_0 .net *"_s169", 31 0, L_0x2316720;  1 drivers
L_0x7fecc6f15960 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fb010_0 .net *"_s172", 29 0, L_0x7fecc6f15960;  1 drivers
L_0x7fecc6f159a8 .functor BUFT 1, C4<00000000000000000000000000000010>, C4<0>, C4<0>, C4<0>;
v0x22fb0f0_0 .net/2u *"_s173", 31 0, L_0x7fecc6f159a8;  1 drivers
v0x22fb1d0_0 .net *"_s175", 0 0, L_0x2316c90;  1 drivers
v0x22fb290_0 .net *"_s177", 15 0, L_0x2316b00;  1 drivers
L_0x7fecc6f159f0 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v0x22fb370_0 .net *"_s180", 3 0, L_0x7fecc6f159f0;  1 drivers
v0x22fb450_0 .net *"_s181", 15 0, L_0x2316bf0;  1 drivers
v0x22fb530_0 .net *"_s183", 15 0, L_0x2317020;  1 drivers
v0x22fb610_0 .net *"_s185", 15 0, L_0x23171f0;  1 drivers
L_0x7fecc6f15a38 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22fb6f0_0 .net/2u *"_s189", 1 0, L_0x7fecc6f15a38;  1 drivers
v0x22fb7d0_0 .net *"_s191", 0 0, L_0x23174a0;  1 drivers
v0x22fb890_0 .net *"_s193", 31 0, L_0x2317290;  1 drivers
L_0x7fecc6f15a80 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fb970_0 .net *"_s196", 29 0, L_0x7fecc6f15a80;  1 drivers
L_0x7fecc6f15ac8 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22f9de0_0 .net/2u *"_s197", 31 0, L_0x7fecc6f15ac8;  1 drivers
v0x22f9ec0_0 .net *"_s199", 0 0, L_0x2317760;  1 drivers
v0x22fbe20_0 .net *"_s201", 15 0, L_0x2317590;  1 drivers
v0x22fbec0_0 .net *"_s203", 15 0, L_0x2317680;  1 drivers
v0x22fbf60_0 .net *"_s23", 31 0, L_0x2312d40;  1 drivers
L_0x7fecc6f151c8 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fc020_0 .net *"_s26", 29 0, L_0x7fecc6f151c8;  1 drivers
L_0x7fecc6f15210 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fc100_0 .net/2u *"_s27", 31 0, L_0x7fecc6f15210;  1 drivers
v0x22fc1e0_0 .net *"_s29", 0 0, L_0x2312e30;  1 drivers
v0x22fc2a0_0 .net *"_s3", 14 0, L_0x23025a0;  1 drivers
v0x22fc380_0 .net *"_s31", 15 0, L_0x2312f70;  1 drivers
L_0x7fecc6f15258 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v0x22fc460_0 .net *"_s34", 3 0, L_0x7fecc6f15258;  1 drivers
v0x22fc540_0 .net *"_s35", 31 0, L_0x2313140;  1 drivers
L_0x7fecc6f152a0 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fc620_0 .net *"_s38", 29 0, L_0x7fecc6f152a0;  1 drivers
L_0x7fecc6f152e8 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22fc700_0 .net/2u *"_s39", 31 0, L_0x7fecc6f152e8;  1 drivers
v0x22fc7e0_0 .net *"_s41", 0 0, L_0x2313230;  1 drivers
v0x22fc8a0_0 .net *"_s43", 15 0, L_0x23133c0;  1 drivers
L_0x7fecc6f15330 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v0x22fc980_0 .net *"_s46", 3 0, L_0x7fecc6f15330;  1 drivers
v0x22fca60_0 .net *"_s47", 15 0, L_0x2313500;  1 drivers
v0x22fcb40_0 .net *"_s49", 15 0, L_0x2313690;  1 drivers
v0x22fcc20_0 .net *"_s53", 31 0, L_0x2313980;  1 drivers
L_0x7fecc6f15378 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fcd00_0 .net *"_s56", 30 0, L_0x7fecc6f15378;  1 drivers
L_0x7fecc6f153c0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fcde0_0 .net/2u *"_s57", 31 0, L_0x7fecc6f153c0;  1 drivers
v0x22fcec0_0 .net *"_s59", 0 0, L_0x2313a70;  1 drivers
v0x22fcf80_0 .net *"_s61", 15 0, L_0x2313c30;  1 drivers
L_0x7fecc6f15408 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22fd060_0 .net/2u *"_s67", 1 0, L_0x7fecc6f15408;  1 drivers
v0x22fd140_0 .net *"_s69", 0 0, L_0x23140c0;  1 drivers
L_0x7fecc6f15018 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x22fd200_0 .net/2s *"_s7", 0 0, L_0x7fecc6f15018;  1 drivers
v0x22fd2e0_0 .net *"_s71", 31 0, L_0x2314200;  1 drivers
L_0x7fecc6f15450 .functor BUFT 1, C4<000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x22fd3c0_0 .net *"_s74", 29 0, L_0x7fecc6f15450;  1 drivers
L_0x7fecc6f15498 .functor BUFT 1, C4<00000000000000000000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22fd4a0_0 .net/2u *"_s75", 31 0, L_0x7fecc6f15498;  1 drivers
v0x22fd580_0 .net *"_s77", 0 0, L_0x2314400;  1 drivers
v0x22fd640_0 .net *"_s79", 15 0, L_0x2314160;  1 drivers
v0x22fd720_0 .net *"_s81", 15 0, L_0x23145f0;  1 drivers
v0x22fd800_0 .net *"_s85", 1 0, L_0x2314890;  1 drivers
L_0x7fecc6f154e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x22fd8e0_0 .net *"_s88", 0 0, L_0x7fecc6f154e0;  1 drivers
L_0x7fecc6f15528 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22fd9c0_0 .net/2u *"_s89", 1 0, L_0x7fecc6f15528;  1 drivers
v0x22fdaa0_0 .net *"_s91", 0 0, L_0x2314a00;  1 drivers
v0x22fdb60_0 .net *"_s93", 15 0, L_0x2314af0;  1 drivers
L_0x7fecc6f15570 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22fdc40_0 .net/2u *"_s97", 1 0, L_0x7fecc6f15570;  1 drivers
v0x22fdd20_0 .net *"_s99", 0 0, L_0x2314df0;  1 drivers
o0x7fecc6f5e978 .functor BUFZ 3, C4<zzz>; HiZ drive
v0x22fdde0_0 .net "alu_op", 2 0, o0x7fecc6f5e978;  0 drivers
o0x7fecc6f5e948 .functor BUFZ 1, C4<z>; HiZ drive
v0x22fded0_0 .net "clk", 0 0, o0x7fecc6f5e948;  0 drivers
L_0x7fecc6f15060 .functor BUFT 1, C4<0000000000000001>, C4<0>, C4<0>, C4<0>;
v0x22fdf70_0 .net "imm", 15 0, L_0x7fecc6f15060;  1 drivers
v0x22fe030_0 .net "inA", 15 0, L_0x2315850;  1 drivers
v0x22fe110_0 .net "inB", 15 0, L_0x2314d00;  1 drivers
v0x22fe1f0_0 .net "inG", 15 0, L_0x2313f40;  1 drivers
v0x22fe2d0_0 .net "inLP", 15 0, L_0x2313d70;  1 drivers
v0x22fe3b0_0 .net "inQ", 15 0, L_0x2314750;  1 drivers
v0x22fe490_0 .net "inX", 15 0, L_0x2316e20;  1 drivers
v0x22fe570_0 .net "inY", 15 0, L_0x2316110;  1 drivers
v0x22fe650_0 .net "inZ", 15 0, L_0x2317ae0;  1 drivers
v0x22fe730_0 .net "mAddr", 11 0, L_0x2313820;  1 drivers
v0x22fe840_0 .net "memOut", 15 0, L_0x2312af0;  1 drivers
o0x7fecc6f5ef78 .functor BUFZ 1, C4<z>; HiZ drive
v0x22fe900_0 .net "mem_WE", 0 0, o0x7fecc6f5ef78;  0 drivers
v0x22fe9d0_0 .net "preU", 14 0, v0x22f5b40_0;  1 drivers
v0x22feaa0_0 .var "regA", 15 0;
v0x22feb90_0 .var "regB", 15 0;
v0x22fec30_0 .var "regG", 15 0;
v0x22fed00_0 .var "regLP", 15 0;
v0x22fedd0_0 .var "regQ", 15 0;
v0x22feea0_0 .var "regX", 15 0;
v0x22fef90_0 .var "regY", 15 0;
v0x22ff0a0_0 .var "regZ", 15 0;
L_0x2302660 .concat8 [ 1 15 0 0], L_0x7fecc6f15018, L_0x23025a0;
L_0x2312760 .part v0x22feb90_0, 1, 12;
L_0x2312800 .part v0x22ff0a0_0, 1, 12;
L_0x2312d40 .concat [ 2 30 0 0], o0x7fecc6f5f458, L_0x7fecc6f151c8;
L_0x2312e30 .cmp/eq 32, L_0x2312d40, L_0x7fecc6f15210;
L_0x2312f70 .concat [ 12 4 0 0], L_0x2312800, L_0x7fecc6f15258;
L_0x2313140 .concat [ 2 30 0 0], o0x7fecc6f5f458, L_0x7fecc6f152a0;
L_0x2313230 .cmp/eq 32, L_0x2313140, L_0x7fecc6f152e8;
L_0x23133c0 .concat [ 12 4 0 0], L_0x2312760, L_0x7fecc6f15330;
L_0x2313500 .functor MUXZ 16, v0x22feaa0_0, L_0x23133c0, L_0x2313230, C4<>;
L_0x2313690 .functor MUXZ 16, L_0x2313500, L_0x2312f70, L_0x2312e30, C4<>;
L_0x2313820 .part L_0x2313690, 0, 12;
L_0x2313980 .concat [ 1 31 0 0], o0x7fecc6f5f3f8, L_0x7fecc6f15378;
L_0x2313a70 .cmp/eq 32, L_0x2313980, L_0x7fecc6f153c0;
L_0x2313c30 .functor MUXZ 16, L_0x2302660, L_0x2312af0, L_0x2313a70, C4<>;
L_0x2313d70 .functor MUXZ 16, L_0x2313d70, L_0x2313c30, o0x7fecc6f5f428, C4<>;
L_0x2313f40 .functor MUXZ 16, L_0x2313f40, L_0x2312af0, o0x7fecc6f5f3c8, C4<>;
L_0x23140c0 .cmp/eq 2, o0x7fecc6f5f4b8, L_0x7fecc6f15408;
L_0x2314200 .concat [ 2 30 0 0], o0x7fecc6f5f4b8, L_0x7fecc6f15450;
L_0x2314400 .cmp/eq 32, L_0x2314200, L_0x7fecc6f15498;
L_0x2314160 .functor MUXZ 16, v0x22ff0a0_0, L_0x2302660, L_0x2314400, C4<>;
L_0x23145f0 .functor MUXZ 16, L_0x2314160, L_0x2312af0, L_0x23140c0, C4<>;
L_0x2314750 .functor MUXZ 16, L_0x2314750, L_0x23145f0, o0x7fecc6f5f4e8, C4<>;
L_0x2314890 .concat [ 1 1 0 0], o0x7fecc6f5f368, L_0x7fecc6f154e0;
L_0x2314a00 .cmp/eq 2, L_0x2314890, L_0x7fecc6f15528;
L_0x2314af0 .functor MUXZ 16, L_0x2302660, L_0x2312af0, L_0x2314a00, C4<>;
L_0x2314d00 .functor MUXZ 16, L_0x2314d00, L_0x2314af0, o0x7fecc6f5f3c8, C4<>;
L_0x2314df0 .cmp/eq 2, o0x7fecc6f5f2d8, L_0x7fecc6f15570;
L_0x2314b90 .concat [ 2 30 0 0], o0x7fecc6f5f2d8, L_0x7fecc6f155b8;
L_0x2315070 .cmp/eq 32, L_0x2314b90, L_0x7fecc6f15600;
L_0x2314ee0 .concat [ 2 30 0 0], o0x7fecc6f5f2d8, L_0x7fecc6f15648;
L_0x23152b0 .cmp/eq 32, L_0x2314ee0, L_0x7fecc6f15690;
L_0x23151b0 .functor MUXZ 16, v0x22fec30_0, L_0x2313910, L_0x23152b0, C4<>;
L_0x23155a0 .functor MUXZ 16, L_0x23151b0, L_0x2302660, L_0x2315070, C4<>;
L_0x2315760 .functor MUXZ 16, L_0x23155a0, L_0x2312af0, L_0x2314df0, C4<>;
L_0x2315850 .functor MUXZ 16, L_0x2315850, L_0x2315760, o0x7fecc6f5f308, C4<>;
L_0x2315a20 .cmp/eq 2, o0x7fecc6f5f5d8, L_0x7fecc6f156d8;
L_0x2315ac0 .concat [ 2 30 0 0], o0x7fecc6f5f5d8, L_0x7fecc6f15720;
L_0x2315940 .cmp/eq 32, L_0x2315ac0, L_0x7fecc6f15768;
L_0x2315d90 .concat [ 2 30 0 0], o0x7fecc6f5f5d8, L_0x7fecc6f157b0;
L_0x2315c00 .cmp/eq 32, L_0x2315d90, L_0x7fecc6f157f8;
L_0x2315fd0 .functor MUXZ 16, L_0x7fecc6f15060, L_0x7fecc6f15840, L_0x2315c00, C4<>;
L_0x23161d0 .functor MUXZ 16, L_0x2315fd0, v0x22feaa0_0, L_0x2315940, C4<>;
L_0x23162c0 .functor MUXZ 16, L_0x23161d0, L_0x2312af0, L_0x2315a20, C4<>;
L_0x2316110 .functor MUXZ 16, L_0x2316110, L_0x23162c0, o0x7fecc6f5f608, C4<>;
L_0x2316630 .cmp/eq 2, o0x7fecc6f5f578, L_0x7fecc6f15888;
L_0x2316360 .concat [ 2 30 0 0], o0x7fecc6f5f578, L_0x7fecc6f158d0;
L_0x23142f0 .cmp/eq 32, L_0x2316360, L_0x7fecc6f15918;
L_0x2316720 .concat [ 2 30 0 0], o0x7fecc6f5f578, L_0x7fecc6f15960;
L_0x2316c90 .cmp/eq 32, L_0x2316720, L_0x7fecc6f159a8;
L_0x2316b00 .concat [ 12 4 0 0], L_0x2312760, L_0x7fecc6f159f0;
L_0x2316bf0 .functor MUXZ 16, L_0x22ff440, L_0x2316b00, L_0x2316c90, C4<>;
L_0x2317020 .functor MUXZ 16, L_0x2316bf0, v0x22ff0a0_0, L_0x23142f0, C4<>;
L_0x23171f0 .functor MUXZ 16, L_0x2317020, L_0x2312af0, L_0x2316630, C4<>;
L_0x2316e20 .functor MUXZ 16, L_0x2316e20, L_0x23171f0, o0x7fecc6f5f5a8, C4<>;
L_0x23174a0 .cmp/eq 2, o0x7fecc6f5f638, L_0x7fecc6f15a38;
L_0x2317290 .concat [ 2 30 0 0], o0x7fecc6f5f638, L_0x7fecc6f15a80;
L_0x2317760 .cmp/eq 32, L_0x2317290, L_0x7fecc6f15ac8;
L_0x2317590 .functor MUXZ 16, v0x22feb90_0, L_0x2302660, L_0x2317760, C4<>;
L_0x2317680 .functor MUXZ 16, L_0x2317590, L_0x2312af0, L_0x23174a0, C4<>;
L_0x2317ae0 .functor MUXZ 16, L_0x2317ae0, L_0x2317680, o0x7fecc6f5f668, C4<>;
S_0x22b5cb0 .scope module, "alu" "ALU" 2 19, 3 1 0, S_0x22b6150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "res"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
    .port_info 4 /INPUT 1 "clk"
v0x22f46b0_0 .net "A", 15 0, v0x22feea0_0;  1 drivers
v0x22f47b0_0 .net "B", 15 0, v0x22fef90_0;  1 drivers
v0x22f4890_0 .var "C", 14 0;
v0x22f4950_0 .var "D", 14 0;
v0x22f4a30_0 .net *"_s0", 0 0, L_0x22d3d10;  1 drivers
v0x22f4b60_0 .net *"_s12", 0 0, L_0x22ffc60;  1 drivers
v0x22f4c40_0 .net *"_s16", 0 0, L_0x22fff00;  1 drivers
v0x22f4d20_0 .net *"_s20", 0 0, L_0x23001e0;  1 drivers
v0x22f4e00_0 .net *"_s24", 0 0, L_0x23005e0;  1 drivers
v0x22f4f70_0 .net *"_s28", 0 0, L_0x2300830;  1 drivers
v0x22f5050_0 .net *"_s32", 0 0, L_0x2300ae0;  1 drivers
v0x22f5130_0 .net *"_s36", 0 0, L_0x22ff970;  1 drivers
v0x22f5210_0 .net *"_s4", 0 0, L_0x22ff6b0;  1 drivers
v0x22f52f0_0 .net *"_s40", 0 0, L_0x2300d60;  1 drivers
v0x22f53d0_0 .net *"_s44", 0 0, L_0x2301010;  1 drivers
v0x22f54b0_0 .net *"_s48", 0 0, L_0x23012a0;  1 drivers
v0x22f5590_0 .net *"_s52", 0 0, L_0x2301540;  1 drivers
v0x22f5740_0 .net *"_s56", 0 0, L_0x2302300;  1 drivers
v0x22f57e0_0 .net *"_s8", 0 0, L_0x22ffa00;  1 drivers
v0x22f58c0_0 .net "clk", 0 0, o0x7fecc6f5e948;  alias, 0 drivers
v0x22f5980_0 .net "command", 2 0, o0x7fecc6f5e978;  alias, 0 drivers
v0x22f5a60_0 .var "product", 29 0;
v0x22f5b40_0 .var "res", 14 0;
v0x22f5c20_0 .var "result", 14 0;
v0x22f5d00_0 .net "resultAND", 14 0, L_0x2301820;  1 drivers
E_0x22a5900 .event posedge, v0x22f58c0_0;
L_0x22ff4d0 .part v0x22feea0_0, 1, 1;
L_0x22ff5c0 .part v0x22fef90_0, 1, 1;
L_0x22ff750 .part v0x22feea0_0, 2, 1;
L_0x22ff8d0 .part v0x22fef90_0, 2, 1;
L_0x22ffad0 .part v0x22feea0_0, 3, 1;
L_0x22ffb70 .part v0x22fef90_0, 3, 1;
L_0x22ffcd0 .part v0x22feea0_0, 4, 1;
L_0x22ffdc0 .part v0x22fef90_0, 4, 1;
L_0x22fffa0 .part v0x22feea0_0, 5, 1;
L_0x2300090 .part v0x22fef90_0, 5, 1;
L_0x2300280 .part v0x22feea0_0, 6, 1;
L_0x2300430 .part v0x22fef90_0, 6, 1;
L_0x2300650 .part v0x22feea0_0, 7, 1;
L_0x2300740 .part v0x22fef90_0, 7, 1;
L_0x2300900 .part v0x22feea0_0, 8, 1;
L_0x23009f0 .part v0x22fef90_0, 8, 1;
L_0x2300b80 .part v0x22feea0_0, 9, 1;
L_0x2300c70 .part v0x22fef90_0, 9, 1;
L_0x2300e30 .part v0x22feea0_0, 10, 1;
L_0x2300f20 .part v0x22fef90_0, 10, 1;
L_0x23010c0 .part v0x22feea0_0, 11, 1;
L_0x23011b0 .part v0x22fef90_0, 11, 1;
L_0x2301360 .part v0x22feea0_0, 12, 1;
L_0x2301450 .part v0x22fef90_0, 12, 1;
L_0x2301640 .part v0x22feea0_0, 13, 1;
L_0x2301730 .part v0x22fef90_0, 13, 1;
L_0x2301900 .part v0x22feea0_0, 14, 1;
L_0x2300320 .part v0x22fef90_0, 14, 1;
LS_0x2301820_0_0 .concat8 [ 1 1 1 1], L_0x22d3d10, L_0x22ff6b0, L_0x22ffa00, L_0x22ffc60;
LS_0x2301820_0_4 .concat8 [ 1 1 1 1], L_0x22fff00, L_0x23001e0, L_0x23005e0, L_0x2300830;
LS_0x2301820_0_8 .concat8 [ 1 1 1 1], L_0x2300ae0, L_0x22ff970, L_0x2300d60, L_0x2301010;
LS_0x2301820_0_12 .concat8 [ 1 1 1 0], L_0x23012a0, L_0x2301540, L_0x2302300;
L_0x2301820 .concat8 [ 4 4 4 3], LS_0x2301820_0_0, LS_0x2301820_0_4, LS_0x2301820_0_8, LS_0x2301820_0_12;
L_0x23023c0 .part v0x22feea0_0, 15, 1;
L_0x23024b0 .part v0x22fef90_0, 15, 1;
S_0x22c5070 .scope generate, "genblock[0]" "genblock[0]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x2285240 .param/l "i" 0 3 34, +C4<00>;
L_0x22d3d10 .functor AND 1, L_0x22ff4d0, L_0x22ff5c0, C4<1>, C4<1>;
v0x22bb100_0 .net *"_s0", 0 0, L_0x22ff4d0;  1 drivers
v0x22f0550_0 .net *"_s1", 0 0, L_0x22ff5c0;  1 drivers
S_0x22f0630 .scope generate, "genblock[1]" "genblock[1]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f0840 .param/l "i" 0 3 34, +C4<01>;
L_0x22ff6b0 .functor AND 1, L_0x22ff750, L_0x22ff8d0, C4<1>, C4<1>;
v0x22f0900_0 .net *"_s0", 0 0, L_0x22ff750;  1 drivers
v0x22f09e0_0 .net *"_s1", 0 0, L_0x22ff8d0;  1 drivers
S_0x22f0ac0 .scope generate, "genblock[2]" "genblock[2]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f0d00 .param/l "i" 0 3 34, +C4<010>;
L_0x22ffa00 .functor AND 1, L_0x22ffad0, L_0x22ffb70, C4<1>, C4<1>;
v0x22f0da0_0 .net *"_s0", 0 0, L_0x22ffad0;  1 drivers
v0x22f0e80_0 .net *"_s1", 0 0, L_0x22ffb70;  1 drivers
S_0x22f0f60 .scope generate, "genblock[3]" "genblock[3]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f1170 .param/l "i" 0 3 34, +C4<011>;
L_0x22ffc60 .functor AND 1, L_0x22ffcd0, L_0x22ffdc0, C4<1>, C4<1>;
v0x22f1230_0 .net *"_s0", 0 0, L_0x22ffcd0;  1 drivers
v0x22f1310_0 .net *"_s1", 0 0, L_0x22ffdc0;  1 drivers
S_0x22f13f0 .scope generate, "genblock[4]" "genblock[4]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f1650 .param/l "i" 0 3 34, +C4<0100>;
L_0x22fff00 .functor AND 1, L_0x22fffa0, L_0x2300090, C4<1>, C4<1>;
v0x22f1710_0 .net *"_s0", 0 0, L_0x22fffa0;  1 drivers
v0x22f17f0_0 .net *"_s1", 0 0, L_0x2300090;  1 drivers
S_0x22f18d0 .scope generate, "genblock[5]" "genblock[5]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f1ae0 .param/l "i" 0 3 34, +C4<0101>;
L_0x23001e0 .functor AND 1, L_0x2300280, L_0x2300430, C4<1>, C4<1>;
v0x22f1ba0_0 .net *"_s0", 0 0, L_0x2300280;  1 drivers
v0x22f1c80_0 .net *"_s1", 0 0, L_0x2300430;  1 drivers
S_0x22f1d60 .scope generate, "genblock[6]" "genblock[6]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f1f70 .param/l "i" 0 3 34, +C4<0110>;
L_0x23005e0 .functor AND 1, L_0x2300650, L_0x2300740, C4<1>, C4<1>;
v0x22f2030_0 .net *"_s0", 0 0, L_0x2300650;  1 drivers
v0x22f2110_0 .net *"_s1", 0 0, L_0x2300740;  1 drivers
S_0x22f21f0 .scope generate, "genblock[7]" "genblock[7]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f2400 .param/l "i" 0 3 34, +C4<0111>;
L_0x2300830 .functor AND 1, L_0x2300900, L_0x23009f0, C4<1>, C4<1>;
v0x22f24c0_0 .net *"_s0", 0 0, L_0x2300900;  1 drivers
v0x22f25a0_0 .net *"_s1", 0 0, L_0x23009f0;  1 drivers
S_0x22f2680 .scope generate, "genblock[8]" "genblock[8]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f1600 .param/l "i" 0 3 34, +C4<01000>;
L_0x2300ae0 .functor AND 1, L_0x2300b80, L_0x2300c70, C4<1>, C4<1>;
v0x22f2990_0 .net *"_s0", 0 0, L_0x2300b80;  1 drivers
v0x22f2a70_0 .net *"_s1", 0 0, L_0x2300c70;  1 drivers
S_0x22f2b50 .scope generate, "genblock[9]" "genblock[9]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f2d60 .param/l "i" 0 3 34, +C4<01001>;
L_0x22ff970 .functor AND 1, L_0x2300e30, L_0x2300f20, C4<1>, C4<1>;
v0x22f2e20_0 .net *"_s0", 0 0, L_0x2300e30;  1 drivers
v0x22f2f00_0 .net *"_s1", 0 0, L_0x2300f20;  1 drivers
S_0x22f2fe0 .scope generate, "genblock[10]" "genblock[10]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f31f0 .param/l "i" 0 3 34, +C4<01010>;
L_0x2300d60 .functor AND 1, L_0x23010c0, L_0x23011b0, C4<1>, C4<1>;
v0x22f32b0_0 .net *"_s0", 0 0, L_0x23010c0;  1 drivers
v0x22f3390_0 .net *"_s1", 0 0, L_0x23011b0;  1 drivers
S_0x22f3470 .scope generate, "genblock[11]" "genblock[11]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f3680 .param/l "i" 0 3 34, +C4<01011>;
L_0x2301010 .functor AND 1, L_0x2301360, L_0x2301450, C4<1>, C4<1>;
v0x22f3740_0 .net *"_s0", 0 0, L_0x2301360;  1 drivers
v0x22f3820_0 .net *"_s1", 0 0, L_0x2301450;  1 drivers
S_0x22f3900 .scope generate, "genblock[12]" "genblock[12]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f3b10 .param/l "i" 0 3 34, +C4<01100>;
L_0x23012a0 .functor AND 1, L_0x2301640, L_0x2301730, C4<1>, C4<1>;
v0x22f3bd0_0 .net *"_s0", 0 0, L_0x2301640;  1 drivers
v0x22f3cb0_0 .net *"_s1", 0 0, L_0x2301730;  1 drivers
S_0x22f3d90 .scope generate, "genblock[13]" "genblock[13]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f3fa0 .param/l "i" 0 3 34, +C4<01101>;
L_0x2301540 .functor AND 1, L_0x2301900, L_0x2300320, C4<1>, C4<1>;
v0x22f4060_0 .net *"_s0", 0 0, L_0x2301900;  1 drivers
v0x22f4140_0 .net *"_s1", 0 0, L_0x2300320;  1 drivers
S_0x22f4220 .scope generate, "genblock[14]" "genblock[14]" 3 34, 3 34 0, S_0x22b5cb0;
 .timescale 0 0;
P_0x22f4430 .param/l "i" 0 3 34, +C4<01110>;
L_0x2302300 .functor AND 1, L_0x23023c0, L_0x23024b0, C4<1>, C4<1>;
v0x22f44f0_0 .net *"_s0", 0 0, L_0x23023c0;  1 drivers
v0x22f45d0_0 .net *"_s1", 0 0, L_0x23024b0;  1 drivers
S_0x22f5e80 .scope module, "mem" "memory" 2 26, 4 4 0, S_0x22b6150;
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
L_0x23128a0 .functor BUFZ 16, v0x22f6800_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
L_0x2312af0 .functor BUFZ 16, L_0x2312910, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
v0x22f6bd0_0 .net *"_s2", 15 0, L_0x2312910;  1 drivers
v0x22f6cd0_0 .net *"_s4", 17 0, L_0x23129b0;  1 drivers
L_0x7fecc6f150a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x22f6db0_0 .net *"_s7", 1 0, L_0x7fecc6f150a8;  1 drivers
v0x22f6e70_0 .net "clk", 0 0, o0x7fecc6f5e948;  alias, 0 drivers
v0x22f6f60_0 .net "dataIn", 15 0, v0x22feaa0_0;  1 drivers
L_0x7fecc6f150f0 .functor BUFT 1, C4<000>, C4<0>, C4<0>, C4<0>;
v0x22f7090_0 .net "eBank", 2 0, L_0x7fecc6f150f0;  1 drivers
L_0x7fecc6f15138 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x22f7150_0 .net "fBank", 4 0, L_0x7fecc6f15138;  1 drivers
v0x22f71f0_0 .net "finalAddress", 15 0, L_0x23128a0;  1 drivers
v0x22f72b0_0 .net "finalAddress1", 15 0, v0x22f6800_0;  1 drivers
v0x22f7430_0 .net "memAddress", 11 0, L_0x2313820;  alias, 1 drivers
v0x22f7500 .array "memory", 0 65535, 15 0;
v0x22f75a0_0 .net "regA", 15 0, v0x22feaa0_0;  alias, 1 drivers
v0x22f7690_0 .net "regB", 15 0, v0x22feb90_0;  1 drivers
v0x22f7750_0 .net "regG", 15 0, v0x22fec30_0;  1 drivers
v0x22f7830_0 .net "regLP", 15 0, v0x22fed00_0;  1 drivers
v0x22f7910_0 .net "regQ", 15 0, v0x22fedd0_0;  1 drivers
v0x22f79f0_0 .net "regX", 15 0, v0x22feea0_0;  alias, 1 drivers
v0x22f7ba0_0 .net "regY", 15 0, v0x22fef90_0;  alias, 1 drivers
v0x22f7c40_0 .net "regZ", 15 0, v0x22ff0a0_0;  1 drivers
v0x22f7d00_0 .net "result", 15 0, L_0x2312af0;  alias, 1 drivers
L_0x7fecc6f15180 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x22f7de0_0 .net "superBank", 0 0, L_0x7fecc6f15180;  1 drivers
v0x22f7eb0_0 .net "writeEnable", 0 0, o0x7fecc6f5ef78;  alias, 0 drivers
L_0x2312910 .array/port v0x22f7500, L_0x23129b0;
L_0x23129b0 .concat [ 16 2 0 0], L_0x23128a0, L_0x7fecc6f150a8;
S_0x22f6250 .scope module, "memLogic" "memLogic" 4 24, 5 3 0, S_0x22f5e80;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 3 "eBank"
    .port_info 2 /INPUT 5 "fBank"
    .port_info 3 /INPUT 1 "superBank"
    .port_info 4 /INPUT 12 "memAddress"
    .port_info 5 /OUTPUT 16 "finalAddress"
v0x22f6560_0 .net "clk", 0 0, o0x7fecc6f5e948;  alias, 0 drivers
v0x22f6650_0 .net "eBank", 2 0, L_0x7fecc6f150f0;  alias, 1 drivers
v0x22f6710_0 .net "fBank", 4 0, L_0x7fecc6f15138;  alias, 1 drivers
v0x22f6800_0 .var "finalAddress", 15 0;
v0x22f68e0_0 .net "memAddress", 11 0, L_0x2313820;  alias, 1 drivers
v0x22f6a10_0 .net "superBank", 0 0, L_0x7fecc6f15180;  alias, 1 drivers
E_0x22f6500 .event edge, v0x22f68e0_0, v0x22f6650_0, v0x22f6710_0, v0x22f6a10_0;
    .scope S_0x22b5cb0;
T_0 ;
    %wait E_0x22a5900;
    %vpi_call 3 18 "$display", "A = %b", v0x22f4890_0 {0 0 0};
    %load/vec4 v0x22f46b0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x22f46b0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x22f4890_0, 0, 15;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x22f46b0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.2, 8;
    %load/vec4 v0x22f46b0_0;
    %parti/s 15, 1, 2;
    %inv;
    %store/vec4 v0x22f4890_0, 0, 15;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x22f46b0_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x22f4890_0, 0, 15;
T_0.3 ;
T_0.1 ;
    %load/vec4 v0x22f47b0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.4, 8;
    %load/vec4 v0x22f47b0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x22f4950_0, 0, 15;
    %jmp T_0.5;
T_0.4 ;
    %load/vec4 v0x22f47b0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.6, 8;
    %load/vec4 v0x22f47b0_0;
    %parti/s 15, 1, 2;
    %inv;
    %store/vec4 v0x22f4950_0, 0, 15;
    %jmp T_0.7;
T_0.6 ;
    %load/vec4 v0x22f47b0_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x22f4950_0, 0, 15;
T_0.7 ;
T_0.5 ;
    %load/vec4 v0x22f4890_0;
    %pad/u 30;
    %load/vec4 v0x22f4950_0;
    %pad/u 30;
    %mul;
    %store/vec4 v0x22f5a60_0, 0, 30;
    %jmp T_0;
    .thread T_0;
    .scope S_0x22b5cb0;
T_1 ;
    %wait E_0x22a5900;
    %load/vec4 v0x22f5980_0;
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
    %load/vec4 v0x22f4890_0;
    %load/vec4 v0x22f4950_0;
    %add;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0x22f4890_0;
    %load/vec4 v0x22f4950_0;
    %sub;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0x22f5d00_0;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0x22f5a60_0;
    %parti/s 15, 0, 2;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0x22f5a60_0;
    %parti/s 15, 15, 5;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0x22f4890_0;
    %load/vec4 v0x22f4950_0;
    %mod;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0x22f4890_0;
    %load/vec4 v0x22f4950_0;
    %div;
    %store/vec4 v0x22f5c20_0, 0, 15;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0x22f5c20_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 2, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x22f46b0_0;
    %parti/s 1, 15, 5;
    %load/vec4 v0x22f47b0_0;
    %parti/s 1, 15, 5;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.8, 8;
    %load/vec4 v0x22f5c20_0;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %inv;
    %store/vec4 v0x22f5b40_0, 0, 15;
    %jmp T_1.9;
T_1.8 ;
    %load/vec4 v0x22f5980_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f46b0_0;
    %parti/s 1, 15, 5;
    %load/vec4 v0x22f47b0_0;
    %parti/s 1, 15, 5;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.10, 8;
    %load/vec4 v0x22f5c20_0;
    %inv;
    %store/vec4 v0x22f5b40_0, 0, 15;
    %jmp T_1.11;
T_1.10 ;
    %load/vec4 v0x22f5c20_0;
    %store/vec4 v0x22f5b40_0, 0, 15;
T_1.11 ;
T_1.9 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x22f6250;
T_2 ;
    %wait E_0x22f6500;
    %load/vec4 v0x22f68e0_0;
    %parti/s 2, 10, 5;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_2.0, 4;
    %load/vec4 v0x22f68e0_0;
    %parti/s 2, 8, 5;
    %cmpi/e 3, 0, 2;
    %jmp/0xz  T_2.2, 4;
    %pushi/vec4 0, 0, 5;
    %load/vec4 v0x22f6650_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x22f68e0_0;
    %parti/s 8, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x22f6800_0, 0;
    %jmp T_2.3;
T_2.2 ;
    %pushi/vec4 0, 0, 6;
    %load/vec4 v0x22f68e0_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x22f6800_0, 0;
T_2.3 ;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v0x22f68e0_0;
    %parti/s 2, 10, 5;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_2.4, 4;
    %load/vec4 v0x22f6710_0;
    %parti/s 2, 3, 3;
    %cmpi/e 3, 0, 2;
    %jmp/0xz  T_2.6, 4;
    %load/vec4 v0x22f6a10_0;
    %cmpi/e 1, 0, 1;
    %jmp/0xz  T_2.8, 4;
    %pushi/vec4 4, 0, 3;
    %load/vec4 v0x22f6710_0;
    %parti/s 3, 0, 2;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x22f68e0_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x22f6800_0, 0;
    %jmp T_2.9;
T_2.8 ;
    %pushi/vec4 0, 0, 1;
    %load/vec4 v0x22f6710_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x22f68e0_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x22f6800_0, 0;
T_2.9 ;
    %jmp T_2.7;
T_2.6 ;
    %pushi/vec4 0, 0, 1;
    %load/vec4 v0x22f6710_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x22f68e0_0;
    %parti/s 10, 0, 2;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x22f6800_0, 0;
T_2.7 ;
    %jmp T_2.5;
T_2.4 ;
    %pushi/vec4 0, 0, 4;
    %load/vec4 v0x22f68e0_0;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x22f6800_0, 0;
T_2.5 ;
T_2.1 ;
    %jmp T_2;
    .thread T_2, $push;
    .scope S_0x22f5e80;
T_3 ;
    %wait E_0x22a5900;
    %load/vec4 v0x22f7eb0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %load/vec4 v0x22f6f60_0;
    %load/vec4 v0x22f71f0_0;
    %pad/u 18;
    %ix/vec4 3;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
T_3.0 ;
    %load/vec4 v0x22f7c40_0;
    %ix/load 3, 0, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f79f0_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f7ba0_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f75a0_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f7690_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f7910_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f7750_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %load/vec4 v0x22f7830_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %pushi/vec4 1, 0, 16;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x22f7500, 0, 4;
    %jmp T_3;
    .thread T_3;
    .scope S_0x22b6150;
T_4 ;
    %wait E_0x22a5900;
    %load/vec4 v0x22fe2d0_0;
    %store/vec4 v0x22fed00_0, 0, 16;
    %load/vec4 v0x22fe1f0_0;
    %store/vec4 v0x22fec30_0, 0, 16;
    %load/vec4 v0x22fe3b0_0;
    %store/vec4 v0x22fedd0_0, 0, 16;
    %load/vec4 v0x22fe110_0;
    %store/vec4 v0x22feb90_0, 0, 16;
    %load/vec4 v0x22fe030_0;
    %store/vec4 v0x22feaa0_0, 0, 16;
    %load/vec4 v0x22fe570_0;
    %store/vec4 v0x22fef90_0, 0, 16;
    %load/vec4 v0x22fe490_0;
    %store/vec4 v0x22feea0_0, 0, 16;
    %load/vec4 v0x22fe650_0;
    %store/vec4 v0x22ff0a0_0, 0, 16;
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
