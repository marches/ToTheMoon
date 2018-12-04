#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xcc3090 .scope module, "behavioral_alu_tester" "behavioral_alu_tester" 2 16;
 .timescale 0 0;
v0xcf32a0_0 .var "A", 15 0;
v0xcf3380_0 .var "B", 15 0;
v0xcf3450_0 .var "Op", 2 0;
v0xcf3550_0 .net "Res", 14 0, v0xcf2f60_0;  1 drivers
v0xcf3620_0 .var "clk", 0 0;
v0xcf36c0_0 .var "dut_passed", 0 0;
v0xcf3760_0 .var "testRes", 14 0;
S_0xcc3210 .scope module, "dut" "ALU" 2 26, 3 1 0, S_0xcc3090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "res"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
    .port_info 4 /INPUT 1 "clk"
v0xcf1ad0_0 .net "A", 15 0, v0xcf32a0_0;  1 drivers
v0xcf1bd0_0 .net "B", 15 0, v0xcf3380_0;  1 drivers
v0xcf1cb0_0 .var "C", 14 0;
v0xcf1d70_0 .var "D", 14 0;
v0xcf1e50_0 .net *"_s0", 0 0, L_0xcf3800;  1 drivers
v0xcf1f80_0 .net *"_s12", 0 0, L_0xcf4180;  1 drivers
v0xcf2060_0 .net *"_s16", 0 0, L_0xcf43d0;  1 drivers
v0xcf2140_0 .net *"_s20", 0 0, L_0xcf46b0;  1 drivers
v0xcf2220_0 .net *"_s24", 0 0, L_0xcf4950;  1 drivers
v0xcf2390_0 .net *"_s28", 0 0, L_0xcf48e0;  1 drivers
v0xcf2470_0 .net *"_s32", 0 0, L_0xcf4f80;  1 drivers
v0xcf2550_0 .net *"_s36", 0 0, L_0xcf40b0;  1 drivers
v0xcf2630_0 .net *"_s4", 0 0, L_0xcf3ba0;  1 drivers
v0xcf2710_0 .net *"_s40", 0 0, L_0xcf5230;  1 drivers
v0xcf27f0_0 .net *"_s44", 0 0, L_0xcf54e0;  1 drivers
v0xcf28d0_0 .net *"_s48", 0 0, L_0xcf5770;  1 drivers
v0xcf29b0_0 .net *"_s52", 0 0, L_0xcf5a10;  1 drivers
v0xcf2b60_0 .net *"_s56", 0 0, L_0xcf6590;  1 drivers
v0xcf2c00_0 .net *"_s8", 0 0, L_0xcf3df0;  1 drivers
v0xcf2ce0_0 .net "clk", 0 0, v0xcf3620_0;  1 drivers
v0xcf2da0_0 .net "command", 2 0, v0xcf3450_0;  1 drivers
v0xcf2e80_0 .var "product", 29 0;
v0xcf2f60_0 .var "res", 14 0;
v0xcf3040_0 .var "result", 14 0;
v0xcf3120_0 .net "resultAND", 14 0, L_0xcf5cf0;  1 drivers
E_0xcc3830 .event posedge, v0xcf2ce0_0;
E_0xcc3b10 .event negedge, v0xcf2ce0_0;
L_0xcf3920 .part v0xcf32a0_0, 1, 1;
L_0xcf3a60 .part v0xcf3380_0, 1, 1;
L_0xcf3c10 .part v0xcf32a0_0, 2, 1;
L_0xcf3d00 .part v0xcf3380_0, 2, 1;
L_0xcf3e90 .part v0xcf32a0_0, 3, 1;
L_0xcf4010 .part v0xcf3380_0, 3, 1;
L_0xcf41f0 .part v0xcf32a0_0, 4, 1;
L_0xcf4290 .part v0xcf3380_0, 4, 1;
L_0xcf4470 .part v0xcf32a0_0, 5, 1;
L_0xcf4560 .part v0xcf3380_0, 5, 1;
L_0xcf4750 .part v0xcf32a0_0, 6, 1;
L_0xcf47f0 .part v0xcf3380_0, 6, 1;
L_0xcf49f0 .part v0xcf32a0_0, 7, 1;
L_0xcf4bf0 .part v0xcf3380_0, 7, 1;
L_0xcf4da0 .part v0xcf32a0_0, 8, 1;
L_0xcf4e90 .part v0xcf3380_0, 8, 1;
L_0xcf5050 .part v0xcf32a0_0, 9, 1;
L_0xcf5140 .part v0xcf3380_0, 9, 1;
L_0xcf5300 .part v0xcf32a0_0, 10, 1;
L_0xcf53f0 .part v0xcf3380_0, 10, 1;
L_0xcf5590 .part v0xcf32a0_0, 11, 1;
L_0xcf5680 .part v0xcf3380_0, 11, 1;
L_0xcf5830 .part v0xcf32a0_0, 12, 1;
L_0xcf5920 .part v0xcf3380_0, 12, 1;
L_0xcf5b10 .part v0xcf32a0_0, 13, 1;
L_0xcf5c00 .part v0xcf3380_0, 13, 1;
L_0xcf5dd0 .part v0xcf32a0_0, 14, 1;
L_0xcf5ec0 .part v0xcf3380_0, 14, 1;
LS_0xcf5cf0_0_0 .concat8 [ 1 1 1 1], L_0xcf3800, L_0xcf3ba0, L_0xcf3df0, L_0xcf4180;
LS_0xcf5cf0_0_4 .concat8 [ 1 1 1 1], L_0xcf43d0, L_0xcf46b0, L_0xcf4950, L_0xcf48e0;
LS_0xcf5cf0_0_8 .concat8 [ 1 1 1 1], L_0xcf4f80, L_0xcf40b0, L_0xcf5230, L_0xcf54e0;
LS_0xcf5cf0_0_12 .concat8 [ 1 1 1 0], L_0xcf5770, L_0xcf5a10, L_0xcf6590;
L_0xcf5cf0 .concat8 [ 4 4 4 3], LS_0xcf5cf0_0_0, LS_0xcf5cf0_0_4, LS_0xcf5cf0_0_8, LS_0xcf5cf0_0_12;
L_0xcf6650 .part v0xcf32a0_0, 15, 1;
L_0xcf5fb0 .part v0xcf3380_0, 15, 1;
S_0xc85cf0 .scope generate, "genblock[0]" "genblock[0]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xc85f00 .param/l "i" 0 3 32, +C4<00>;
L_0xcf3800 .functor AND 1, L_0xcf3920, L_0xcf3a60, C4<1>, C4<1>;
v0xc85fe0_0 .net *"_s0", 0 0, L_0xcf3920;  1 drivers
v0xced970_0 .net *"_s1", 0 0, L_0xcf3a60;  1 drivers
S_0xceda50 .scope generate, "genblock[1]" "genblock[1]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcedc60 .param/l "i" 0 3 32, +C4<01>;
L_0xcf3ba0 .functor AND 1, L_0xcf3c10, L_0xcf3d00, C4<1>, C4<1>;
v0xcedd20_0 .net *"_s0", 0 0, L_0xcf3c10;  1 drivers
v0xcede00_0 .net *"_s1", 0 0, L_0xcf3d00;  1 drivers
S_0xcedee0 .scope generate, "genblock[2]" "genblock[2]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcee120 .param/l "i" 0 3 32, +C4<010>;
L_0xcf3df0 .functor AND 1, L_0xcf3e90, L_0xcf4010, C4<1>, C4<1>;
v0xcee1c0_0 .net *"_s0", 0 0, L_0xcf3e90;  1 drivers
v0xcee2a0_0 .net *"_s1", 0 0, L_0xcf4010;  1 drivers
S_0xcee380 .scope generate, "genblock[3]" "genblock[3]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcee590 .param/l "i" 0 3 32, +C4<011>;
L_0xcf4180 .functor AND 1, L_0xcf41f0, L_0xcf4290, C4<1>, C4<1>;
v0xcee650_0 .net *"_s0", 0 0, L_0xcf41f0;  1 drivers
v0xcee730_0 .net *"_s1", 0 0, L_0xcf4290;  1 drivers
S_0xcee810 .scope generate, "genblock[4]" "genblock[4]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xceea70 .param/l "i" 0 3 32, +C4<0100>;
L_0xcf43d0 .functor AND 1, L_0xcf4470, L_0xcf4560, C4<1>, C4<1>;
v0xceeb30_0 .net *"_s0", 0 0, L_0xcf4470;  1 drivers
v0xceec10_0 .net *"_s1", 0 0, L_0xcf4560;  1 drivers
S_0xceecf0 .scope generate, "genblock[5]" "genblock[5]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xceef00 .param/l "i" 0 3 32, +C4<0101>;
L_0xcf46b0 .functor AND 1, L_0xcf4750, L_0xcf47f0, C4<1>, C4<1>;
v0xceefc0_0 .net *"_s0", 0 0, L_0xcf4750;  1 drivers
v0xcef0a0_0 .net *"_s1", 0 0, L_0xcf47f0;  1 drivers
S_0xcef180 .scope generate, "genblock[6]" "genblock[6]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcef390 .param/l "i" 0 3 32, +C4<0110>;
L_0xcf4950 .functor AND 1, L_0xcf49f0, L_0xcf4bf0, C4<1>, C4<1>;
v0xcef450_0 .net *"_s0", 0 0, L_0xcf49f0;  1 drivers
v0xcef530_0 .net *"_s1", 0 0, L_0xcf4bf0;  1 drivers
S_0xcef610 .scope generate, "genblock[7]" "genblock[7]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcef820 .param/l "i" 0 3 32, +C4<0111>;
L_0xcf48e0 .functor AND 1, L_0xcf4da0, L_0xcf4e90, C4<1>, C4<1>;
v0xcef8e0_0 .net *"_s0", 0 0, L_0xcf4da0;  1 drivers
v0xcef9c0_0 .net *"_s1", 0 0, L_0xcf4e90;  1 drivers
S_0xcefaa0 .scope generate, "genblock[8]" "genblock[8]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xceea20 .param/l "i" 0 3 32, +C4<01000>;
L_0xcf4f80 .functor AND 1, L_0xcf5050, L_0xcf5140, C4<1>, C4<1>;
v0xcefdb0_0 .net *"_s0", 0 0, L_0xcf5050;  1 drivers
v0xcefe90_0 .net *"_s1", 0 0, L_0xcf5140;  1 drivers
S_0xceff70 .scope generate, "genblock[9]" "genblock[9]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcf0180 .param/l "i" 0 3 32, +C4<01001>;
L_0xcf40b0 .functor AND 1, L_0xcf5300, L_0xcf53f0, C4<1>, C4<1>;
v0xcf0240_0 .net *"_s0", 0 0, L_0xcf5300;  1 drivers
v0xcf0320_0 .net *"_s1", 0 0, L_0xcf53f0;  1 drivers
S_0xcf0400 .scope generate, "genblock[10]" "genblock[10]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcf0610 .param/l "i" 0 3 32, +C4<01010>;
L_0xcf5230 .functor AND 1, L_0xcf5590, L_0xcf5680, C4<1>, C4<1>;
v0xcf06d0_0 .net *"_s0", 0 0, L_0xcf5590;  1 drivers
v0xcf07b0_0 .net *"_s1", 0 0, L_0xcf5680;  1 drivers
S_0xcf0890 .scope generate, "genblock[11]" "genblock[11]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcf0aa0 .param/l "i" 0 3 32, +C4<01011>;
L_0xcf54e0 .functor AND 1, L_0xcf5830, L_0xcf5920, C4<1>, C4<1>;
v0xcf0b60_0 .net *"_s0", 0 0, L_0xcf5830;  1 drivers
v0xcf0c40_0 .net *"_s1", 0 0, L_0xcf5920;  1 drivers
S_0xcf0d20 .scope generate, "genblock[12]" "genblock[12]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcf0f30 .param/l "i" 0 3 32, +C4<01100>;
L_0xcf5770 .functor AND 1, L_0xcf5b10, L_0xcf5c00, C4<1>, C4<1>;
v0xcf0ff0_0 .net *"_s0", 0 0, L_0xcf5b10;  1 drivers
v0xcf10d0_0 .net *"_s1", 0 0, L_0xcf5c00;  1 drivers
S_0xcf11b0 .scope generate, "genblock[13]" "genblock[13]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcf13c0 .param/l "i" 0 3 32, +C4<01101>;
L_0xcf5a10 .functor AND 1, L_0xcf5dd0, L_0xcf5ec0, C4<1>, C4<1>;
v0xcf1480_0 .net *"_s0", 0 0, L_0xcf5dd0;  1 drivers
v0xcf1560_0 .net *"_s1", 0 0, L_0xcf5ec0;  1 drivers
S_0xcf1640 .scope generate, "genblock[14]" "genblock[14]" 3 32, 3 32 0, S_0xcc3210;
 .timescale 0 0;
