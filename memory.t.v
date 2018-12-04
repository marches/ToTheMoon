`include "memory.v"
`timescale 1 ns / 1 ps

module testMemory();
	reg clk;
	reg[15:0] memAddress;
	reg[15:0] dataIn;
	reg writeEnable;
	wire[15:0] dataOut;

	memory memory(clk, memAddress, dataIn, writeEnable, dataOut);

	initial begin 

		$display("Starting memory test");
		clk = 0; #10
		memAddress = 16'b0;
		dataIn = 16'd100;
		writeEnable = 1'b1;
		clk = 1; #10
		if(dataOut !== 16'd100) $display("Test 1 failed - %d", dataOut);

		clk = 0; #10
		memAddress = 16'b1000;
		dataIn = 16'd200;
		writeEnable = 1'b1;
		clk = 1; #10
		if(dataOut !== 16'd200) $display("Test 2 failed - %d", dataOut);

		clk = 0; #10
		memAddress = 16'b0;
		dataIn = 16'd200;
		writeEnable = 1'b0;
		clk = 1; #10
		if(dataOut !== 16'd100) $display("Test 3 failed - %d", dataOut);

		clk = 0; #10
		memAddress = 16'b1000;
		dataIn = 16'd400;
		writeEnable = 1'b0;
		clk = 1; #10
		if(dataOut !== 16'd200) $display("Test 4 failed - %d", dataOut);

		$display("Finished memory test");

	end // initial

endmodule // testmemReg