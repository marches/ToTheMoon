`timescale 1 ns / 1 ps

module memLogic (
	input clk,
	input[2:0] eBank,
	input[4:0] fBank,
	input superBank,
	input[11:0] memAddress,
	input[2:0] opcode,
	output reg[15:0] finalAddress	
);

always @(*) begin

	if (memAddress[11:10] == 2'b00 || opcode == 3'b101) begin
		if(memAddress[9:8] == 2'b11) begin
			finalAddress <= {5'b0, eBank, memAddress[7:0]};
		end // if(memAddress[10:9] === 2'b11)
		else begin
			finalAddress <= {6'b0, memAddress[9:0]};
		end // else
	end //  if (memAddress[12:11] === 0) begin


	else if (memAddress[11:10] == 2'b01) begin
		if (fBank[4:3] == 2'b11) begin
			if (superBank == 1'b1) begin
				finalAddress <= {3'b100, fBank[2:0], memAddress[9:0]};
			end
			else begin
				finalAddress <= {1'b0, fBank, memAddress[9:0]};
			end
		end // if (fBank[4:3] == 2'b11)
		else begin
			finalAddress <= {1'b0, fBank, memAddress[9:0]};
		end // else
	end // else if (memAddress[12:11] === 2'b01)

	else begin
		finalAddress <= {4'b0, memAddress};
	end // else
end

endmodule