P_0xcf1850 .param/l "i" 0 3 32, +C4<01110>;
L_0xcf6590 .functor AND 1, L_0xcf6650, L_0xcf5fb0, C4<1>, C4<1>;
v0xcf1910_0 .net *"_s0", 0 0, L_0xcf6650;  1 drivers
v0xcf19f0_0 .net *"_s1", 0 0, L_0xcf5fb0;  1 drivers
    .scope S_0xcc3210;
T_0 ;
    %wait E_0xcc3b10;
    %load/vec4 v0xcf1ad0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0xcf1ad0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0xcf1cb0_0, 0, 15;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0xcf1ad0_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0xcf1cb0_0, 0, 15;
T_0.1 ;
    %load/vec4 v0xcf1ad0_0;
    %parti/s 15, 1, 2;
    %inv;
    %load/vec4 v0xcf1ad0_0;
    %parti/s 15, 1, 2;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %load/vec4 v0xcf1ad0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %vpi_call 3 20 "$display", "A: %b;   NOT A: %b;   NEGATIVE A: %b; Twos Compliment: %b", v0xcf1ad0_0, S<2,vec4,u15>, S<1,vec4,u15>, S<0,vec4,u15> {3 0 0};
    %load/vec4 v0xcf1bd0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.2, 4;
    %load/vec4 v0xcf1bd0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0xcf1d70_0, 0, 15;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0xcf1bd0_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0xcf1d70_0, 0, 15;
