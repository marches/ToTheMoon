#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xf52b80 .scope module, "ALU" "ALU" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 16 "result"
    .port_info 1 /OUTPUT 1 "zero"
    .port_info 2 /INPUT 16 "A"
    .port_info 3 /INPUT 16 "B"
    .port_info 4 /INPUT 3 "command"
o0x7ff05d957558 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0xf7f5a0_0 .net "A", 15 0, o0x7ff05d957558;  0 drivers
o0x7ff05d957588 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0xf7f6a0_0 .net "B", 15 0, o0x7ff05d957588;  0 drivers
v0xf7f780_0 .var "C", 14 0;
v0xf7f840_0 .var "D", 14 0;
v0xf7f920_0 .net *"_s0", 0 0, L_0xf80c90;  1 drivers
v0xf7fa50_0 .net *"_s12", 0 0, L_0xf81520;  1 drivers
v0xf7fb30_0 .net *"_s16", 0 0, L_0xf81840;  1 drivers
v0xf7fc10_0 .net *"_s20", 0 0, L_0xf81b20;  1 drivers
v0xf7fcf0_0 .net *"_s24", 0 0, L_0xf81dc0;  1 drivers
v0xf7fe60_0 .net *"_s28", 0 0, L_0xf81d50;  1 drivers
v0xf7ff40_0 .net *"_s32", 0 0, L_0xf824a0;  1 drivers
v0xf80020_0 .net *"_s36", 0 0, L_0xf817b0;  1 drivers
v0xf80100_0 .net *"_s4", 0 0, L_0xf80f10;  1 drivers
v0xf801e0_0 .net *"_s40", 0 0, L_0xf826f0;  1 drivers
v0xf802c0_0 .net *"_s44", 0 0, L_0xf829d0;  1 drivers
v0xf803a0_0 .net *"_s48", 0 0, L_0xf82c60;  1 drivers
v0xf80480_0 .net *"_s52", 0 0, L_0xf82f00;  1 drivers
o0x7ff05d957888 .functor BUFZ 2, C4<zz>; HiZ drive
; Elide local net with no drivers, v0xf80630_0 name=_s66
v0xf806d0_0 .net *"_s8", 0 0, L_0xf81290;  1 drivers
o0x7ff05d9578e8 .functor BUFZ 3, C4<zzz>; HiZ drive
v0xf807b0_0 .net "command", 2 0, o0x7ff05d9578e8;  0 drivers
v0xf80890_0 .var "product", 29 0;
v0xf80970_0 .var "result", 15 0;
v0xf80a50_0 .net "resultAND", 15 0, L_0xf831e0;  1 drivers
v0xf80b30_0 .var "zero", 0 0;
E_0xf57100 .event edge, v0xf807b0_0, v0xf7f6a0_0, v0xf7f5a0_0;
L_0xf80d80 .part v0xf7f780_0, 0, 1;
L_0xf80e20 .part v0xf7f840_0, 0, 1;
L_0xf81010 .part v0xf7f780_0, 1, 1;
L_0xf81150 .part v0xf7f840_0, 1, 1;
L_0xf81300 .part v0xf7f780_0, 2, 1;
L_0xf813f0 .part v0xf7f840_0, 2, 1;
L_0xf81590 .part v0xf7f780_0, 3, 1;
L_0xf81710 .part v0xf7f840_0, 3, 1;
L_0xf818e0 .part v0xf7f780_0, 4, 1;
L_0xf819d0 .part v0xf7f840_0, 4, 1;
L_0xf81bc0 .part v0xf7f780_0, 5, 1;
L_0xf81c60 .part v0xf7f840_0, 5, 1;
L_0xf81e60 .part v0xf7f780_0, 6, 1;
L_0xf81f50 .part v0xf7f840_0, 6, 1;
L_0xf820f0 .part v0xf7f780_0, 7, 1;
L_0xf822f0 .part v0xf7f840_0, 7, 1;
L_0xf82510 .part v0xf7f780_0, 8, 1;
L_0xf82600 .part v0xf7f840_0, 8, 1;
L_0xf827f0 .part v0xf7f780_0, 9, 1;
L_0xf828e0 .part v0xf7f840_0, 9, 1;
L_0xf82a80 .part v0xf7f780_0, 10, 1;
L_0xf82b70 .part v0xf7f840_0, 10, 1;
L_0xf82d20 .part v0xf7f780_0, 11, 1;
L_0xf82e10 .part v0xf7f840_0, 11, 1;
L_0xf83000 .part v0xf7f780_0, 12, 1;
L_0xf830f0 .part v0xf7f840_0, 12, 1;
L_0xf832c0 .part v0xf7f780_0, 13, 1;
L_0xf833b0 .part v0xf7f840_0, 13, 1;
LS_0xf831e0_0_0 .concat [ 1 1 1 1], L_0xf80c90, L_0xf80f10, L_0xf81290, L_0xf81520;
LS_0xf831e0_0_4 .concat [ 1 1 1 1], L_0xf81840, L_0xf81b20, L_0xf81dc0, L_0xf81d50;
LS_0xf831e0_0_8 .concat [ 1 1 1 1], L_0xf824a0, L_0xf817b0, L_0xf826f0, L_0xf829d0;
LS_0xf831e0_0_12 .concat [ 1 1 2 0], L_0xf82c60, L_0xf82f00, o0x7ff05d957888;
L_0xf831e0 .concat [ 4 4 4 4], LS_0xf831e0_0_0, LS_0xf831e0_0_4, LS_0xf831e0_0_8, LS_0xf831e0_0_12;
S_0xf54c60 .scope generate, "genblock[0]" "genblock[0]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf4f470 .param/l "i" 0 2 44, +C4<00>;
L_0xf80c90 .functor AND 1, L_0xf80d80, L_0xf80e20, C4<1>, C4<1>;
v0xf47890_0 .net *"_s0", 0 0, L_0xf80d80;  1 drivers
v0xf7b8d0_0 .net *"_s1", 0 0, L_0xf80e20;  1 drivers
S_0xf7b9b0 .scope generate, "genblock[1]" "genblock[1]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7bbc0 .param/l "i" 0 2 44, +C4<01>;
L_0xf80f10 .functor AND 1, L_0xf81010, L_0xf81150, C4<1>, C4<1>;
v0xf7bc80_0 .net *"_s0", 0 0, L_0xf81010;  1 drivers
v0xf7bd60_0 .net *"_s1", 0 0, L_0xf81150;  1 drivers
S_0xf7be40 .scope generate, "genblock[2]" "genblock[2]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7c080 .param/l "i" 0 2 44, +C4<010>;
L_0xf81290 .functor AND 1, L_0xf81300, L_0xf813f0, C4<1>, C4<1>;
v0xf7c120_0 .net *"_s0", 0 0, L_0xf81300;  1 drivers
v0xf7c200_0 .net *"_s1", 0 0, L_0xf813f0;  1 drivers
S_0xf7c2e0 .scope generate, "genblock[3]" "genblock[3]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7c4f0 .param/l "i" 0 2 44, +C4<011>;
L_0xf81520 .functor AND 1, L_0xf81590, L_0xf81710, C4<1>, C4<1>;
v0xf7c5b0_0 .net *"_s0", 0 0, L_0xf81590;  1 drivers
v0xf7c690_0 .net *"_s1", 0 0, L_0xf81710;  1 drivers
S_0xf7c770 .scope generate, "genblock[4]" "genblock[4]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7c9d0 .param/l "i" 0 2 44, +C4<0100>;
L_0xf81840 .functor AND 1, L_0xf818e0, L_0xf819d0, C4<1>, C4<1>;
v0xf7ca90_0 .net *"_s0", 0 0, L_0xf818e0;  1 drivers
v0xf7cb70_0 .net *"_s1", 0 0, L_0xf819d0;  1 drivers
S_0xf7cc50 .scope generate, "genblock[5]" "genblock[5]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7ce60 .param/l "i" 0 2 44, +C4<0101>;
L_0xf81b20 .functor AND 1, L_0xf81bc0, L_0xf81c60, C4<1>, C4<1>;
v0xf7cf20_0 .net *"_s0", 0 0, L_0xf81bc0;  1 drivers
v0xf7d000_0 .net *"_s1", 0 0, L_0xf81c60;  1 drivers
S_0xf7d0e0 .scope generate, "genblock[6]" "genblock[6]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7d2f0 .param/l "i" 0 2 44, +C4<0110>;
L_0xf81dc0 .functor AND 1, L_0xf81e60, L_0xf81f50, C4<1>, C4<1>;
v0xf7d3b0_0 .net *"_s0", 0 0, L_0xf81e60;  1 drivers
v0xf7d490_0 .net *"_s1", 0 0, L_0xf81f50;  1 drivers
S_0xf7d570 .scope generate, "genblock[7]" "genblock[7]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7d780 .param/l "i" 0 2 44, +C4<0111>;
L_0xf81d50 .functor AND 1, L_0xf820f0, L_0xf822f0, C4<1>, C4<1>;
v0xf7d840_0 .net *"_s0", 0 0, L_0xf820f0;  1 drivers
v0xf7d920_0 .net *"_s1", 0 0, L_0xf822f0;  1 drivers
S_0xf7da00 .scope generate, "genblock[8]" "genblock[8]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7c980 .param/l "i" 0 2 44, +C4<01000>;
L_0xf824a0 .functor AND 1, L_0xf82510, L_0xf82600, C4<1>, C4<1>;
v0xf7dd10_0 .net *"_s0", 0 0, L_0xf82510;  1 drivers
v0xf7ddf0_0 .net *"_s1", 0 0, L_0xf82600;  1 drivers
S_0xf7ded0 .scope generate, "genblock[9]" "genblock[9]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7e0e0 .param/l "i" 0 2 44, +C4<01001>;
L_0xf817b0 .functor AND 1, L_0xf827f0, L_0xf828e0, C4<1>, C4<1>;
v0xf7e1a0_0 .net *"_s0", 0 0, L_0xf827f0;  1 drivers
v0xf7e280_0 .net *"_s1", 0 0, L_0xf828e0;  1 drivers
S_0xf7e360 .scope generate, "genblock[10]" "genblock[10]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7e570 .param/l "i" 0 2 44, +C4<01010>;
L_0xf826f0 .functor AND 1, L_0xf82a80, L_0xf82b70, C4<1>, C4<1>;
v0xf7e630_0 .net *"_s0", 0 0, L_0xf82a80;  1 drivers
v0xf7e710_0 .net *"_s1", 0 0, L_0xf82b70;  1 drivers
S_0xf7e7f0 .scope generate, "genblock[11]" "genblock[11]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7ea00 .param/l "i" 0 2 44, +C4<01011>;
L_0xf829d0 .functor AND 1, L_0xf82d20, L_0xf82e10, C4<1>, C4<1>;
v0xf7eac0_0 .net *"_s0", 0 0, L_0xf82d20;  1 drivers
v0xf7eba0_0 .net *"_s1", 0 0, L_0xf82e10;  1 drivers
S_0xf7ec80 .scope generate, "genblock[12]" "genblock[12]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7ee90 .param/l "i" 0 2 44, +C4<01100>;
L_0xf82c60 .functor AND 1, L_0xf83000, L_0xf830f0, C4<1>, C4<1>;
v0xf7ef50_0 .net *"_s0", 0 0, L_0xf83000;  1 drivers
v0xf7f030_0 .net *"_s1", 0 0, L_0xf830f0;  1 drivers
S_0xf7f110 .scope generate, "genblock[13]" "genblock[13]" 2 44, 2 44 0, S_0xf52b80;
 .timescale 0 0;
