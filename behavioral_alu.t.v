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

	A = 16'b0;
	B = 16'b0;
	#100

	// Addition ignoring overflow
	Op = `AD;
	A[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	B[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	testRes = A[15:1]+B[15:1];
	#100

	if(A[15]==1) A[15:1] = A[15:1]-1;
	if(B[15]==1) B[15:1] = B[15:1]-1;

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 1 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Addition w/ negative number
	Op = `AD;
	A[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	B[15:1] = -15'd4;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	testRes = 15'd4 + -(15'd4);
	#100

	if(A[15]==1) A[15:1] = A[15:1]-1;
	if(B[15]==1) B[15:1] = B[15:1]-1;

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 2 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	//Subtraction w/ negative number
	Op = `SU;
	A[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	B[15:1] = -15'd4;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	#100

	if(A[15]==1) A[15:1] = A[15:1]-1;
	if(B[15]==1) B[15:1] = B[15:1]-1;

	testRes = B[15:1] - A[15:1];

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 3 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Subtraction 
	Op = `SU;
	A[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	B[15:1] = 15'd3;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	#100

	if(A[15]==1) A[15:1] = A[15:1]-1;
	if(B[15]==1) B[15:1] = B[15:1]-1;

	testRes = B[15:1] - A[15:1];

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 4 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Mask 0 result
	Op = `MASK;
	A = 16'b1110111011101110;
	B = 16'b0001000100010001;

	testRes = 16'b000000000000000;

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 5 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Mask nonzero result
	Op = `MASK;
	A = 16'b1110111011101110;
	B = 16'b1110111011101110;

	testRes = 16'b111011101110111;

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 6 Failed. Output should be %d, but is instead %d", testRes, Res);
	end


	// Multiply test upper product
	Op = `MP1;
	A[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	B[15:1] = 15'd3;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	testRes = 16'b0000000000000000;

	#1000

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 7 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Multiply test lower product
	Op = `MP0;
	A[15:1] = 15'd4;			//Actual number that you want to manipulate in decimal
	B[15:1] = 15'd3;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	testRes = 15'd4 * 15'd3;

	#1000

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 8 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Divide test upper product
	Op = `DV0;
	B[15:1] = 15'd10;			//Actual number that you want to manipulate in decimal
	A[15:1] = 15'd2;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	testRes = 16'b0000000000000000;

	#1000

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 9 Failed. Output should be %d, but is instead %d", testRes, Res);
	end

	// Divid test lower product
	Op = `DV1;
	B[15:1] = 15'd10;			//Actugit al number that you want to manipulate in decimal
	A[15:1] = 15'd2;			//Actual number that you want to manipulate in decimal
	A[0] = 0;
	B[0] = 0;

	testRes = 15'd10 / 15'd2;

	#1000

	#1000
	if (Res !== testRes) begin
		dut_passed = 0;
		$display("Test 10 Failed. Output should be %d, but is instead %d", testRes, Res);
	end
		

	if (dut_passed == 1)begin
		$display("Behavioral ALU Tests Passed");
	end

	$finish();
	end

	// 

endmodule
