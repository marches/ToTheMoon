// ALU operations are all expected to perform for 1's complement
// Operations: AD, SU, MP, DV, MASK
// Input format: 15 bits of data, 1 parity bit
// Output format: 15 bits of data

`define AD 3'd0
`define SU 3'd1
`define MASK 3'd2
`define MP0 3'd3
`define MP1 3'd4
`define DV0 3'd5
`define DV1 3'd6

`include "behavioral_alu.v"

module behavioral_alu_tester();

	reg [15:0] A, B;
	reg [2:0] Op;
	reg [14:0] testRes;	// what the result should be
	wire [14:0] Res;	// what the result is
	reg clk;
	initial clk = 0;
	always #50 clk =! clk;

	ALU dut(.A(A), .B(B), .res(Res), .command(Op),.clk(clk));
	reg dut_passed = 1;

	initial begin


	$dumpfile("alu.vcd");
	$dumpvars();

	$display("Alu Tests Begin");


	// Addition ignoring overflow
	A = 16'b0;
	B = 16'b0;
	#100
	//A = 16'b0111111111111111; // 16383 plus a parity bit
	//B = 16'b0010100010001110; // 13383 plus a parity bit
	A[15:1] = -15'd2;
	B[15:1] = -15'd4;
	A[0] = 0;
	B[0] = 0;
	if(A<0) A = A-1;
	if(B<0) B = B-1;
	Op = `MP1;
	//testRes = 15'b111010001000110; // 29766 (truncated due to overflow)
	testRes = A[15:1]+B[15:1];
	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Output should be %d, but is instead %d", testRes, Res);
	end

	// Addition of +- same number
	A = 16'b0000000100110011; // 153 plus a parity bit
	B = 16'b1111111011001100; // -153 plus a parity bit
	Op = `AD;
	testRes = 15'b111111111111111; // Output of x + -x = -0
	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Output should be %d, but is instead %d", testRes, Res);
	end


	if (dut_passed == 1)begin
		$display("Behavioral ALU Tests Passed");
	end

	$finish();
	end

endmodule