T_0.3 ;
    %load/vec4 v0xcf1cb0_0;
    %pad/u 30;
    %load/vec4 v0xcf1d70_0;
    %pad/u 30;
    %mul;
    %store/vec4 v0xcf2e80_0, 0, 30;
    %jmp T_0;
    .thread T_0;
    .scope S_0xcc3210;
T_1 ;
    %wait E_0xcc3830;
    %load/vec4 v0xcf2da0_0;
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
    %load/vec4 v0xcf1cb0_0;
    %load/vec4 v0xcf1d70_0;
    %add;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0xcf1cb0_0;
    %load/vec4 v0xcf1d70_0;
    %sub;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0xcf3120_0;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0xcf2e80_0;
    %parti/s 15, 15, 5;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0xcf2e80_0;
    %parti/s 15, 0, 2;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0xcf1cb0_0;
    %load/vec4 v0xcf1d70_0;
    %div;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0xcf1cb0_0;
    %load/vec4 v0xcf1d70_0;
    %mod;
    %store/vec4 v0xcf3040_0, 0, 15;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0xcf3040_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xcf2da0_0;
    %pad/u 32;
    %pushi/vec4 2, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.8, 8;
    %load/vec4 v0xcf3040_0;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %inv;
    %store/vec4 v0xcf2f60_0, 0, 15;
    %jmp T_1.9;
