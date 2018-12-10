`include "memLogic.v"
`timescale 1 ns / 1 ps

module memory (
	input clk,
	input[2:0] eBank,
	input[4:0] fBank,
	input superBank,
	input[11:0] memAddress,
	input[15:0] dataIn,
	input writeEnable,

	input[15:0] regZ, regX, regY, regA, regB, regQ, regG, regLP,

	output[15:0] result,
	output[15:0] finalAddress
	// output didWrite
);

reg[15:0] memory[65535:0];

wire[15:0] finalAddress1;

memLogic memLogic(
	.clk(clk),
	.eBank(eBank),
	.fBank(fBank),
	.superBank(superBank),
	.memAddress(memAddress),
	.finalAddress(finalAddress1)
);

assign finalAddress = finalAddress1;

always @(posedge clk) begin
        if(writeEnable) begin
            memory[finalAddress] <= dataIn;
   	 	end

   	memory[0] <= regZ;
   	memory[1] <= regX;
   	memory[2] <= regY;
   	memory[3] <= regA;
   	memory[4] <= regB;
   	memory[5] <= regQ;
   	memory[6] <= regG;
   	memory[8] <= regLP;
   	memory[9] <= 0;
   	memory[10] <= 1;

end 

assign result = memory[finalAddress];

endmodule