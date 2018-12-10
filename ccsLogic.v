module ccsLogic
(
	input[15:0] A,
	output reg [2:0] pcAdd,
	output reg aAdd,
	output reg [15:0] aNotA
);
	always @* begin
		if (A[15] == 0) begin
			pcAdd = 3'd2;
			aAdd = 0;
			aNotA = A;
		end

		else if (~A[15] == 1) begin
			pcAdd = 3'd1;
			aAdd = 1;
			aNotA = A;
		end

		else if (A == 16'b1111111111111111) begin
			pcAdd = 3'd4; 
			aAdd = 0;
			aNotA = A;
		end

		else if (A[15] == 1) begin
			pcAdd = 3'd3; 
			aAdd = 1;
			aNotA = ~A;
		end
	end

endmodule