T_1.8 ;
    %load/vec4 v0xcf3040_0;
    %store/vec4 v0xcf2f60_0, 0, 15;
T_1.9 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0xcc3090;
T_2 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xcf36c0_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0xcc3090;
T_3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xcf3620_0, 0, 1;
    %end;
    .thread T_3;
    .scope S_0xcc3090;
T_4 ;
    %delay 50, 0;
    %load/vec4 v0xcf3620_0;
    %nor/r;
    %store/vec4 v0xcf3620_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_0xcc3090;
T_5 ;
    %vpi_call 2 32 "$dumpfile", "alu.vcd" {0 0 0};
    %vpi_call 2 33 "$dumpvars" {0 0 0};
    %vpi_call 2 35 "$display", "Alu Tests Begin" {0 0 0};
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0xcf32a0_0, 0, 16;
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0xcf3380_0, 0, 16;
    %delay 100, 0;
    %pushi/vec4 32766, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcf32a0_0, 4, 15;
    %pushi/vec4 32764, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcf3380_0, 4, 15;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcf32a0_0, 4, 1;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcf3380_0, 4, 1;
    %load/vec4 v0xcf32a0_0;
    %pad/u 32;
    %cmpi/u 0, 0, 32;
    %jmp/0xz  T_5.0, 5;
    %load/vec4 v0xcf32a0_0;
    %subi 1, 0, 16;
    %store/vec4 v0xcf32a0_0, 0, 16;
