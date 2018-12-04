#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x20a9cf0 .scope module, "behavioral_alu_tester" "behavioral_alu_tester" 2 16;
 .timescale 0 0;
v0x2114e90_0 .var "A", 15 0;
v0x2114f70_0 .var "B", 15 0;
v0x2115040_0 .var "Op", 2 0;
v0x2115140_0 .net "Res", 14 0, v0x2114b50_0;  1 drivers
v0x2115210_0 .var "clk", 0 0;
v0x21152b0_0 .var "dut_passed", 0 0;
v0x2115350_0 .var "testRes", 14 0;
S_0x20a9e70 .scope module, "dut" "ALU" 2 26, 3 1 0, S_0x20a9cf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 15 "res"
    .port_info 1 /INPUT 16 "A"
    .port_info 2 /INPUT 16 "B"
    .port_info 3 /INPUT 3 "command"
    .port_info 4 /INPUT 1 "clk"
v0x21136c0_0 .net "A", 15 0, v0x2114e90_0;  1 drivers
v0x21137c0_0 .net "B", 15 0, v0x2114f70_0;  1 drivers
v0x21138a0_0 .var "C", 14 0;
v0x2113960_0 .var "D", 14 0;
v0x2113a40_0 .net *"_s0", 0 0, L_0x21153f0;  1 drivers
v0x2113b70_0 .net *"_s12", 0 0, L_0x2115d00;  1 drivers
v0x2113c50_0 .net *"_s16", 0 0, L_0x2116020;  1 drivers
v0x2113d30_0 .net *"_s20", 0 0, L_0x2116300;  1 drivers
v0x2113e10_0 .net *"_s24", 0 0, L_0x21165a0;  1 drivers
v0x2113f80_0 .net *"_s28", 0 0, L_0x2116530;  1 drivers
v0x2114060_0 .net *"_s32", 0 0, L_0x2116c80;  1 drivers
v0x2114140_0 .net *"_s36", 0 0, L_0x2115f90;  1 drivers
v0x2114220_0 .net *"_s4", 0 0, L_0x21156f0;  1 drivers
v0x2114300_0 .net *"_s40", 0 0, L_0x2116ed0;  1 drivers
v0x21143e0_0 .net *"_s44", 0 0, L_0x21171b0;  1 drivers
v0x21144c0_0 .net *"_s48", 0 0, L_0x2117440;  1 drivers
v0x21145a0_0 .net *"_s52", 0 0, L_0x21176e0;  1 drivers
o0x7f56142b0888 .functor BUFZ 1, C4<z>; HiZ drive
; Elide local net with no drivers, v0x2114750_0 name=_s62
v0x21147f0_0 .net *"_s8", 0 0, L_0x2115a70;  1 drivers
v0x21148d0_0 .net "clk", 0 0, v0x2115210_0;  1 drivers
v0x2114990_0 .net "command", 2 0, v0x2115040_0;  1 drivers
v0x2114a70_0 .var "product", 29 0;
v0x2114b50_0 .var "res", 14 0;
v0x2114c30_0 .var "result", 14 0;
v0x2114d10_0 .net "resultAND", 14 0, L_0x21179c0;  1 drivers
E_0x20e77e0 .event posedge, v0x21148d0_0;
E_0x20e7dc0 .event negedge, v0x21148d0_0;
L_0x2115510 .part v0x21138a0_0, 0, 1;
L_0x2115600 .part v0x2113960_0, 0, 1;
L_0x21157f0 .part v0x21138a0_0, 1, 1;
L_0x2115930 .part v0x2113960_0, 1, 1;
L_0x2115ae0 .part v0x21138a0_0, 2, 1;
L_0x2115bd0 .part v0x2113960_0, 2, 1;
L_0x2115d70 .part v0x21138a0_0, 3, 1;
L_0x2115ef0 .part v0x2113960_0, 3, 1;
L_0x21160c0 .part v0x21138a0_0, 4, 1;
L_0x21161b0 .part v0x2113960_0, 4, 1;
L_0x21163a0 .part v0x21138a0_0, 5, 1;
L_0x2116440 .part v0x2113960_0, 5, 1;
L_0x2116640 .part v0x21138a0_0, 6, 1;
L_0x2116730 .part v0x2113960_0, 6, 1;
L_0x21168d0 .part v0x21138a0_0, 7, 1;
L_0x2116ad0 .part v0x2113960_0, 7, 1;
L_0x2116cf0 .part v0x21138a0_0, 8, 1;
L_0x2116de0 .part v0x2113960_0, 8, 1;
L_0x2116fd0 .part v0x21138a0_0, 9, 1;
L_0x21170c0 .part v0x2113960_0, 9, 1;
L_0x2117260 .part v0x21138a0_0, 10, 1;
L_0x2117350 .part v0x2113960_0, 10, 1;
L_0x2117500 .part v0x21138a0_0, 11, 1;
L_0x21175f0 .part v0x2113960_0, 11, 1;
L_0x21177e0 .part v0x21138a0_0, 12, 1;
L_0x21178d0 .part v0x2113960_0, 12, 1;
L_0x2117aa0 .part v0x21138a0_0, 13, 1;
L_0x2117b90 .part v0x2113960_0, 13, 1;
LS_0x21179c0_0_0 .concat [ 1 1 1 1], L_0x21153f0, L_0x21156f0, L_0x2115a70, L_0x2115d00;
LS_0x21179c0_0_4 .concat [ 1 1 1 1], L_0x2116020, L_0x2116300, L_0x21165a0, L_0x2116530;
LS_0x21179c0_0_8 .concat [ 1 1 1 1], L_0x2116c80, L_0x2115f90, L_0x2116ed0, L_0x21171b0;
LS_0x21179c0_0_12 .concat [ 1 1 1 0], L_0x2117440, L_0x21176e0, o0x7f56142b0888;
L_0x21179c0 .concat [ 4 4 4 3], LS_0x21179c0_0_0, LS_0x21179c0_0_4, LS_0x21179c0_0_8, LS_0x21179c0_0_12;
S_0x20f07f0 .scope generate, "genblock[0]" "genblock[0]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x20d8c90 .param/l "i" 0 3 32, +C4<00>;
L_0x21153f0 .functor AND 1, L_0x2115510, L_0x2115600, C4<1>, C4<1>;
v0x20d1c60_0 .net *"_s0", 0 0, L_0x2115510;  1 drivers
v0x210f9f0_0 .net *"_s1", 0 0, L_0x2115600;  1 drivers
S_0x210fad0 .scope generate, "genblock[1]" "genblock[1]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x210fce0 .param/l "i" 0 3 32, +C4<01>;
L_0x21156f0 .functor AND 1, L_0x21157f0, L_0x2115930, C4<1>, C4<1>;
v0x210fda0_0 .net *"_s0", 0 0, L_0x21157f0;  1 drivers
v0x210fe80_0 .net *"_s1", 0 0, L_0x2115930;  1 drivers
S_0x210ff60 .scope generate, "genblock[2]" "genblock[2]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x21101a0 .param/l "i" 0 3 32, +C4<010>;
L_0x2115a70 .functor AND 1, L_0x2115ae0, L_0x2115bd0, C4<1>, C4<1>;
v0x2110240_0 .net *"_s0", 0 0, L_0x2115ae0;  1 drivers
v0x2110320_0 .net *"_s1", 0 0, L_0x2115bd0;  1 drivers
S_0x2110400 .scope generate, "genblock[3]" "genblock[3]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2110610 .param/l "i" 0 3 32, +C4<011>;
L_0x2115d00 .functor AND 1, L_0x2115d70, L_0x2115ef0, C4<1>, C4<1>;
v0x21106d0_0 .net *"_s0", 0 0, L_0x2115d70;  1 drivers
v0x21107b0_0 .net *"_s1", 0 0, L_0x2115ef0;  1 drivers
S_0x2110890 .scope generate, "genblock[4]" "genblock[4]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2110af0 .param/l "i" 0 3 32, +C4<0100>;
L_0x2116020 .functor AND 1, L_0x21160c0, L_0x21161b0, C4<1>, C4<1>;
v0x2110bb0_0 .net *"_s0", 0 0, L_0x21160c0;  1 drivers
v0x2110c90_0 .net *"_s1", 0 0, L_0x21161b0;  1 drivers
S_0x2110d70 .scope generate, "genblock[5]" "genblock[5]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2110f80 .param/l "i" 0 3 32, +C4<0101>;
L_0x2116300 .functor AND 1, L_0x21163a0, L_0x2116440, C4<1>, C4<1>;
v0x2111040_0 .net *"_s0", 0 0, L_0x21163a0;  1 drivers
v0x2111120_0 .net *"_s1", 0 0, L_0x2116440;  1 drivers
S_0x2111200 .scope generate, "genblock[6]" "genblock[6]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2111410 .param/l "i" 0 3 32, +C4<0110>;
L_0x21165a0 .functor AND 1, L_0x2116640, L_0x2116730, C4<1>, C4<1>;
v0x21114d0_0 .net *"_s0", 0 0, L_0x2116640;  1 drivers
v0x21115b0_0 .net *"_s1", 0 0, L_0x2116730;  1 drivers
S_0x2111690 .scope generate, "genblock[7]" "genblock[7]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x21118a0 .param/l "i" 0 3 32, +C4<0111>;
L_0x2116530 .functor AND 1, L_0x21168d0, L_0x2116ad0, C4<1>, C4<1>;
v0x2111960_0 .net *"_s0", 0 0, L_0x21168d0;  1 drivers
v0x2111a40_0 .net *"_s1", 0 0, L_0x2116ad0;  1 drivers
S_0x2111b20 .scope generate, "genblock[8]" "genblock[8]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2110aa0 .param/l "i" 0 3 32, +C4<01000>;
L_0x2116c80 .functor AND 1, L_0x2116cf0, L_0x2116de0, C4<1>, C4<1>;
v0x2111e30_0 .net *"_s0", 0 0, L_0x2116cf0;  1 drivers
v0x2111f10_0 .net *"_s1", 0 0, L_0x2116de0;  1 drivers
S_0x2111ff0 .scope generate, "genblock[9]" "genblock[9]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2112200 .param/l "i" 0 3 32, +C4<01001>;
L_0x2115f90 .functor AND 1, L_0x2116fd0, L_0x21170c0, C4<1>, C4<1>;
v0x21122c0_0 .net *"_s0", 0 0, L_0x2116fd0;  1 drivers
v0x21123a0_0 .net *"_s1", 0 0, L_0x21170c0;  1 drivers
S_0x2112480 .scope generate, "genblock[10]" "genblock[10]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2112690 .param/l "i" 0 3 32, +C4<01010>;
L_0x2116ed0 .functor AND 1, L_0x2117260, L_0x2117350, C4<1>, C4<1>;
v0x2112750_0 .net *"_s0", 0 0, L_0x2117260;  1 drivers
v0x2112830_0 .net *"_s1", 0 0, L_0x2117350;  1 drivers
S_0x2112910 .scope generate, "genblock[11]" "genblock[11]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2112b20 .param/l "i" 0 3 32, +C4<01011>;
L_0x21171b0 .functor AND 1, L_0x2117500, L_0x21175f0, C4<1>, C4<1>;
v0x2112be0_0 .net *"_s0", 0 0, L_0x2117500;  1 drivers
v0x2112cc0_0 .net *"_s1", 0 0, L_0x21175f0;  1 drivers
S_0x2112da0 .scope generate, "genblock[12]" "genblock[12]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2112fb0 .param/l "i" 0 3 32, +C4<01100>;
L_0x2117440 .functor AND 1, L_0x21177e0, L_0x21178d0, C4<1>, C4<1>;
v0x2113070_0 .net *"_s0", 0 0, L_0x21177e0;  1 drivers
v0x2113150_0 .net *"_s1", 0 0, L_0x21178d0;  1 drivers
S_0x2113230 .scope generate, "genblock[13]" "genblock[13]" 3 32, 3 32 0, S_0x20a9e70;
 .timescale 0 0;
