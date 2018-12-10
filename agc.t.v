//test Add
//Add opcode - 010

//Assuming that the accumulator starts at zero

module agcTest ();
	reg clk;
	reg[15:0] instruction;
	wire[15:0] a;

	acg(clk, instruction, a); //we will need to do something with the clk

	initial begin
		instruction = 16'b0100000000010100; //register 10 contains the value of 1
		if (accumulator !== 16'b0000000000000010) $display("Add test 1 failed - %b", accumulator); //accumulator is 1

		instruction = 16'b0100000000010100;
		if (accumulator !== 16'b0000000000000100) $display("Add test 2 failed - %b", accumulator); //accumulator is 2

		instruction = 16'b0100000000010100;
		if (accumulator !== 16'b0000000000000111) $display("Add test 3 failed - %b", accumulator); //accumulator is 3

		instruction = 16'b1011000011001001; // should be saving a word to address 100 - TS

		instruction = 16'b1110000000010100; // mask with the register that contains 1
		if (accumulator !== 16'b0000000000000010) $display("Mask test 1 failed - %b", accumulator); //01 and 11 is 01

		instruction = 16'b1011100011001000; // should swap whats in the accumulator and memory of 100 -XCH
		if (accumulator !== 16'b0000000000000111) $display("TS and XCH test 1 failed - %b", accumulator); 
	end

endmodule