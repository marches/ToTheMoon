`include "controlPulses.v"

module testcontrolpulses();

	reg clk;
	reg [2:0] opcode;
	reg [1:0] qc;
	reg extracode;
	wire ext_flag, mem_wr, lp_wr, g_wr, q_wr, b_wr, a_wr, y_wr, x_wr, z_wr;
	wire maddr_mux, mdata_mux, lp_mux, g_mux, b_mux;
	wire [1:0] q_mux, a_mux, x_mux, z_mux;
	wire [2:0] alu_op, y_mux;

	reg failed = 0 ;

	controlPulses pulses(
	clk,
	opcode,
	qc,
	extracode,
	ext_flag, mem_wr, lp_wr, g_wr, q_wr, b_wr, a_wr, y_wr, x_wr, z_wr,
	maddr_mux, mdata_mux, lp_mux, g_mux, b_mux,
	q_mux, a_mux, x_mux, z_mux,
	alu_op, y_mux);

	initial begin
		$dumpfile("controlpulses.vcd");
		$dumpvars();

		clk = 0; #10
		clk = 1; #10

		clk = 0; #10
		clk = 1; #10

		$display("Testing MASK");
		opcode = 3'd7; extracode = 0;

		clk = 0; #10
		clk = 1; #10

		if (pulses.state != 5'd7) begin
			failed = 1; 
			$display("Not in mask");
		end

		clk = 0; #10
		clk = 1; #10

		clk = 0; #10
		clk = 1; #10

		clk = 0; #10
		clk = 1; #10

		clk = 0; #10
		clk = 1; #10

		clk = 0; #10
		clk = 1; #10

		clk = 0; #10
		clk = 1; #10

		$display("Testing extend");
		opcode = 3'd5; qc = 1;

		clk = 0; #10
		clk = 1; #10

		if (pulses.state != 5'd12) begin
			failed = 1; 
			$display("Not in load");
		end

		clk = 0; #10
		clk = 1; #10

		
		clk = 0; #10
		clk = 1; #10


		clk = 0; #10
		clk = 1; #10

		if (pulses.state != 5'd11) begin
			failed = 1; 
			$display("Not in EXTEND");
		end

		clk = 0; #10
		clk = 1; #10


		clk = 0; #10
		clk = 1; #10

		if (failed == 1) begin
			$display("tests failed");
		end

		$finish;

	end

endmodule