P_0x2113440 .param/l "i" 0 3 32, +C4<01101>;
L_0x21176e0 .functor AND 1, L_0x2117aa0, L_0x2117b90, C4<1>, C4<1>;
v0x2113500_0 .net *"_s0", 0 0, L_0x2117aa0;  1 drivers
v0x21135e0_0 .net *"_s1", 0 0, L_0x2117b90;  1 drivers
    .scope S_0x20a9e70;
T_0 ;
    %wait E_0x20e7dc0;
    %load/vec4 v0x21136c0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0x21136c0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x21138a0_0, 0, 15;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x21136c0_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x21138a0_0, 0, 15;
T_0.1 ;
    %load/vec4 v0x21136c0_0;
    %parti/s 15, 1, 2;
    %inv;
    %load/vec4 v0x21136c0_0;
    %parti/s 15, 1, 2;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %load/vec4 v0x21136c0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %vpi_call 3 20 "$display", "A: %b;   NOT A: %b;   NEGATIVE A: %b; Twos Compliment: %b", v0x21136c0_0, S<2,vec4,u15>, S<1,vec4,u15>, S<0,vec4,u15> {3 0 0};
    %load/vec4 v0x21137c0_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.2, 4;
    %load/vec4 v0x21137c0_0;
    %parti/s 15, 1, 2;
    %inv;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %store/vec4 v0x2113960_0, 0, 15;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x21137c0_0;
    %parti/s 15, 1, 2;
    %store/vec4 v0x2113960_0, 0, 15;
