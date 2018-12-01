`timescale 1 ns / 1 ps

module parityBit (
	input[14:0] initialInput,
	output[15:0] finalOutput
);

wire inverseParity;

assign finalOutput[15:1] = initialInput;

assign inverseParity = initialInput[0] ^ initialInput[1] ^ initialInput[2] ^ initialInput[3] ^ initialInput[4] ^ initialInput[5] ^
				 initialInput[6] ^ initialInput[7] ^ initialInput[8] ^ initialInput[9] ^ initialInput[10] ^ initialInput[11] ^
				 initialInput[12] ^ initialInput[12] ^ initialInput[14];

not(finalOutput[0], inverseParity);

endmodule