// Finite state machine for Apollo

module fsm (// TODO!
	);

parameter Load = 5'd0;
parameter Tc = 5'd1;
parameter Ccs = 5'd2;
parameter Index = 5'd3;
parameter Xch = 5'd4;
parameter Cs = 5'd5;
parameter Ts = 5'd6;
parameter Ad = 5'd7;
parameter Mask = 5'd8;
parameter Su = 5'd9;
parameter Mp = 5'd10;
parameter Dv = 5'd11;
parameter Extend = 5'd12;

// things with registers: z, q, b, g, x, y, c, lp, ignore s/sq

	always @ (posedge clk)
	begin
		
		if (state === 5'dx) begin
			state <= Load;
		end

		case(state)
		Load : begin
			if (Opcode == 0 && Extracode == 0) begin
				state <= Tc;
			end
			else if (opcode == 1 && Extracode == 0)begin
				state <= Ccs;
			end
			else if (opcode == 5 && Extracode == 0 && QC == 0) begin
				state <= Index;
			end
			else if (opcode == 5 && Extracode == 0 && QC == 3) begin
				state <= Xch;
			end
			else if (opcode == 4 && Extracode == 0) begin
				state <= Cs;
			end
			else if (opcode == 5 && Extracode == 2) begin
				state <= Ts;
			end
			else if ()

		end

		end

	end

endmodule