T_0.3 ;
    %load/vec4 v0x21138a0_0;
    %pad/u 30;
    %load/vec4 v0x2113960_0;
    %pad/u 30;
    %mul;
    %store/vec4 v0x2114a70_0, 0, 30;
    %jmp T_0;
    .thread T_0;
    .scope S_0x20a9e70;
T_1 ;
    %wait E_0x20e77e0;
    %load/vec4 v0x2114990_0;
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
    %load/vec4 v0x21138a0_0;
    %load/vec4 v0x2113960_0;
    %add;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.1 ;
    %load/vec4 v0x21138a0_0;
    %load/vec4 v0x2113960_0;
    %sub;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.2 ;
    %load/vec4 v0x2114d10_0;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.3 ;
    %load/vec4 v0x2114a70_0;
    %parti/s 15, 15, 5;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.4 ;
    %load/vec4 v0x2114a70_0;
    %parti/s 15, 0, 2;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.5 ;
    %load/vec4 v0x21138a0_0;
    %load/vec4 v0x2113960_0;
    %div;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.6 ;
    %load/vec4 v0x21138a0_0;
    %load/vec4 v0x2113960_0;
    %mod;
    %store/vec4 v0x2114c30_0, 0, 15;
    %jmp T_1.7;
T_1.7 ;
    %pop/vec4 1;
    %load/vec4 v0x2114c30_0;
    %parti/s 1, 14, 5;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.8, 4;
    %load/vec4 v0x2114c30_0;
    %inv;
    %pushi/vec4 1, 0, 15;
    %add;
    %inv;
    %store/vec4 v0x2114b50_0, 0, 15;
    %jmp T_1.9;
