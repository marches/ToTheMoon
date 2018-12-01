#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xe34b60 .scope module, "ALU" "ALU" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "result"
    .port_info 1 /OUTPUT 1 "zero"
    .port_info 2 /INPUT 16 "A"
    .port_info 3 /INPUT 16 "B"
    .port_info 4 /INPUT 3 "command"
o0x7ff5647e6558 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0xe61cd0_0 .net "A", 15 0, o0x7ff5647e6558;  0 drivers
o0x7ff5647e6588 .functor BUFZ 16, C4<zzzzzzzzzzzzzzzz>; HiZ drive
v0xe61dd0_0 .net "B", 15 0, o0x7ff5647e6588;  0 drivers
v0xe61eb0_0 .var "C", 14 0;
v0xe61f70_0 .var "D", 14 0;
v0xe62050_0 .net *"_s0", 0 0, L_0xe633c0;  1 drivers
v0xe62180_0 .net *"_s12", 0 0, L_0xe63c50;  1 drivers
v0xe62260_0 .net *"_s16", 0 0, L_0xe63f70;  1 drivers
v0xe62340_0 .net *"_s20", 0 0, L_0xe64250;  1 drivers
v0xe62420_0 .net *"_s24", 0 0, L_0xe644f0;  1 drivers
v0xe62590_0 .net *"_s28", 0 0, L_0xe64480;  1 drivers
v0xe62670_0 .net *"_s32", 0 0, L_0xe64bd0;  1 drivers
v0xe62750_0 .net *"_s36", 0 0, L_0xe63ee0;  1 drivers
v0xe62830_0 .net *"_s4", 0 0, L_0xe63640;  1 drivers
v0xe62910_0 .net *"_s40", 0 0, L_0xe64e20;  1 drivers
v0xe629f0_0 .net *"_s44", 0 0, L_0xe65100;  1 drivers
v0xe62ad0_0 .net *"_s48", 0 0, L_0xe65390;  1 drivers
v0xe62bb0_0 .net *"_s52", 0 0, L_0xe65630;  1 drivers
o0x7ff5647e6888 .functor BUFZ 1, C4<z>; HiZ drive
; Elide local net with no drivers, v0xe62d60_0 name=_s66
v0xe62e00_0 .net *"_s8", 0 0, L_0xe639c0;  1 drivers
o0x7ff5647e68e8 .functor BUFZ 3, C4<zzz>; HiZ drive
v0xe62ee0_0 .net "command", 2 0, o0x7ff5647e68e8;  0 drivers
v0xe62fc0_0 .var "product", 29 0;
v0xe630a0_0 .var "result", 14 0;
v0xe63180_0 .net "resultAND", 14 0, L_0xe65910;  1 drivers
v0xe63260_0 .var "zero", 0 0;
E_0xe39100 .event edge, v0xe62ee0_0, v0xe61dd0_0, v0xe61cd0_0;
L_0xe634b0 .part v0xe61eb0_0, 0, 1;
L_0xe63550 .part v0xe61f70_0, 0, 1;
L_0xe63740 .part v0xe61eb0_0, 1, 1;
L_0xe63880 .part v0xe61f70_0, 1, 1;
L_0xe63a30 .part v0xe61eb0_0, 2, 1;
L_0xe63b20 .part v0xe61f70_0, 2, 1;
L_0xe63cc0 .part v0xe61eb0_0, 3, 1;
L_0xe63e40 .part v0xe61f70_0, 3, 1;
L_0xe64010 .part v0xe61eb0_0, 4, 1;
L_0xe64100 .part v0xe61f70_0, 4, 1;
L_0xe642f0 .part v0xe61eb0_0, 5, 1;
L_0xe64390 .part v0xe61f70_0, 5, 1;
L_0xe64590 .part v0xe61eb0_0, 6, 1;
L_0xe64680 .part v0xe61f70_0, 6, 1;
L_0xe64820 .part v0xe61eb0_0, 7, 1;
L_0xe64a20 .part v0xe61f70_0, 7, 1;
L_0xe64c40 .part v0xe61eb0_0, 8, 1;
L_0xe64d30 .part v0xe61f70_0, 8, 1;
L_0xe64f20 .part v0xe61eb0_0, 9, 1;
L_0xe65010 .part v0xe61f70_0, 9, 1;
L_0xe651b0 .part v0xe61eb0_0, 10, 1;
L_0xe652a0 .part v0xe61f70_0, 10, 1;
L_0xe65450 .part v0xe61eb0_0, 11, 1;
L_0xe65540 .part v0xe61f70_0, 11, 1;
L_0xe65730 .part v0xe61eb0_0, 12, 1;
L_0xe65820 .part v0xe61f70_0, 12, 1;
L_0xe659f0 .part v0xe61eb0_0, 13, 1;
L_0xe65ae0 .part v0xe61f70_0, 13, 1;
LS_0xe65910_0_0 .concat [ 1 1 1 1], L_0xe633c0, L_0xe63640, L_0xe639c0, L_0xe63c50;
LS_0xe65910_0_4 .concat [ 1 1 1 1], L_0xe63f70, L_0xe64250, L_0xe644f0, L_0xe64480;
LS_0xe65910_0_8 .concat [ 1 1 1 1], L_0xe64bd0, L_0xe63ee0, L_0xe64e20, L_0xe65100;
LS_0xe65910_0_12 .concat [ 1 1 1 0], L_0xe65390, L_0xe65630, o0x7ff5647e6888;
L_0xe65910 .concat [ 4 4 4 3], LS_0xe65910_0_0, LS_0xe65910_0_4, LS_0xe65910_0_8, LS_0xe65910_0_12;
S_0xe36e80 .scope generate, "genblock[0]" "genblock[0]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe314f0 .param/l "i" 0 2 45, +C4<00>;
L_0xe633c0 .functor AND 1, L_0xe634b0, L_0xe63550, C4<1>, C4<1>;
v0xe29910_0 .net *"_s0", 0 0, L_0xe634b0;  1 drivers
v0xe5e000_0 .net *"_s1", 0 0, L_0xe63550;  1 drivers
S_0xe5e0e0 .scope generate, "genblock[1]" "genblock[1]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5e2f0 .param/l "i" 0 2 45, +C4<01>;
L_0xe63640 .functor AND 1, L_0xe63740, L_0xe63880, C4<1>, C4<1>;
v0xe5e3b0_0 .net *"_s0", 0 0, L_0xe63740;  1 drivers
v0xe5e490_0 .net *"_s1", 0 0, L_0xe63880;  1 drivers
S_0xe5e570 .scope generate, "genblock[2]" "genblock[2]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5e7b0 .param/l "i" 0 2 45, +C4<010>;
L_0xe639c0 .functor AND 1, L_0xe63a30, L_0xe63b20, C4<1>, C4<1>;
v0xe5e850_0 .net *"_s0", 0 0, L_0xe63a30;  1 drivers
v0xe5e930_0 .net *"_s1", 0 0, L_0xe63b20;  1 drivers
S_0xe5ea10 .scope generate, "genblock[3]" "genblock[3]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5ec20 .param/l "i" 0 2 45, +C4<011>;
L_0xe63c50 .functor AND 1, L_0xe63cc0, L_0xe63e40, C4<1>, C4<1>;
v0xe5ece0_0 .net *"_s0", 0 0, L_0xe63cc0;  1 drivers
v0xe5edc0_0 .net *"_s1", 0 0, L_0xe63e40;  1 drivers
S_0xe5eea0 .scope generate, "genblock[4]" "genblock[4]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5f100 .param/l "i" 0 2 45, +C4<0100>;
L_0xe63f70 .functor AND 1, L_0xe64010, L_0xe64100, C4<1>, C4<1>;
v0xe5f1c0_0 .net *"_s0", 0 0, L_0xe64010;  1 drivers
v0xe5f2a0_0 .net *"_s1", 0 0, L_0xe64100;  1 drivers
S_0xe5f380 .scope generate, "genblock[5]" "genblock[5]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5f590 .param/l "i" 0 2 45, +C4<0101>;
L_0xe64250 .functor AND 1, L_0xe642f0, L_0xe64390, C4<1>, C4<1>;
v0xe5f650_0 .net *"_s0", 0 0, L_0xe642f0;  1 drivers
v0xe5f730_0 .net *"_s1", 0 0, L_0xe64390;  1 drivers
S_0xe5f810 .scope generate, "genblock[6]" "genblock[6]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5fa20 .param/l "i" 0 2 45, +C4<0110>;
L_0xe644f0 .functor AND 1, L_0xe64590, L_0xe64680, C4<1>, C4<1>;
v0xe5fae0_0 .net *"_s0", 0 0, L_0xe64590;  1 drivers
v0xe5fbc0_0 .net *"_s1", 0 0, L_0xe64680;  1 drivers
S_0xe5fca0 .scope generate, "genblock[7]" "genblock[7]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5feb0 .param/l "i" 0 2 45, +C4<0111>;
L_0xe64480 .functor AND 1, L_0xe64820, L_0xe64a20, C4<1>, C4<1>;
v0xe5ff70_0 .net *"_s0", 0 0, L_0xe64820;  1 drivers
v0xe60050_0 .net *"_s1", 0 0, L_0xe64a20;  1 drivers
S_0xe60130 .scope generate, "genblock[8]" "genblock[8]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe5f0b0 .param/l "i" 0 2 45, +C4<01000>;
L_0xe64bd0 .functor AND 1, L_0xe64c40, L_0xe64d30, C4<1>, C4<1>;
v0xe60440_0 .net *"_s0", 0 0, L_0xe64c40;  1 drivers
v0xe60520_0 .net *"_s1", 0 0, L_0xe64d30;  1 drivers
S_0xe60600 .scope generate, "genblock[9]" "genblock[9]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe60810 .param/l "i" 0 2 45, +C4<01001>;
L_0xe63ee0 .functor AND 1, L_0xe64f20, L_0xe65010, C4<1>, C4<1>;
v0xe608d0_0 .net *"_s0", 0 0, L_0xe64f20;  1 drivers
v0xe609b0_0 .net *"_s1", 0 0, L_0xe65010;  1 drivers
S_0xe60a90 .scope generate, "genblock[10]" "genblock[10]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe60ca0 .param/l "i" 0 2 45, +C4<01010>;
L_0xe64e20 .functor AND 1, L_0xe651b0, L_0xe652a0, C4<1>, C4<1>;
v0xe60d60_0 .net *"_s0", 0 0, L_0xe651b0;  1 drivers
v0xe60e40_0 .net *"_s1", 0 0, L_0xe652a0;  1 drivers
S_0xe60f20 .scope generate, "genblock[11]" "genblock[11]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe61130 .param/l "i" 0 2 45, +C4<01011>;
L_0xe65100 .functor AND 1, L_0xe65450, L_0xe65540, C4<1>, C4<1>;
v0xe611f0_0 .net *"_s0", 0 0, L_0xe65450;  1 drivers
v0xe612d0_0 .net *"_s1", 0 0, L_0xe65540;  1 drivers
S_0xe613b0 .scope generate, "genblock[12]" "genblock[12]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe615c0 .param/l "i" 0 2 45, +C4<01100>;
L_0xe65390 .functor AND 1, L_0xe65730, L_0xe65820, C4<1>, C4<1>;
v0xe61680_0 .net *"_s0", 0 0, L_0xe65730;  1 drivers
v0xe61760_0 .net *"_s1", 0 0, L_0xe65820;  1 drivers
S_0xe61840 .scope generate, "genblock[13]" "genblock[13]" 2 45, 2 45 0, S_0xe34b60;
 .timescale 0 0;
