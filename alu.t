#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xc41cf0 .scope module, "behavioral_alu_tester" "behavioral_alu_tester" 2 16;
 .timescale 0 0;
v0xcac200_0 .var "A", 15 0;
v0xcac2e0_0 .var "B", 15 0;
v0xcac3b0_0 .var "Op", 2 0;
v0xcac4b0_0 .net "Res", 14 0, v0xcabfa0_0;  1 drivers
v0xcac580_0 .var "clk", 0 0;
v0xcac620_0 .var "dut_passed", 0 0;
v0xcac6c0_0 .var "testRes", 14 0;
S_0xc41e70 .scope module, "dut" "ALU" 2 26, 3 1 0, S_0xc41cf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "result"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
    .port_info 4 /INPUT 1 "clk"
v0xcaab10_0 .net "A", 15 0, v0xcac200_0;  1 drivers
v0xcaac10_0 .net "B", 15 0, v0xcac2e0_0;  1 drivers
v0xcaacf0_0 .var "C", 14 0;
v0xcaadb0_0 .var "D", 14 0;
v0xcaae90_0 .net *"_s0", 0 0, L_0xcac760;  1 drivers
v0xcaafc0_0 .net *"_s12", 0 0, L_0xcad070;  1 drivers
v0xcab0a0_0 .net *"_s16", 0 0, L_0xcad390;  1 drivers
v0xcab180_0 .net *"_s20", 0 0, L_0xcad670;  1 drivers
v0xcab260_0 .net *"_s24", 0 0, L_0xcad910;  1 drivers
v0xcab3d0_0 .net *"_s28", 0 0, L_0xcad8a0;  1 drivers
v0xcab4b0_0 .net *"_s32", 0 0, L_0xcadff0;  1 drivers
v0xcab590_0 .net *"_s36", 0 0, L_0xcad300;  1 drivers
v0xcab670_0 .net *"_s4", 0 0, L_0xcaca60;  1 drivers
v0xcab750_0 .net *"_s40", 0 0, L_0xcae240;  1 drivers
v0xcab830_0 .net *"_s44", 0 0, L_0xcae520;  1 drivers
v0xcab910_0 .net *"_s48", 0 0, L_0xcae7b0;  1 drivers
v0xcab9f0_0 .net *"_s52", 0 0, L_0xcaea50;  1 drivers
o0x7fd5d4982888 .functor BUFZ 1, C4<z>; HiZ drive
; Elide local net with no drivers, v0xcabba0_0 name=_s62
v0xcabc40_0 .net *"_s8", 0 0, L_0xcacde0;  1 drivers
v0xcabd20_0 .net "clk", 0 0, v0xcac580_0;  1 drivers
v0xcabde0_0 .net "command", 2 0, v0xcac3b0_0;  1 drivers
v0xcabec0_0 .var "product", 29 0;
v0xcabfa0_0 .var "result", 14 0;
v0xcac080_0 .net "resultAND", 14 0, L_0xcaed30;  1 drivers
E_0xc7f2b0 .event posedge, v0xcabd20_0;
E_0xc7f890 .event negedge, v0xcabd20_0;
L_0xcac880 .part v0xcaacf0_0, 0, 1;
L_0xcac970 .part v0xcaadb0_0, 0, 1;
L_0xcacb60 .part v0xcaacf0_0, 1, 1;
L_0xcacca0 .part v0xcaadb0_0, 1, 1;
L_0xcace50 .part v0xcaacf0_0, 2, 1;
L_0xcacf40 .part v0xcaadb0_0, 2, 1;
L_0xcad0e0 .part v0xcaacf0_0, 3, 1;
L_0xcad260 .part v0xcaadb0_0, 3, 1;
L_0xcad430 .part v0xcaacf0_0, 4, 1;
L_0xcad520 .part v0xcaadb0_0, 4, 1;
L_0xcad710 .part v0xcaacf0_0, 5, 1;
L_0xcad7b0 .part v0xcaadb0_0, 5, 1;
L_0xcad9b0 .part v0xcaacf0_0, 6, 1;
L_0xcadaa0 .part v0xcaadb0_0, 6, 1;
L_0xcadc40 .part v0xcaacf0_0, 7, 1;
L_0xcade40 .part v0xcaadb0_0, 7, 1;
L_0xcae060 .part v0xcaacf0_0, 8, 1;
L_0xcae150 .part v0xcaadb0_0, 8, 1;
L_0xcae340 .part v0xcaacf0_0, 9, 1;
L_0xcae430 .part v0xcaadb0_0, 9, 1;
L_0xcae5d0 .part v0xcaacf0_0, 10, 1;
L_0xcae6c0 .part v0xcaadb0_0, 10, 1;
L_0xcae870 .part v0xcaacf0_0, 11, 1;
L_0xcae960 .part v0xcaadb0_0, 11, 1;
L_0xcaeb50 .part v0xcaacf0_0, 12, 1;
L_0xcaec40 .part v0xcaadb0_0, 12, 1;
L_0xcaee10 .part v0xcaacf0_0, 13, 1;
L_0xcaef00 .part v0xcaadb0_0, 13, 1;
LS_0xcaed30_0_0 .concat [ 1 1 1 1], L_0xcac760, L_0xcaca60, L_0xcacde0, L_0xcad070;
LS_0xcaed30_0_4 .concat [ 1 1 1 1], L_0xcad390, L_0xcad670, L_0xcad910, L_0xcad8a0;
LS_0xcaed30_0_8 .concat [ 1 1 1 1], L_0xcadff0, L_0xcad300, L_0xcae240, L_0xcae520;
LS_0xcaed30_0_12 .concat [ 1 1 1 0], L_0xcae7b0, L_0xcaea50, o0x7fd5d4982888;
L_0xcaed30 .concat [ 4 4 4 3], LS_0xcaed30_0_0, LS_0xcaed30_0_4, LS_0xcaed30_0_8, LS_0xcaed30_0_12;
S_0xc87c00 .scope generate, "genblock[0]" "genblock[0]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xc70a90 .param/l "i" 0 3 32, +C4<00>;
L_0xcac760 .functor AND 1, L_0xcac880, L_0xcac970, C4<1>, C4<1>;
v0xc69a60_0 .net *"_s0", 0 0, L_0xcac880;  1 drivers
v0xca6e40_0 .net *"_s1", 0 0, L_0xcac970;  1 drivers
S_0xca6f20 .scope generate, "genblock[1]" "genblock[1]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca7130 .param/l "i" 0 3 32, +C4<01>;
L_0xcaca60 .functor AND 1, L_0xcacb60, L_0xcacca0, C4<1>, C4<1>;
v0xca71f0_0 .net *"_s0", 0 0, L_0xcacb60;  1 drivers
v0xca72d0_0 .net *"_s1", 0 0, L_0xcacca0;  1 drivers
S_0xca73b0 .scope generate, "genblock[2]" "genblock[2]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca75f0 .param/l "i" 0 3 32, +C4<010>;
L_0xcacde0 .functor AND 1, L_0xcace50, L_0xcacf40, C4<1>, C4<1>;
v0xca7690_0 .net *"_s0", 0 0, L_0xcace50;  1 drivers
v0xca7770_0 .net *"_s1", 0 0, L_0xcacf40;  1 drivers
S_0xca7850 .scope generate, "genblock[3]" "genblock[3]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca7a60 .param/l "i" 0 3 32, +C4<011>;
L_0xcad070 .functor AND 1, L_0xcad0e0, L_0xcad260, C4<1>, C4<1>;
v0xca7b20_0 .net *"_s0", 0 0, L_0xcad0e0;  1 drivers
v0xca7c00_0 .net *"_s1", 0 0, L_0xcad260;  1 drivers
S_0xca7ce0 .scope generate, "genblock[4]" "genblock[4]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca7f40 .param/l "i" 0 3 32, +C4<0100>;
L_0xcad390 .functor AND 1, L_0xcad430, L_0xcad520, C4<1>, C4<1>;
v0xca8000_0 .net *"_s0", 0 0, L_0xcad430;  1 drivers
v0xca80e0_0 .net *"_s1", 0 0, L_0xcad520;  1 drivers
S_0xca81c0 .scope generate, "genblock[5]" "genblock[5]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca83d0 .param/l "i" 0 3 32, +C4<0101>;
L_0xcad670 .functor AND 1, L_0xcad710, L_0xcad7b0, C4<1>, C4<1>;
v0xca8490_0 .net *"_s0", 0 0, L_0xcad710;  1 drivers
v0xca8570_0 .net *"_s1", 0 0, L_0xcad7b0;  1 drivers
S_0xca8650 .scope generate, "genblock[6]" "genblock[6]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca8860 .param/l "i" 0 3 32, +C4<0110>;
L_0xcad910 .functor AND 1, L_0xcad9b0, L_0xcadaa0, C4<1>, C4<1>;
v0xca8920_0 .net *"_s0", 0 0, L_0xcad9b0;  1 drivers
v0xca8a00_0 .net *"_s1", 0 0, L_0xcadaa0;  1 drivers
S_0xca8ae0 .scope generate, "genblock[7]" "genblock[7]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca8cf0 .param/l "i" 0 3 32, +C4<0111>;
L_0xcad8a0 .functor AND 1, L_0xcadc40, L_0xcade40, C4<1>, C4<1>;
v0xca8db0_0 .net *"_s0", 0 0, L_0xcadc40;  1 drivers
v0xca8e90_0 .net *"_s1", 0 0, L_0xcade40;  1 drivers
S_0xca8f70 .scope generate, "genblock[8]" "genblock[8]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca7ef0 .param/l "i" 0 3 32, +C4<01000>;
L_0xcadff0 .functor AND 1, L_0xcae060, L_0xcae150, C4<1>, C4<1>;
v0xca9280_0 .net *"_s0", 0 0, L_0xcae060;  1 drivers
v0xca9360_0 .net *"_s1", 0 0, L_0xcae150;  1 drivers
S_0xca9440 .scope generate, "genblock[9]" "genblock[9]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca9650 .param/l "i" 0 3 32, +C4<01001>;
L_0xcad300 .functor AND 1, L_0xcae340, L_0xcae430, C4<1>, C4<1>;
v0xca9710_0 .net *"_s0", 0 0, L_0xcae340;  1 drivers
v0xca97f0_0 .net *"_s1", 0 0, L_0xcae430;  1 drivers
S_0xca98d0 .scope generate, "genblock[10]" "genblock[10]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca9ae0 .param/l "i" 0 3 32, +C4<01010>;
L_0xcae240 .functor AND 1, L_0xcae5d0, L_0xcae6c0, C4<1>, C4<1>;
v0xca9ba0_0 .net *"_s0", 0 0, L_0xcae5d0;  1 drivers
v0xca9c80_0 .net *"_s1", 0 0, L_0xcae6c0;  1 drivers
S_0xca9d60 .scope generate, "genblock[11]" "genblock[11]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xca9f70 .param/l "i" 0 3 32, +C4<01011>;
L_0xcae520 .functor AND 1, L_0xcae870, L_0xcae960, C4<1>, C4<1>;
v0xcaa030_0 .net *"_s0", 0 0, L_0xcae870;  1 drivers
v0xcaa110_0 .net *"_s1", 0 0, L_0xcae960;  1 drivers
S_0xcaa1f0 .scope generate, "genblock[12]" "genblock[12]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xcaa400 .param/l "i" 0 3 32, +C4<01100>;
L_0xcae7b0 .functor AND 1, L_0xcaeb50, L_0xcaec40, C4<1>, C4<1>;
v0xcaa4c0_0 .net *"_s0", 0 0, L_0xcaeb50;  1 drivers
v0xcaa5a0_0 .net *"_s1", 0 0, L_0xcaec40;  1 drivers
S_0xcaa680 .scope generate, "genblock[13]" "genblock[13]" 3 32, 3 32 0, S_0xc41e70;
 .timescale 0 0;