T_1.8 ;
    %load/vec4 v0x2114c30_0;
    %store/vec4 v0x2114b50_0, 0, 15;
T_1.9 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x20a9cf0;
T_2 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x21152b0_0, 0, 1;
    %end;
    .thread T_2;
    .scope S_0x20a9cf0;
T_3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2115210_0, 0, 1;
    %end;
    .thread T_3;
    .scope S_0x20a9cf0;
T_4 ;
    %delay 50, 0;
    %load/vec4 v0x2115210_0;
    %nor/r;
    %store/vec4 v0x2115210_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_0x20a9cf0;
T_5 ;
    %vpi_call 2 32 "$dumpfile", "alu.vcd" {0 0 0};
    %vpi_call 2 33 "$dumpvars" {0 0 0};
    %vpi_call 2 35 "$display", "Alu Tests Begin" {0 0 0};
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0x2114e90_0, 0, 16;
    %pushi/vec4 0, 0, 16;
    %store/vec4 v0x2114f70_0, 0, 16;
    %delay 100, 0;
    %pushi/vec4 8, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2114e90_0, 4, 15;
    %pushi/vec4 32763, 0, 15;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2114f70_0, 4, 15;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2114e90_0, 4, 1;
    %pushi/vec4 0, 0, 1;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2114f70_0, 4, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x2115040_0, 0, 3;
    %load/vec4 v0x2114e90_0;
    %parti/s 15, 1, 2;
    %load/vec4 v0x2114f70_0;
    %parti/s 15, 1, 2;
    %add;
    %store/vec4 v0x2115350_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0x2115140_0;
    %load/vec4 v0x2115350_0;
    %cmp/ne;
    %jmp/0xz  T_5.0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x21152b0_0, 0, 1;
    %vpi_call 2 54 "$display", "Output should be %d, but is instead %d", v0x2115350_0, v0x2115140_0 {0 0 0};
T_5.0 ;
    %pushi/vec4 307, 0, 16;
    %store/vec4 v0x2114e90_0, 0, 16;
    %pushi/vec4 65228, 0, 16;
    %store/vec4 v0x2114f70_0, 0, 16;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2115040_0, 0, 3;
    %pushi/vec4 32767, 0, 15;
    %store/vec4 v0x2115350_0, 0, 15;
    %delay 1000, 0;
    %load/vec4 v0x2115140_0;
    %load/vec4 v0x2115350_0;
    %cmp/ne;
    %jmp/0xz  T_5.2, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x21152b0_0, 0, 1;
    %vpi_call 2 65 "$display", "Output should be %d, but is instead %d", v0x2115350_0, v0x2115140_0 {0 0 0};
T_5.2 ;
    %load/vec4 v0x21152b0_0;
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
