#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1604b30 .scope module, "behavioral_alu_tester" "behavioral_alu_tester" 2 16;
 .timescale 0 0;
v0x162a840_0 .var "A", 15 0;
v0x162a920_0 .var "B", 15 0;
v0x162a9f0_0 .var "Op", 2 0;
v0x162aaf0_0 .net "Res", 14 0, v0x162a500_0;  1 drivers
v0x162abc0_0 .var "clk", 0 0;
v0x162ac60_0 .var "dut_passed", 0 0;
v0x162ad00_0 .var "testRes", 14 0;
S_0x15f7760 .scope module, "dut" "ALU" 2 26, 3 1 0, S_0x1604b30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "res"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
    .port_info 4 /INPUT 1 "clk"
v0x1629070_0 .net "A", 15 0, v0x162a840_0;  1 drivers
v0x1629170_0 .net "B", 15 0, v0x162a920_0;  1 drivers
v0x1629250_0 .var "C", 14 0;
v0x1629310_0 .var "D", 14 0;
v0x16293f0_0 .net *"_s0", 0 0, L_0x162ada0;  1 drivers
v0x1629520_0 .net *"_s12", 0 0, L_0x162b720;  1 drivers
v0x1629600_0 .net *"_s16", 0 0, L_0x162b970;  1 drivers
v0x16296e0_0 .net *"_s20", 0 0, L_0x162bc50;  1 drivers
v0x16297c0_0 .net *"_s24", 0 0, L_0x162bef0;  1 drivers
v0x1629930_0 .net *"_s28", 0 0, L_0x162be80;  1 drivers
v0x1629a10_0 .net *"_s32", 0 0, L_0x162c520;  1 drivers
v0x1629af0_0 .net *"_s36", 0 0, L_0x162b650;  1 drivers
v0x1629bd0_0 .net *"_s4", 0 0, L_0x162b140;  1 drivers
v0x1629cb0_0 .net *"_s40", 0 0, L_0x162c7d0;  1 drivers
v0x1629d90_0 .net *"_s44", 0 0, L_0x162ca80;  1 drivers
v0x1629e70_0 .net *"_s48", 0 0, L_0x162cd10;  1 drivers
v0x1629f50_0 .net *"_s52", 0 0, L_0x162cfb0;  1 drivers
v0x162a100_0 .net *"_s56", 0 0, L_0x162db30;  1 drivers
v0x162a1a0_0 .net *"_s8", 0 0, L_0x162b390;  1 drivers
v0x162a280_0 .net "clk", 0 0, v0x162abc0_0;  1 drivers
v0x162a340_0 .net "command", 2 0, v0x162a9f0_0;  1 drivers
v0x162a420_0 .var "product", 29 0;
v0x162a500_0 .var "res", 14 0;
v0x162a5e0_0 .var "result", 14 0;
v0x162a6c0_0 .net "resultAND", 14 0, L_0x162d290;  1 drivers
E_0x15f81e0 .event edge, v0x162a420_0, v0x1629250_0, v0x1629310_0;
E_0x15f87c0 .event posedge, v0x162a280_0;
L_0x162aec0 .part v0x162a840_0, 1, 1;
L_0x162b000 .part v0x162a920_0, 1, 1;
L_0x162b1b0 .part v0x162a840_0, 2, 1;
L_0x162b2a0 .part v0x162a920_0, 2, 1;
L_0x162b430 .part v0x162a840_0, 3, 1;
L_0x162b5b0 .part v0x162a920_0, 3, 1;
L_0x162b790 .part v0x162a840_0, 4, 1;
L_0x162b830 .part v0x162a920_0, 4, 1;
L_0x162ba10 .part v0x162a840_0, 5, 1;
L_0x162bb00 .part v0x162a920_0, 5, 1;
L_0x162bcf0 .part v0x162a840_0, 6, 1;
L_0x162bd90 .part v0x162a920_0, 6, 1;
L_0x162bf90 .part v0x162a840_0, 7, 1;
L_0x162c190 .part v0x162a920_0, 7, 1;
L_0x162c340 .part v0x162a840_0, 8, 1;
L_0x162c430 .part v0x162a920_0, 8, 1;
L_0x162c5f0 .part v0x162a840_0, 9, 1;
L_0x162c6e0 .part v0x162a920_0, 9, 1;
L_0x162c8a0 .part v0x162a840_0, 10, 1;
L_0x162c990 .part v0x162a920_0, 10, 1;
L_0x162cb30 .part v0x162a840_0, 11, 1;
L_0x162cc20 .part v0x162a920_0, 11, 1;
L_0x162cdd0 .part v0x162a840_0, 12, 1;
L_0x162cec0 .part v0x162a920_0, 12, 1;
L_0x162d0b0 .part v0x162a840_0, 13, 1;
L_0x162d1a0 .part v0x162a920_0, 13, 1;
L_0x162d370 .part v0x162a840_0, 14, 1;
L_0x162d460 .part v0x162a920_0, 14, 1;
LS_0x162d290_0_0 .concat8 [ 1 1 1 1], L_0x162ada0, L_0x162b140, L_0x162b390, L_0x162b720;
LS_0x162d290_0_4 .concat8 [ 1 1 1 1], L_0x162b970, L_0x162bc50, L_0x162bef0, L_0x162be80;
LS_0x162d290_0_8 .concat8 [ 1 1 1 1], L_0x162c520, L_0x162b650, L_0x162c7d0, L_0x162ca80;
LS_0x162d290_0_12 .concat8 [ 1 1 1 0], L_0x162cd10, L_0x162cfb0, L_0x162db30;
L_0x162d290 .concat8 [ 4 4 4 3], LS_0x162d290_0_0, LS_0x162d290_0_4, LS_0x162d290_0_8, LS_0x162d290_0_12;
L_0x162dbf0 .part v0x162a840_0, 15, 1;
L_0x162d550 .part v0x162a920_0, 15, 1;
S_0x15f7960 .scope generate, "genblock[0]" "genblock[0]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x15f8c60 .param/l "i" 0 3 34, +C4<00>;
L_0x162ada0 .functor AND 1, L_0x162aec0, L_0x162b000, C4<1>, C4<1>;
v0x15b7d80_0 .net *"_s0", 0 0, L_0x162aec0;  1 drivers
v0x1624f10_0 .net *"_s1", 0 0, L_0x162b000;  1 drivers
S_0x1624ff0 .scope generate, "genblock[1]" "genblock[1]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1625200 .param/l "i" 0 3 34, +C4<01>;
L_0x162b140 .functor AND 1, L_0x162b1b0, L_0x162b2a0, C4<1>, C4<1>;
v0x16252c0_0 .net *"_s0", 0 0, L_0x162b1b0;  1 drivers
v0x16253a0_0 .net *"_s1", 0 0, L_0x162b2a0;  1 drivers
S_0x1625480 .scope generate, "genblock[2]" "genblock[2]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x16256c0 .param/l "i" 0 3 34, +C4<010>;
L_0x162b390 .functor AND 1, L_0x162b430, L_0x162b5b0, C4<1>, C4<1>;
v0x1625760_0 .net *"_s0", 0 0, L_0x162b430;  1 drivers
v0x1625840_0 .net *"_s1", 0 0, L_0x162b5b0;  1 drivers
S_0x1625920 .scope generate, "genblock[3]" "genblock[3]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1625b30 .param/l "i" 0 3 34, +C4<011>;
L_0x162b720 .functor AND 1, L_0x162b790, L_0x162b830, C4<1>, C4<1>;
v0x1625bf0_0 .net *"_s0", 0 0, L_0x162b790;  1 drivers
v0x1625cd0_0 .net *"_s1", 0 0, L_0x162b830;  1 drivers
S_0x1625db0 .scope generate, "genblock[4]" "genblock[4]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1626010 .param/l "i" 0 3 34, +C4<0100>;
L_0x162b970 .functor AND 1, L_0x162ba10, L_0x162bb00, C4<1>, C4<1>;
v0x16260d0_0 .net *"_s0", 0 0, L_0x162ba10;  1 drivers
v0x16261b0_0 .net *"_s1", 0 0, L_0x162bb00;  1 drivers
S_0x1626290 .scope generate, "genblock[5]" "genblock[5]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x16264a0 .param/l "i" 0 3 34, +C4<0101>;
L_0x162bc50 .functor AND 1, L_0x162bcf0, L_0x162bd90, C4<1>, C4<1>;
v0x1626560_0 .net *"_s0", 0 0, L_0x162bcf0;  1 drivers
v0x1626640_0 .net *"_s1", 0 0, L_0x162bd90;  1 drivers
S_0x1626720 .scope generate, "genblock[6]" "genblock[6]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1626930 .param/l "i" 0 3 34, +C4<0110>;
L_0x162bef0 .functor AND 1, L_0x162bf90, L_0x162c190, C4<1>, C4<1>;
v0x16269f0_0 .net *"_s0", 0 0, L_0x162bf90;  1 drivers
v0x1626ad0_0 .net *"_s1", 0 0, L_0x162c190;  1 drivers
S_0x1626bb0 .scope generate, "genblock[7]" "genblock[7]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1626dc0 .param/l "i" 0 3 34, +C4<0111>;
L_0x162be80 .functor AND 1, L_0x162c340, L_0x162c430, C4<1>, C4<1>;
v0x1626e80_0 .net *"_s0", 0 0, L_0x162c340;  1 drivers
v0x1626f60_0 .net *"_s1", 0 0, L_0x162c430;  1 drivers
S_0x1627040 .scope generate, "genblock[8]" "genblock[8]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1625fc0 .param/l "i" 0 3 34, +C4<01000>;
L_0x162c520 .functor AND 1, L_0x162c5f0, L_0x162c6e0, C4<1>, C4<1>;
v0x1627350_0 .net *"_s0", 0 0, L_0x162c5f0;  1 drivers
v0x1627430_0 .net *"_s1", 0 0, L_0x162c6e0;  1 drivers
S_0x1627510 .scope generate, "genblock[9]" "genblock[9]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1627720 .param/l "i" 0 3 34, +C4<01001>;
L_0x162b650 .functor AND 1, L_0x162c8a0, L_0x162c990, C4<1>, C4<1>;
v0x16277e0_0 .net *"_s0", 0 0, L_0x162c8a0;  1 drivers
v0x16278c0_0 .net *"_s1", 0 0, L_0x162c990;  1 drivers
S_0x16279a0 .scope generate, "genblock[10]" "genblock[10]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1627bb0 .param/l "i" 0 3 34, +C4<01010>;
L_0x162c7d0 .functor AND 1, L_0x162cb30, L_0x162cc20, C4<1>, C4<1>;
v0x1627c70_0 .net *"_s0", 0 0, L_0x162cb30;  1 drivers
v0x1627d50_0 .net *"_s1", 0 0, L_0x162cc20;  1 drivers
S_0x1627e30 .scope generate, "genblock[11]" "genblock[11]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1628040 .param/l "i" 0 3 34, +C4<01011>;
L_0x162ca80 .functor AND 1, L_0x162cdd0, L_0x162cec0, C4<1>, C4<1>;
v0x1628100_0 .net *"_s0", 0 0, L_0x162cdd0;  1 drivers
v0x16281e0_0 .net *"_s1", 0 0, L_0x162cec0;  1 drivers
S_0x16282c0 .scope generate, "genblock[12]" "genblock[12]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x16284d0 .param/l "i" 0 3 34, +C4<01100>;
L_0x162cd10 .functor AND 1, L_0x162d0b0, L_0x162d1a0, C4<1>, C4<1>;
v0x1628590_0 .net *"_s0", 0 0, L_0x162d0b0;  1 drivers
v0x1628670_0 .net *"_s1", 0 0, L_0x162d1a0;  1 drivers
S_0x1628750 .scope generate, "genblock[13]" "genblock[13]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1628960 .param/l "i" 0 3 34, +C4<01101>;
L_0x162cfb0 .functor AND 1, L_0x162d370, L_0x162d460, C4<1>, C4<1>;
v0x1628a20_0 .net *"_s0", 0 0, L_0x162d370;  1 drivers
v0x1628b00_0 .net *"_s1", 0 0, L_0x162d460;  1 drivers
S_0x1628be0 .scope generate, "genblock[14]" "genblock[14]" 3 34, 3 34 0, S_0x15f7760;
 .timescale 0 0;