P_0xcaa890 .param/l "i" 0 3 32, +C4<01101>;
L_0xcaea50 .functor AND 1, L_0xcaee10, L_0xcaef00, C4<1>, C4<1>;
v0xcaa950_0 .net *"_s0", 0 0, L_0xcaee10;  1 drivers
v0xcaaa30_0 .net *"_s1", 0 0, L_0xcaef00;  1 drivers
    .scope S_0xc41e70;
T_0 ;
    %wait E_0xc7f890;
    %load/vec4 v0xcaab10_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0xcaab10_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0xcaacf0_0, 0, 15;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0xcaab10_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0xcaacf0_0, 0, 15;
T_0.1 ;
    %load/vec4 v0xcaab10_0;
    %parti/s 15, 1, 2;
    %inv;
    %load/vec4 v0xcaab10_0;
    %parti/s 15, 1, 2;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %vpi_call 3 20 "$display", "C: %b;   NOT A: %b;   NEGATIVE A: %b", v0xcaab10_0, S<1,vec4,u15>, S<0,vec4,u15> {2 0 0};
    %load/vec4 v0xcaac10_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.2, 4;
    %load/vec4 v0xcaac10_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0xcaadb0_0, 0, 15;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0xcaac10_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0xcaadb0_0, 0, 15;