P_0xe61a50 .param/l "i" 0 2 45, +C4<01101>;
L_0xe65630 .functor AND 1, L_0xe659f0, L_0xe65ae0, C4<1>, C4<1>;
v0xe61b10_0 .net *"_s0", 0 0, L_0xe659f0;  1 drivers
v0xe61bf0_0 .net *"_s1", 0 0, L_0xe65ae0;  1 drivers
    .scope S_0xe34b60;
T_0 ;
    %wait E_0xe39100;
    %load/vec4 v0xe62ee0_0;
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
    %load/vec4 v0xe61cd0_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0xe61dd0_0;
    %parti/s 15, 1, 2;
    %add;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.1 ;
    %load/vec4 v0xe61cd0_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0xe61dd0_0;
    %parti/s 15, 1, 2;
    %sub;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.2 ;
    %load/vec4 v0xe63180_0;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.3 ;
    %load/vec4 v0xe62fc0_0;
    %parti/s 15, 15, 5;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.4 ;
    %load/vec4 v0xe62fc0_0;
    %parti/s 15, 0, 2;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.5 ;
    %load/vec4 v0xe61cd0_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0xe61dd0_0;
    %parti/s 15, 1, 2;
    %div;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.6 ;
    %load/vec4 v0xe61cd0_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0xe61dd0_0;
    %parti/s 15, 1, 2;
    %mod;
    %assign/vec4 v0xe630a0_0, 0;
    %jmp T_0.7;
