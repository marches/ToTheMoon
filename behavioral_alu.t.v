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

`include behavioral_alu.v

module behavioral_alu_tester();

	reg [15:0] A, B;
	reg [2:0] Op;
	wire [14;0] Res;

	behavioral_alu dut(A, B, Res, Op);
	dut_passed = 1;

	initial begin
	
	$display("Alu Tests Begin");


	// Addition ignoring overflow
	A = 16'b0111111111111111; // 16383 plus a parity bit
	B = 16'b0110100010001110; // 13383 plus a parity bit
	Op = AD;
	testRes = 15'b111010001000110; // 29766 (truncated due to overflow)
	if (Res !=== testRes) begin
		dut_passed == 0;
		$display("Output should be %d, but is instead %d", testRes, Res);
	end

	// Addition of +- same number
	A = 16'b0000000100110011; // 153 plus a parity bit
	B = 16'b1111111011001100; // -153 plus a parity bit
	Op = AD;
	testRes = 15'b111111111111111; // Output of x + -x = -0
	if (Res !=== testRes) begin
		dut_passed == 0;
		$display("Output should be %d, but is instead %d", testRes, Res);
	end

	// Addition w/o overflow

	if (Res !=== testRes) begin
		dut_passed == 0;
		$display("Output should be %d, but is instead %d", testRes, Res);
	end


	if (dut_passed == 1)
		$display("Behavioral ALU Tests Passed")
	end


endmodule