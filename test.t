#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x9ce810 .scope module, "ALU" "ALU" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "result"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
o0x7f3022f84558 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x9f8aa0_0 .net "A", 15 0, o0x7f3022f84558;  0 drivers
o0x7f3022f84588 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0x9f8ba0_0 .net "B", 15 0, o0x7f3022f84588;  0 drivers
v0x9f8c80_0 .var "C", 14 0;
v0x9f8d40_0 .var "D", 14 0;
v0x9f8e20_0 .net *"_s0", 0 0, L_0x9fa0b0;  1 drivers
v0x9f8f50_0 .net *"_s12", 0 0, L_0x9fa940;  1 drivers
v0x9f9030_0 .net *"_s16", 0 0, L_0x9fac60;  1 drivers
v0x9f9110_0 .net *"_s20", 0 0, L_0x9faf40;  1 drivers
v0x9f91f0_0 .net *"_s24", 0 0, L_0x9fb1e0;  1 drivers
v0x9f9360_0 .net *"_s28", 0 0, L_0x9fb170;  1 drivers
v0x9f9440_0 .net *"_s32", 0 0, L_0x9fb8c0;  1 drivers
v0x9f9520_0 .net *"_s36", 0 0, L_0x9fabd0;  1 drivers
v0x9f9600_0 .net *"_s4", 0 0, L_0x9fa330;  1 drivers
v0x9f96e0_0 .net *"_s40", 0 0, L_0x9fbb10;  1 drivers
v0x9f97c0_0 .net *"_s44", 0 0, L_0x9fbdf0;  1 drivers
v0x9f98a0_0 .net *"_s48", 0 0, L_0x9fc080;  1 drivers
v0x9f9980_0 .net *"_s52", 0 0, L_0x9fc320;  1 drivers
o0x7f3022f84888 .functor BUFZ 1, C4<z>; HiZ drive
; Elide local net with no drivers, v0x9f9b30_0 name=_s66
v0x9f9bd0_0 .net *"_s8", 0 0, L_0x9fa6b0;  1 drivers
o0x7f3022f848e8 .functor BUFZ 3, C4<zzz>; HiZ drive
v0x9f9cb0_0 .net "command", 2 0, o0x7f3022f848e8;  0 drivers
v0x9f9d90_0 .var "product", 29 0;
v0x9f9e70_0 .var "result", 14 0;
v0x9f9f50_0 .net "resultAND", 14 0, L_0x9fc600;  1 drivers
E_0x99b2e0 .event edge, v0x9f8ba0_0, v0x9f8aa0_0, v0x9f9cb0_0;
L_0x9fa1a0 .part v0x9f8c80_0, 0, 1;
L_0x9fa240 .part v0x9f8d40_0, 0, 1;
L_0x9fa430 .part v0x9f8c80_0, 1, 1;
L_0x9fa570 .part v0x9f8d40_0, 1, 1;
L_0x9fa720 .part v0x9f8c80_0, 2, 1;
L_0x9fa810 .part v0x9f8d40_0, 2, 1;
L_0x9fa9b0 .part v0x9f8c80_0, 3, 1;
L_0x9fab30 .part v0x9f8d40_0, 3, 1;
L_0x9fad00 .part v0x9f8c80_0, 4, 1;
L_0x9fadf0 .part v0x9f8d40_0, 4, 1;
L_0x9fafe0 .part v0x9f8c80_0, 5, 1;
L_0x9fb080 .part v0x9f8d40_0, 5, 1;
L_0x9fb280 .part v0x9f8c80_0, 6, 1;
L_0x9fb370 .part v0x9f8d40_0, 6, 1;
L_0x9fb510 .part v0x9f8c80_0, 7, 1;
L_0x9fb710 .part v0x9f8d40_0, 7, 1;
L_0x9fb930 .part v0x9f8c80_0, 8, 1;
L_0x9fba20 .part v0x9f8d40_0, 8, 1;
L_0x9fbc10 .part v0x9f8c80_0, 9, 1;
L_0x9fbd00 .part v0x9f8d40_0, 9, 1;
L_0x9fbea0 .part v0x9f8c80_0, 10, 1;
L_0x9fbf90 .part v0x9f8d40_0, 10, 1;
L_0x9fc140 .part v0x9f8c80_0, 11, 1;
L_0x9fc230 .part v0x9f8d40_0, 11, 1;
L_0x9fc420 .part v0x9f8c80_0, 12, 1;
L_0x9fc510 .part v0x9f8d40_0, 12, 1;
L_0x9fc6e0 .part v0x9f8c80_0, 13, 1;
L_0x9fc7d0 .part v0x9f8d40_0, 13, 1;
LS_0x9fc600_0_0 .concat [ 1 1 1 1], L_0x9fa0b0, L_0x9fa330, L_0x9fa6b0, L_0x9fa940;
LS_0x9fc600_0_4 .concat [ 1 1 1 1], L_0x9fac60, L_0x9faf40, L_0x9fb1e0, L_0x9fb170;
LS_0x9fc600_0_8 .concat [ 1 1 1 1], L_0x9fb8c0, L_0x9fabd0, L_0x9fbb10, L_0x9fbdf0;
LS_0x9fc600_0_12 .concat [ 1 1 1 0], L_0x9fc080, L_0x9fc320, o0x7f3022f84888;
L_0x9fc600 .concat [ 4 4 4 3], LS_0x9fc600_0_0, LS_0x9fc600_0_4, LS_0x9fc600_0_8, LS_0x9fc600_0_12;
S_0x9ce990 .scope generate, "genblock[0]" "genblock[0]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9c9460 .param/l "i" 0 2 30, +C4<00>;
L_0x9fa0b0 .functor AND 1, L_0x9fa1a0, L_0x9fa240, C4<1>, C4<1>;
v0x9c1880_0 .net *"_s0", 0 0, L_0x9fa1a0;  1 drivers
v0x9f4dd0_0 .net *"_s1", 0 0, L_0x9fa240;  1 drivers
S_0x9f4eb0 .scope generate, "genblock[1]" "genblock[1]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f50c0 .param/l "i" 0 2 30, +C4<01>;
L_0x9fa330 .functor AND 1, L_0x9fa430, L_0x9fa570, C4<1>, C4<1>;
v0x9f5180_0 .net *"_s0", 0 0, L_0x9fa430;  1 drivers
v0x9f5260_0 .net *"_s1", 0 0, L_0x9fa570;  1 drivers
S_0x9f5340 .scope generate, "genblock[2]" "genblock[2]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f5580 .param/l "i" 0 2 30, +C4<010>;
L_0x9fa6b0 .functor AND 1, L_0x9fa720, L_0x9fa810, C4<1>, C4<1>;
v0x9f5620_0 .net *"_s0", 0 0, L_0x9fa720;  1 drivers
v0x9f5700_0 .net *"_s1", 0 0, L_0x9fa810;  1 drivers
S_0x9f57e0 .scope generate, "genblock[3]" "genblock[3]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f59f0 .param/l "i" 0 2 30, +C4<011>;
L_0x9fa940 .functor AND 1, L_0x9fa9b0, L_0x9fab30, C4<1>, C4<1>;
v0x9f5ab0_0 .net *"_s0", 0 0, L_0x9fa9b0;  1 drivers
v0x9f5b90_0 .net *"_s1", 0 0, L_0x9fab30;  1 drivers
S_0x9f5c70 .scope generate, "genblock[4]" "genblock[4]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f5ed0 .param/l "i" 0 2 30, +C4<0100>;
L_0x9fac60 .functor AND 1, L_0x9fad00, L_0x9fadf0, C4<1>, C4<1>;
v0x9f5f90_0 .net *"_s0", 0 0, L_0x9fad00;  1 drivers
v0x9f6070_0 .net *"_s1", 0 0, L_0x9fadf0;  1 drivers
S_0x9f6150 .scope generate, "genblock[5]" "genblock[5]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f6360 .param/l "i" 0 2 30, +C4<0101>;
L_0x9faf40 .functor AND 1, L_0x9fafe0, L_0x9fb080, C4<1>, C4<1>;
v0x9f6420_0 .net *"_s0", 0 0, L_0x9fafe0;  1 drivers
v0x9f6500_0 .net *"_s1", 0 0, L_0x9fb080;  1 drivers
S_0x9f65e0 .scope generate, "genblock[6]" "genblock[6]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f67f0 .param/l "i" 0 2 30, +C4<0110>;
L_0x9fb1e0 .functor AND 1, L_0x9fb280, L_0x9fb370, C4<1>, C4<1>;
v0x9f68b0_0 .net *"_s0", 0 0, L_0x9fb280;  1 drivers
v0x9f6990_0 .net *"_s1", 0 0, L_0x9fb370;  1 drivers
S_0x9f6a70 .scope generate, "genblock[7]" "genblock[7]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f6c80 .param/l "i" 0 2 30, +C4<0111>;
L_0x9fb170 .functor AND 1, L_0x9fb510, L_0x9fb710, C4<1>, C4<1>;
v0x9f6d40_0 .net *"_s0", 0 0, L_0x9fb510;  1 drivers
v0x9f6e20_0 .net *"_s1", 0 0, L_0x9fb710;  1 drivers
S_0x9f6f00 .scope generate, "genblock[8]" "genblock[8]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f5e80 .param/l "i" 0 2 30, +C4<01000>;
L_0x9fb8c0 .functor AND 1, L_0x9fb930, L_0x9fba20, C4<1>, C4<1>;
v0x9f7210_0 .net *"_s0", 0 0, L_0x9fb930;  1 drivers
v0x9f72f0_0 .net *"_s1", 0 0, L_0x9fba20;  1 drivers
S_0x9f73d0 .scope generate, "genblock[9]" "genblock[9]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f75e0 .param/l "i" 0 2 30, +C4<01001>;
L_0x9fabd0 .functor AND 1, L_0x9fbc10, L_0x9fbd00, C4<1>, C4<1>;
v0x9f76a0_0 .net *"_s0", 0 0, L_0x9fbc10;  1 drivers
v0x9f7780_0 .net *"_s1", 0 0, L_0x9fbd00;  1 drivers
S_0x9f7860 .scope generate, "genblock[10]" "genblock[10]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f7a70 .param/l "i" 0 2 30, +C4<01010>;
L_0x9fbb10 .functor AND 1, L_0x9fbea0, L_0x9fbf90, C4<1>, C4<1>;
v0x9f7b30_0 .net *"_s0", 0 0, L_0x9fbea0;  1 drivers
v0x9f7c10_0 .net *"_s1", 0 0, L_0x9fbf90;  1 drivers
S_0x9f7cf0 .scope generate, "genblock[11]" "genblock[11]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f7f00 .param/l "i" 0 2 30, +C4<01011>;
L_0x9fbdf0 .functor AND 1, L_0x9fc140, L_0x9fc230, C4<1>, C4<1>;
v0x9f7fc0_0 .net *"_s0", 0 0, L_0x9fc140;  1 drivers
v0x9f80a0_0 .net *"_s1", 0 0, L_0x9fc230;  1 drivers
S_0x9f8180 .scope generate, "genblock[12]" "genblock[12]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f8390 .param/l "i" 0 2 30, +C4<01100>;
L_0x9fc080 .functor AND 1, L_0x9fc420, L_0x9fc510, C4<1>, C4<1>;
v0x9f8450_0 .net *"_s0", 0 0, L_0x9fc420;  1 drivers
v0x9f8530_0 .net *"_s1", 0 0, L_0x9fc510;  1 drivers
S_0x9f8610 .scope generate, "genblock[13]" "genblock[13]" 2 30, 2 30 0, S_0x9ce810;
 .timescale 0 0;
