`include "memLogic.v"
`timescale 1 ns / 1 ps

module testMemLogic();
	reg clk;
	reg[2:0] eBank;
	reg[4:0] fBank;
	reg superBank;
	reg[11:0] memAddress;
	reg[2:0] opcode;
	wire[15:0] finalAddress;

	memLogic memLogic(clk, eBank, fBank, superBank, memAddress, opcode, finalAddress);

	initial begin

		$display("Starting memory logic test");
		clk = 0;
		opcode = 2'b0; 

		// Testing erasable - don't need eBank
		eBank = 0; fBank = 0; superBank = 0;
		memAddress = 12'b001011001100; #10
		if (finalAddress !== 16'b0000001011001100) $display("Test 1 Failed - %b", finalAddress);

		memAddress = 12'b000100001111; #10
		if (finalAddress !== 16'b0000000100001111) $display("Test 2 Failed - %b", finalAddress);

		memAddress = 12'b001111110000; #10
		if (finalAddress !== 16'b0000000011110000) $display("Test 3 Failed - %b", finalAddress);

		// Testing erasable - need eBank
		eBank = 3'b101; 
		memAddress = 12'b001100110011; #10
		if (finalAddress !== 16'b0000010100110011) $display("Test 4 Failed - %b", finalAddress);

		// Testing fixed fixed memory - only need 12 bit address
		memAddress = 12'b111110001110; #10
		if (finalAddress !== 16'b0000111110001110) $display("Test 5 Failed - %b", finalAddress);

		memAddress = 12'b100001110001; #10
		if (finalAddress !== 16'b0000100001110001) $display("Test 6 Failed - %b", finalAddress);

		// Testing fixed memory - needs fBank but not superBank
		fBank = 5'b10101;
		memAddress = 12'b011111100000; #10
		if (finalAddress !== 16'b0101011111100000) $display("Test 7 Failed - %b", finalAddress);

		fBank = 5'b01001;
		memAddress = 12'b010000011111; #10
		if (finalAddress !== 16'b0010010000011111) $display("Test 8 Failed - %b", finalAddress);

		fBank = 5'b00100;
		memAddress = 12'b011010101010; #10
		if (finalAddress !== 16'b0001001010101010) $display("Test 9 Failed - %b", finalAddress);

		// Testing fixed memory - needs fBank and superBank
		superBank = 1'b0;
		fBank = 5'b11100;
		memAddress = 12'b011111111111; #20
		if (finalAddress !== 16'b0111001111111111) $display("Test 10 Failed - %b", finalAddress);

		superBank = 1'b1;
		fBank = 5'b11001;
		memAddress = 12'b010000000000; #10
		if (finalAddress !== 16'b1000010000000000) $display("Test 11 Failed - %b", finalAddress);

		$display("Finished memory logic test");

	end // initial
endmodule // testMemLogic