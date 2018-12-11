module ALU
(
  output reg[14:0]  res,
  input[15:0]   A,
  input[15:0]   B,
  input[2:0]    command,
  input clk
);
wire[14:0] resultAND;
reg[29:0] product;
reg[14:0] C,D,result;



//Setting result
always @(*) begin
 //convert to 2s compliment
 
  if (A[15] == 1 && command != 5 && command != 6) begin  C <= -(~A[15:1]);  end
  else if (A[15] == 1 && (command == 5 || command == 6)) begin C = ~A[15:1]; end
  else C = A[15:1];

  if (B[15] == 1 && command != 5 && command != 6) begin  D <= -(~B[15:1]); end
  else if (B[15] == 1 && (command == 5 || command == 6)) begin D <= ~B[15:1]; end
  else D <= B[15:1];
end
//32 BIT AND
genvar i;
generate

for (i = 0; i < 15; i = i + 1)
  begin:genblock
      and _andgate(resultAND[i], A[i+1], B[i+1]);
  end
endgenerate

always @(C, D, command)begin

  //Multiply
  product = C*D;
  case(command)
  0: begin result = C+D; end   //ADD
  1: begin result = D-C; end   //SUB
  2: begin result = resultAND; end //AND
  3: begin result = product[14:0]; end //MP0
  4: begin result = product[29:15]; end //MP1
  5: begin result = D%C; end //DV0
  6: begin result = D/C; end //DV1
  endcase
  if (result[14] == 1 && command != 2 && A[15] != B[15] && command != 5 && command != 6) res = ~(-result);
  else if (command == 6 && A[15] != B[15]) res = ~result;
  else res = result;
end

endmodule
