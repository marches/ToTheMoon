/*
Finite State Machine for Apollo Guidance Computer build
*/

`define AD 3'd0
`define SU 3'd1
`define MASK 3'd2
`define MP0 3'd3
`define MP1 3'd4
`define DV0 3'd5
`define DV1 3'd6

module controlPulses (
	input clk,
	input [2:0] opcode,
	input [1:0] qc,
	input extracode,
	output reg ext_flag, mem_wr, lp_wr, g_wr, q_wr, b_wr, a_wr, y_wr, x_wr, z_wr,
	output reg maddr_mux, mdata_mux, lp_mux, g_mux, b_mux,
	output reg [1:0] q_mux, a_mux, x_mux, z_mux,
	output reg [2:0] alu_op, y_mux
	);

	// state variables
	reg [4:0] state;
	reg [4:0] count; 

	// state constants
	parameter Load = 5'd12;// For executing: Mem(PC) into B
	parameter Tc = 5'd0;
	parameter Ccs = 5'd1;
	parameter Index = 5'd2;
	parameter Xch = 5'd3;
	parameter Cs = 5'd4;
	parameter Ts = 5'd5;
	parameter Ad = 5'd6;
	parameter Mask = 5'd7;
	parameter Su = 5'd8;
	parameter Mp = 5'd9;
	parameter Dv = 5'd10;
	parameter Extend = 5'd11;

	initial state = Load;
	initial count = 0;

	// mapping state to output wr/mux flags
	always @ (posedge clk) begin

		mem_wr <= 0;
		lp_wr <= 0;
		g_wr <= 0; 
		q_wr <= 0; 
		b_wr <= 0; 
		a_wr <= 0; 
		y_wr <= 0;
		x_wr <= 0;
		z_wr <= 0;

		case(state)
			Load : begin
				if (opcode == 3'd0 && extracode == 0) begin
					state <= Tc;
					maddr_mux<=0; b_mux<=0; b_wr<=1;					
					count <= 0;
				end

				else if (opcode == 3'd1 && extracode == 0) begin
					state <= Ccs;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd5 && qc == 2'd0 && extracode == 0) begin
					state <= Index;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd5 && qc == 2'd3 && extracode == 0) begin
					state <= Xch;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd4 && extracode == 0) begin
					state <= Cs;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd5 && qc == 2'd2 && extracode == 0) begin
					state <= Ts;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd6 && extracode == 0) begin
					state <= Ad;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd7 && extracode == 0) begin
					state <= Mask;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd6 && extracode == 1) begin
					state <= Su;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd7 && extracode == 1) begin
					state <= Mp;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd1 && extracode == 1) begin
					state <= Dv;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

				else if (opcode == 3'd5 && qc == 1) begin
					state <= Extend;
					maddr_mux<=0; b_mux<=0; b_wr<=1;
					count <= 0;
				end

			end

			Tc : begin
				if (count == 0) begin
					q_mux<=2'd2; q_wr<=1;
					count <= 1;
				end

				else if (count == 1) begin
					z_mux<=2'd2; z_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					ext_flag<=0;
					count <= 3;
				end

				else if (count == 3) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 4;
				end

				else if (count == 4) begin
					y_mux<=3'd2; y_wr<=1;
					count <= 5;
				end

				else if (count == 5) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Ccs : begin
				if (count == 0) begin
					maddr_mux<=1; a_mux<=2'd0; a_wr<=1;
					count <= 1;
				end

				else if (count == 1) begin
					y_mux<=3'd3; y_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					x_mux<=2'd2; x_wr<=1;
					count <= 3;
				end

				else if (count == 3) begin
					z_mux<=1; z_wr<=1; alu_op<=`AD;
					count <= 4;
				end

				else if (count == 4) begin
					y_mux<=3'd4; y_wr<=1;
					count <= 5;
				end

				else if (count == 5) begin
					x_mux<=2'd3; x_wr<=1;
					count <= 6;
				end

				else if (count == 6) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`AD;
					count <= 7;
				end

				else if (count == 7) begin
					ext_flag<=0;
					state <= Load;
				end
			end

			Index : begin
				if (count == 0) begin
					maddr_mux<=1; a_mux<=2'd0; a_wr<=1;
					count <= 1; 
				end

				else if (count == 1) begin
					x_mux<=2'd2; x_wr<=1;
					count <= 2; 
				end

				else if (count == 2) begin
					y_mux<=3'd2; y_wr<=1; 
					count <= 3; 
				end

				else if (count == 3) begin
					b_mux<=1; b_wr<=1; alu_op<=`AD;
					count <= 4; 
				end

				else if (count == 4) begin
					x_mux<=2'd0; x_wr<=1;
					count <= 5; 
				end

				else if (count == 5) begin
					y_mux<=3'd1; y_wr<=1;
					count <= 6; 
				end

				else if (count == 6) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`AD;
					count <= 7; 
				end

				else if (count == 7) begin
					mdata_mux<=0; mem_wr<=1;
					count <= 8; 
				end

				else if (count == 8) begin
					ext_flag<=0;
					count <= 9; 
				end

				else if (count == 9) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 10; 
				end

				else if (count == 10) begin
					y_mux<=3'd2; y_wr<=1; 
					count <= 11; 
				end

				else if (count == 11) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end
				
			end

			Xch : begin
				if (count == 0) begin
					maddr_mux<=1; g_mux<=0; g_wr<=1;
					count <= 1;
				end
				
				else if (count == 1) begin
					mdata_mux<=0; mem_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					a_mux<=2'd3; a_wr<=1;
					count <= 3;
				end

				else if (count == 3) begin
					ext_flag<=0;
					count <= 4;
				end

				else if (count == 4) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 5;
				end

				else if (count == 5) begin
					y_mux<=3'd2; y_mux<=1;
					count <= 6;
				end

				else if (count == 6) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Cs : begin
				if (count == 0) begin
					maddr_mux<=1; g_mux<=0; g_wr<=1; a_mux<=2'd0; a_wr<=1;
					count <= 1;
				end
				
				else if (count == 1) begin
					a_mux<=2'd2; a_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					ext_flag<=0;
					count <= 3;
				end

				else if (count == 3) begin
					x_mux<=2'd1; x_wr<=1; 
					count <= 4;
				end

				else if (count == 4) begin
					y_mux<=3'd2; y_wr<=1; 
					count <= 4;
				end

				else if (count == 5) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end
			
			end

			Ts : begin
				if (count == 0) begin
					mdata_mux<=0; mem_wr<=1;
					count <= 1; 
				end

				else if (count == 1) begin
					ext_flag<=0;
					count <= 2; 
				end

				else if (count == 2) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 3; 
				end

				else if (count == 3) begin
					y_mux<=3'd2; y_mux<=1;
					count <= 4; 
				end

				else if (count == 4) begin
					z_mux<=2'd1; z_wr<=1;
					state <= Load;
				end

			end

			Ad : begin
				if (count == 0) begin
					maddr_mux<=1; x_mux<=2'd0; x_wr<=1;
					count <= 1;
				end

				else if (count == 1) begin
					y_mux<=3'd1; y_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`AD;
					count <= 3;
				end

				else if (count == 3) begin
					ext_flag<=0;
					count <= 4;
				end

				else if (count == 4) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 5;
				end

				else if (count == 5) begin
					y_mux<=3'd2; y_wr<=1;
					count <= 6;
				end

				else if (count == 6) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Mask : begin
				if (count == 0) begin
					maddr_mux<=1; x_mux<=2'd0; x_wr<=1;
					count <= 1;
				end

				else if (count == 1) begin
					y_mux<=3'd1; y_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`MASK;
					count <= 3;
				end

				else if (count == 3) begin
					ext_flag<=0;
					count <= 4;
				end

				else if (count == 4) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 5;
				end

				else if (count == 5) begin
					y_mux<=3'd2; y_wr<=1;
					count <= 6;
				end

				else if (count == 6) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Su : begin
				if (count == 0) begin
					maddr_mux<=1; x_mux<=2'd0; x_wr<=1;
					count <= 1;
				end

				else if (count == 1) begin
					y_mux<=3'd1; y_wr<=1;
					count <= 2;
				end

				else if (count == 2) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`SU;
					count <= 3;
				end

				else if (count == 3) begin
					ext_flag<=0;
					count <= 4;
				end

				else if (count == 4) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 5;
				end

				else if (count == 5) begin
					y_mux<=3'd2; y_wr<=1;
					count <= 6;
				end

				else if (count == 6) begin
					z_mux<=2'd1; z_wr<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Mp : begin

				if (count == 0) begin
					maddr_mux<=1; x_mux<=2'd0; x_wr<=1;
					count <= 1; 
				end

				else if (count == 1) begin
					y_mux<=3'd1; y_wr<=1;
					count <= 2; 
				end

				else if (count == 2) begin
					lp_mux<=1; lp_wr<=1; alu_op<=`MP0;
					count <= 3; 
				end

				else if (count == 3) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`MP1;
					count <= 4; 
				end

				else if (count == 4) begin
					ext_flag<=0;
					count <= 5; 
				end

				else if (count == 5) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 6; 
				end

				else if (count == 6) begin
					y_mux<=3'd2; y_wr<=1;
					count <= 7; 
				end

				else if (count == 7) begin
					z_mux<=2'd1; z_mux<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Dv : begin

				if (count == 0) begin
					maddr_mux<=1; x_mux<=2'd0; x_wr<=1;
					count <= 1; 
				end

				else if (count == 1) begin
					y_mux<=3'd1; y_wr<=1;
					count <= 2; 
				end

				else if (count == 2) begin
					lp_mux<=1; lp_wr<=1; alu_op<=`DV0;
					count <= 3; 
				end

				else if (count == 3) begin
					a_mux<=2'd1; a_wr<=1; alu_op<=`DV1;
					count <= 4; 
				end

				else if (count == 4) begin
					ext_flag<=0;
					count <= 5; 
				end

				else if (count == 5) begin
					x_mux<=2'd1; x_wr<=1;
					count <= 6; 
				end

				else if (count == 6) begin
					y_mux<=3'd2; y_wr<=1;
					count <= 7; 
				end

				else if (count == 7) begin
					z_mux<=2'd1; z_mux<=1; alu_op<=`AD;
					state <= Load;
				end

			end

			Extend : begin
				ext_flag <= 1; 
				state <= Load;
			end

		endcase

	end

endmodule