P_0x1628df0 .param/l "i" 0 3 34, +C4<01110>;
L_0x162db30 .functor AND 1, L_0x162dbf0, L_0x162d550, C4<1>, C4<1>;
v0x1628eb0_0 .net *"_s0", 0 0, L_0x162dbf0;  1 drivers
v0x1628f90_0 .net *"_s1", 0 0, L_0x162d550;  1 drivers
    .scope S_0x15f7760;
T_0 ;
    %wait E_0x15f87c0;
    %vpi_call 3 18 "$display", "A = %b", v0x1629250_0 {0 0 0};
    %load/vec4 v0x1629070_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x1629070_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x1629250_0, 0, 15;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x1629070_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.2, 8;
    %load/vec4 v0x1629070_0;
    %parti/s 15, 1, 2;
    %inv;
    %store/vec4 v0x1629250_0, 0, 15;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x1629070_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x1629250_0, 0, 15;
T_0.3 ;
T_0.1 ;
    %load/vec4 v0x1629170_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.4, 8;
    %load/vec4 v0x1629170_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x1629310_0, 0, 15;
    %jmp T_0.5;
T_0.4 ;
    %load/vec4 v0x1629170_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.6, 8;
    %load/vec4 v0x1629170_0;
    %parti/s 15, 1, 2;
    %inv;
    %store/vec4 v0x1629310_0, 0, 15;
    %jmp T_0.7;
