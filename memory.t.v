`include "memory.v"
`timescale 1 ns / 1 ps

module testMemory();
	reg clk;
	reg[2:0] eBank;
	reg[4:0] fBank;
	reg superBank;
	reg[11:0] memAddress;
	reg[15:0] dataIn;
	reg writeEnable;
	reg[2:0] opcode;
	reg[15:0] regZ, regX, regY, regA, regB, regQ, regG, regLP;
	wire[15:0] result;
	wire[15:0] finalAddress;

	memory memory(clk, eBank, fBank, superBank, memAddress, dataIn, writeEnable, opcode, regZ, regX, regY, regA, regB, regQ, regG, regLP, result, finalAddress);

	initial begin 

		opcode = 2'b0;
		regZ = 15'd10;
		regX = 15'd11;
		regY = 15'd12;
		regA = 15'd13;
		regB = 15'd14;
		regQ = 15'd15;
		regG = 15'd16;
		regLP = 15'd17;

		eBank = 3'b0;
		fBank = 5'b0;
		superBank = 1'b0;

		$display("Starting memory test");
		clk = 0;
		memAddress = 12'd200;
		dataIn = 16'd100;
		writeEnable = 1'b1; #10
		clk = 1; #10
		if(result !== 16'd100) $display("Test 1 failed - %b, %b", result, finalAddress);

		clk = 0;
		memAddress = 12'd100;
		dataIn = 16'd200;
		writeEnable = 1'b1; #10
		clk = 1; #10
		if(result !== 16'd200) $display("Test 2 failed - %b, %b", result, finalAddress);

		clk = 0;
		memAddress = 12'd200;
		dataIn = 16'd200;
		writeEnable = 1'b0; #10
		clk = 1; #10
		if(result !== 16'd100) $display("Test 3 failed - %d, %b", result, finalAddress);

		clk = 0;
		memAddress = 12'd100;
		dataIn = 16'd400;
		writeEnable = 1'b0; #10
		clk = 1; #10
		if(result !== 16'd200) $display("Test 4 failed - %b, %b", result, finalAddress);

		$display("Finished memory test");

	end // initial

endmodule // testmemReg