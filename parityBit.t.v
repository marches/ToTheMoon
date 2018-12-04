`include "parityBit.v"
`timescale 1 ns / 1 ps

module testParityBit ();
	reg[14:0] initialInput;
	wire[15:0] finalOutput;

	parityBit parBit(.initialInput(initialInput), .finalOutput(finalOutput));
	initial begin
		$display("Testing Parity Bit");

		initialInput=15'b111111111111111; #10
		if (finalOutput !== 16'b1111111111111110) $display("Test 1 Failed - %b", finalOutput);

		initialInput=15'b000000000000000; #10
		if (finalOutput !== 16'b0000000000000001) $display("Test 2 Failed - %b", finalOutput);
		

		$display("Parity Test Finished",);
	end // testParityBitend
endmodule