P_0xf7f320 .param/l "i" 0 2 44, +C4<01101>;
L_0xf82f00 .functor AND 1, L_0xf832c0, L_0xf833b0, C4<1>, C4<1>;
v0xf7f3e0_0 .net *"_s0", 0 0, L_0xf832c0;  1 drivers
v0xf7f4c0_0 .net *"_s1", 0 0, L_0xf833b0;  1 drivers
    .scope S_0xf52b80;
T_0 ;
    %wait E_0xf57100;
    %load/vec4 v0xf807b0_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/u;
    %jmp/1 T_0.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/u;
    %jmp/1 T_0.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/u;
    %jmp/1 T_0.2, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 3;
    %cmp/u;
    %jmp/1 T_0.3, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 3;
    %cmp/u;
    %jmp/1 T_0.4, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 3;
    %cmp/u;
    %jmp/1 T_0.5, 6;
    %dup/vec4;
    %pushi/vec4 6, 0, 3;
    %cmp/u;
    %jmp/1 T_0.6, 6;
    %jmp T_0.7;
T_0.0 ;
    %load/vec4 v0xf7f5a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %load/vec4 v0xf7f6a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %add;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.1 ;
    %load/vec4 v0xf7f5a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %load/vec4 v0xf7f6a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %sub;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.2 ;
    %load/vec4 v0xf80a50_0;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.3 ;
    %load/vec4 v0xf80890_0;
    %parti/s 15, 15, 5;
    %pad/u 16;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.4 ;
    %load/vec4 v0xf80890_0;
    %parti/s 15, 0, 2;
    %pad/u 16;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.5 ;
    %load/vec4 v0xf7f5a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %load/vec4 v0xf7f6a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %div;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.6 ;
    %load/vec4 v0xf7f5a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %load/vec4 v0xf7f6a0_0;
    %parti/s 15, 1, 2;
    %pad/u 16;
    %mod;
    %assign/vec4 v0xf80970_0, 0;
    %jmp T_0.7;
T_0.7 ;
    %pop/vec4 1;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0xf52b80;
T_1 ;
    %wait E_0xf57100;
    %load/vec4 v0xf80970_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xf80b30_0, 0;
T_1.0 ;
    %load/vec4 v0xf7f5a0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0xf7f5a0_0;
    %nor/r;
    %pad/u 15;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %assign/vec4 v0xf7f780_0, 0;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xf7f5a0_0;
    %pad/u 15;
    %assign/vec4 v0xf7f780_0, 0;
T_1.3 ;
    %load/vec4 v0xf7f6a0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0xf7f6a0_0;
    %nor/r;
    %pad/u 15;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %assign/vec4 v0xf7f840_0, 0;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0xf7f6a0_0;
    %pad/u 15;
    %assign/vec4 v0xf7f840_0, 0;
T_1.5 ;
    %load/vec4 v0xf7f780_0;
    %pad/u 30;
    %load/vec4 v0xf7f840_0;
    %pad/u 30;
    %mul;
    %assign/vec4 v0xf80890_0, 0;
    %jmp T_1;
    .thread T_1, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "behavioral_alu.v";
