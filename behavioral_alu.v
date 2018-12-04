module ALU
(
  output reg[14:0]  result,
  input[15:0]   A,
  input[15:0]   B,
  input[2:0]    command
);
wire[14:0] resultAND;
reg[29:0] product;
reg[14:0] C,D;

//32 BIT AND
genvar i;
generate

for (i = 0; i < 14; i = i + 1)
  begin:genblock
      and _andgate(resultAND[i], C[i], D[i]);
  end
endgenerate

//Setting result
always @(command,A,B) begin
 //convert to 2s compliment
  if (A[15] == 1) begin  C <= -(!A[15:1]); end
  else C <= A[15:1];

  if (B[15] == 1) begin  D <= -(!B[15:1]); end
  else D <= B[15:1];

  //Multiply
  product <= C*D;

  case(command)
  0: begin result <= C+D; end   //ADD
  1: begin result <= C-D; end   //SUB
  2: begin result <= resultAND; end //AND
  3: begin result <= product[29:15]; end //MP0
  4: begin result <= product[14:0]; end //MP1
  5: begin result <= C/D; end //DV0
  6: begin result <= C%D; end //DV1
  endcase
  if (result[14] == 1) result <= result-1;
end

endmodule