T_0.7 ;
    %pop/vec4 1;
    %load/vec4 v0xe630a0_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.8, 4;
    %load/vec4 v0xe630a0_0;
    %addi 1, 0, 15;
    %store/vec4 v0xe630a0_0, 0, 15;
T_0.8 ;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0xe34b60;
T_1 ;
    %wait E_0xe39100;
    %load/vec4 v0xe630a0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0xe63260_0, 0;
T_1.0 ;
    %load/vec4 v0xe61cd0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0xe61cd0_0;
    %nor/r;
    %pad/u 15;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %assign/vec4 v0xe61eb0_0, 0;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xe61cd0_0;
    %pad/u 15;
    %assign/vec4 v0xe61eb0_0, 0;
T_1.3 ;
    %load/vec4 v0xe61dd0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0xe61dd0_0;
    %nor/r;
    %pad/u 15;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %assign/vec4 v0xe61f70_0, 0;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0xe61dd0_0;
    %pad/u 15;
    %assign/vec4 v0xe61f70_0, 0;
T_1.5 ;
    %load/vec4 v0xe61eb0_0;
    %pad/u 30;
    %load/vec4 v0xe61f70_0;
    %pad/u 30;
    %mul;
    %assign/vec4 v0xe62fc0_0, 0;
    %jmp T_1;
    .thread T_1, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "behavioral_alu.v";