T_0.3 ;
    %load/vec4 v0xcaacf0_0;
    %pad/u 30;
    %load/vec4 v0xcaadb0_0;
    %pad/u 30;
    %mul;
    %store/vec4 v0xcabec0_0, 0, 30;
    %jmp T_0;
    .thread T_0;
    .scope S_0xc41e70;
T_1 ;
    %wait E_0xc7f2b0;
    %load/vec4 v0xcabde0_0;
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
    %load/vec4 v0xcaacf0_0;
    %load/vec4 v0xcaadb0_0;
    %add;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0xcaacf0_0;
    %load/vec4 v0xcaadb0_0;
    %sub;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0xcac080_0;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0xcabec0_0;
    %parti/s 15, 15, 5;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0xcabec0_0;
    %parti/s 15, 0, 2;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0xcaacf0_0;
    %load/vec4 v0xcaadb0_0;
    %div;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0xcaacf0_0;
    %load/vec4 v0xcaadb0_0;
    %mod;
    %store/vec4 v0xcabfa0_0, 0, 15;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0xcabfa0_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.8, 4;
    %load/vec4 v0xcabfa0_0;
    %subi 1, 0, 15;
    %store/vec4 v0xcabfa0_0, 0, 15;
T_1.8 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0xc41cf0;
T_2 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xcac620_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0xc41cf0;
T_3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xcac580_0, 0, 1;
    %end;
    .thread T_3;
    .scope S_0xc41cf0;
