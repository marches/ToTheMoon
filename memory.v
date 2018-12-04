`timescale 1 ns / 1 ps

module memory (
	input clk,
	input[15:0] memAddress,
	input[15:0] dataIn,
	input writeEnable,
	output[15:0] result	
);

reg[15:0] memory[65535:0];

 always @(posedge clk) begin
        if(writeEnable)
            memory[memAddress] <= dataIn;
   	 	end

    assign result = memory[memAddress];

endmodule