T_5.0 ;
    %load/vec4 v0xcf3380_0;
    %pad/u 32;
    %cmpi/u 0, 0, 32;
    %jmp/0xz  T_5.2, 5;
    %load/vec4 v0xcf3380_0;
    %subi 1, 0, 16;
    %store/vec4 v0xcf3380_0, 0, 16;
T_5.2 ;
    %pushi/vec4 4, 0, 3;
    %store/vec4 v0xcf3450_0, 0, 3;
    %load/vec4 v0xcf32a0_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0xcf3380_0;
    %parti/s 15, 1, 2;
    %add;
    %store/vec4 v0xcf3760_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0xcf3550_0;
    %load/vec4 v0xcf3760_0;
    %cmp/ne;
    %jmp/0xz  T_5.4, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xcf36c0_0, 0, 1;
    %vpi_call 2 56 "$display", "Output should be %d, but is instead %d", v0xcf3760_0, v0xcf3550_0 {0 0 0};
T_5.4 ;
    %pushi/vec4 307, 0, 16;
    %store/vec4 v0xcf32a0_0, 0, 16;
    %pushi/vec4 65228, 0, 16;
    %store/vec4 v0xcf3380_0, 0, 16;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xcf3450_0, 0, 3;
    %pushi/vec4 32767, 0, 15;
    %store/vec4 v0xcf3760_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0xcf3550_0;
    %load/vec4 v0xcf3760_0;
    %cmp/ne;
    %jmp/0xz  T_5.6, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xcf36c0_0, 0, 1;
    %vpi_call 2 67 "$display", "Output should be %d, but is instead %d", v0xcf3760_0, v0xcf3550_0 {0 0 0};
T_5.6 ;
    %load/vec4 v0xcf36c0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_5.8, 4;
    %vpi_call 2 72 "$display", "Behavioral ALU Tests Passed" {0 0 0};
T_5.8 ;
    %vpi_call 2 75 "$finish" {0 0 0};
    %end;
    .thread T_5;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "behavioral_alu.t.v";
    "./behavioral_alu.v";