T_4 ;
    %delay 50, 0;
    %load/vec4 v0xcac580_0;
    %nor/r;
    %store/vec4 v0xcac580_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_0xc41cf0;
T_5 ;
    %vpi_call 2 32 "$dumpfile", "alu.vcd" {0 0 0};
    %vpi_call 2 33 "$dumpvars" {0 0 0};
    %vpi_call 2 35 "$display", "Alu Tests Begin" {0 0 0};
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0xcac200_0, 0, 16;
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0xcac2e0_0, 0, 16;
    %delay 100, 0;
    %pushi/vec4 32760, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcac200_0, 4, 15;
    %pushi/vec4 16, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcac2e0_0, 4, 15;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcac200_0, 4, 1;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xcac2e0_0, 4, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xcac3b0_0, 0, 3;
    %load/vec4 v0xcac200_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0xcac2e0_0;
    %parti/s 15, 1, 2;
    %add;
    %store/vec4 v0xcac6c0_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0xcac4b0_0;
    %load/vec4 v0xcac6c0_0;
    %cmp/ne;
    %jmp/0xz  T_5.0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xcac620_0, 0, 1;
    %vpi_call 2 54 "$display", "Output should be %d, but is instead %d", v0xcac6c0_0, v0xcac4b0_0 {0 0 0};
T_5.0 ;
    %pushi/vec4 307, 0, 16;
    %store/vec4 v0xcac200_0, 0, 16;
    %pushi/vec4 65228, 0, 16;
    %store/vec4 v0xcac2e0_0, 0, 16;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xcac3b0_0, 0, 3;
    %pushi/vec4 32767, 0, 15;
    %store/vec4 v0xcac6c0_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0xcac4b0_0;
    %load/vec4 v0xcac6c0_0;
    %cmp/ne;
    %jmp/0xz  T_5.2, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xcac620_0, 0, 1;
    %vpi_call 2 65 "$display", "Output should be %d, but is instead %d", v0xcac6c0_0, v0xcac4b0_0 {0 0 0};
T_5.2 ;
    %load/vec4 v0xcac620_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_5.4, 4;
    %vpi_call 2 70 "$display", "Behavioral ALU Tests Passed" {0 0 0};
T_5.4 ;
    %vpi_call 2 73 "$finish" {0 0 0};
    %end;
    .thread T_5;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "behavioral_alu.t.v";
    "./behavioral_alu.v";