P_0x9f8820 .param/l "i" 0 2 30, +C4<01101>;
L_0x9fc320 .functor AND 1, L_0x9fc6e0, L_0x9fc7d0, C4<1>, C4<1>;
v0x9f88e0_0 .net *"_s0", 0 0, L_0x9fc6e0;  1 drivers
v0x9f89c0_0 .net *"_s1", 0 0, L_0x9fc7d0;  1 drivers
    .scope S_0x9ce810;
T_0 ;
    %wait E_0x99b2e0;
    %load/vec4 v0x9f8aa0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0x9f8aa0_0;
    %parti/s 15, 1, 2;
    %nor/r;
    %pad/u 15;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %assign/vec4 v0x9f8c80_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x9f8aa0_0;
    %parti/s 15, 1, 2;
    %assign/vec4 v0x9f8c80_0, 0;
T_0.1 ;
    %load/vec4 v0x9f8ba0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.2, 4;
    %load/vec4 v0x9f8ba0_0;
    %parti/s 15, 1, 2;
    %nor/r;
    %pad/u 15;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %assign/vec4 v0x9f8d40_0, 0;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x9f8ba0_0;
    %parti/s 15, 1, 2;
    %assign/vec4 v0x9f8d40_0, 0;
T_0.3 ;
    %load/vec4 v0x9f8c80_0;
    %pad/u 30;
    %load/vec4 v0x9f8d40_0;
    %pad/u 30;
    %mul;
    %assign/vec4 v0x9f9d90_0, 0;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0x9ce810;
T_1 ;
    %wait E_0x99b2e0;
    %load/vec4 v0x9f9cb0_0;
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
    %load/vec4 v0x9f8c80_0;
    %load/vec4 v0x9f8d40_0;
    %add;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0x9f8c80_0;
    %load/vec4 v0x9f8d40_0;
    %sub;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0x9f9f50_0;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0x9f9d90_0;
    %parti/s 15, 15, 5;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0x9f9d90_0;
    %parti/s 15, 0, 2;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0x9f8c80_0;
    %load/vec4 v0x9f8d40_0;
    %div;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0x9f8c80_0;
    %load/vec4 v0x9f8d40_0;
    %mod;
    %assign/vec4 v0x9f9e70_0, 0;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0x9f9e70_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.8, 4;
    %load/vec4 v0x9f9e70_0;
    %subi 1, 0, 15;
    %store/vec4 v0x9f9e70_0, 0, 15;
T_1.8 ;
    %jmp T_1;
    .thread T_1, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "behavioral_alu.v";