T_0.6 ;
    %load/vec4 v0x1629170_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x1629310_0, 0, 15;
T_0.7 ;
T_0.5 ;
    %load/vec4 v0x1629250_0;
    %pad/u 30;
    %load/vec4 v0x1629310_0;
    %pad/u 30;
    %mul;
    %store/vec4 v0x162a420_0, 0, 30;
    %jmp T_0;
    .thread T_0;
    .scope S_0x15f7760;
T_1 ;
    %wait E_0x15f81e0;
    %load/vec4 v0x162a340_0;
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
    %load/vec4 v0x1629250_0;
    %load/vec4 v0x1629310_0;
    %add;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0x1629250_0;
    %load/vec4 v0x1629310_0;
    %sub;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0x162a6c0_0;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0x162a420_0;
    %parti/s 15, 0, 2;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0x162a420_0;
    %parti/s 15, 15, 5;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0x1629250_0;
    %load/vec4 v0x1629310_0;
    %mod;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0x1629250_0;
    %load/vec4 v0x1629310_0;
    %div;
    %store/vec4 v0x162a5e0_0, 0, 15;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0x162a5e0_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 2, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x1629070_0;
    %parti/s 1, 15, 5;
    %load/vec4 v0x1629170_0;
    %parti/s 1, 15, 5;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 5, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.8, 8;
    %load/vec4 v0x162a5e0_0;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %inv;
    %store/vec4 v0x162a500_0, 0, 15;
    %jmp T_1.9;
T_1.8 ;
    %load/vec4 v0x162a340_0;
    %pad/u 32;
    %pushi/vec4 6, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1629070_0;
    %parti/s 1, 15, 5;
    %load/vec4 v0x1629170_0;
    %parti/s 1, 15, 5;
    %cmp/e;
    %flag_get/vec4 4;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.10, 8;
    %load/vec4 v0x162a5e0_0;
    %inv;
    %store/vec4 v0x162a500_0, 0, 15;
    %jmp T_1.11;
T_1.10 ;
    %load/vec4 v0x162a5e0_0;
    %store/vec4 v0x162a500_0, 0, 15;
T_1.11 ;
T_1.9 ;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x1604b30;
T_2 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x162ac60_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0x1604b30;
T_3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x162abc0_0, 0, 1;
    %end;
    .thread T_3;
    .scope S_0x1604b30;
T_4 ;
    %delay 50, 0;
    %load/vec4 v0x162abc0_0;
    %nor/r;
    %store/vec4 v0x162abc0_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_0x1604b30;
T_5 ;
    %vpi_call 2 32 "$dumpfile", "alu.vcd" {0 0 0};
    %vpi_call 2 33 "$dumpvars" {0 0 0};
    %vpi_call 2 35 "$display", "Alu Tests Begin" {0 0 0};
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0x162a840_0, 0, 16;
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0x162a920_0, 0, 16;
    %delay 100, 0;
    %pushi/vec4 4, 0, 3;
    %store/vec4 v0x162a9f0_0, 0, 3;
    %pushi/vec4 35, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x162a840_0, 4, 15;
    %pushi/vec4 32764, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x162a920_0, 4, 15;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x162a840_0, 4, 1;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x162a920_0, 4, 1;
    %load/vec4 v0x162a840_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_5.0, 4;
    %load/vec4 v0x162a840_0;
    %parti/s 15, 1, 2;
    %subi 1, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x162a840_0, 4, 15;
T_5.0 ;
    %load/vec4 v0x162a920_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_5.2, 4;
    %load/vec4 v0x162a920_0;
    %parti/s 15, 1, 2;
    %subi 1, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x162a920_0, 4, 15;
T_5.2 ;
    %load/vec4 v0x162a840_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0x162a920_0;
    %parti/s 15, 1, 2;
    %add;
    %store/vec4 v0x162ad00_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0x162aaf0_0;
    %load/vec4 v0x162ad00_0;
    %cmp/ne;
    %jmp/0xz  T_5.4, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x162ac60_0, 0, 1;
    %vpi_call 2 57 "$display", "Output should be %d, but is instead %d", v0x162ad00_0, v0x162aaf0_0 {0 0 0};
T_5.4 ;
    %pushi/vec4 307, 0, 16;
    %store/vec4 v0x162a840_0, 0, 16;
    %pushi/vec4 65228, 0, 16;
    %store/vec4 v0x162a920_0, 0, 16;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x162a9f0_0, 0, 3;
    %pushi/vec4 32767, 0, 15;
    %store/vec4 v0x162ad00_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0x162aaf0_0;
    %load/vec4 v0x162ad00_0;
    %cmp/ne;
    %jmp/0xz  T_5.6, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x162ac60_0, 0, 1;
    %vpi_call 2 68 "$display", "Output should be %d, but is instead %d", v0x162ad00_0, v0x162aaf0_0 {0 0 0};
T_5.6 ;
    %load/vec4 v0x162ac60_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_5.8, 4;
    %vpi_call 2 73 "$display", "Behavioral ALU Tests Passed" {0 0 0};
T_5.8 ;
    %vpi_call 2 76 "$finish" {0 0 0};
    %end;
    .thread T_5;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "behavioral_alu.t.v";
    "./behavioral_alu.v";
