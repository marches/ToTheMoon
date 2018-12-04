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
always @(negedge clk) begin
 //convert to 2s compliment
  if (A[15] == 1) begin  C = -(~A[15:1]); end
  else C = A[15:1];
  $display("A: %b;   NOT A: %b;   NEGATIVE A: %b; Twos Compliment: %b",A,~A[15:1],-A[15:1],-(~A[15:1]));

  if (B[15] == 1) begin  D = -(~B[15:1]); end
  else D = B[15:1];

  //Multiply
  product = C*D;
end
//32 BIT AND
genvar i;
generate

for (i = 0; i < 15; i = i + 1)
  begin:genblock
      and _andgate(resultAND[i], A[i+1], B[i+1]);
  end
endgenerate

always @(posedge clk)begin
  case(command)
  0: begin result = C+D; end   //ADD
  1: begin result = C-D; end   //SUB
  2: begin result = resultAND; end //AND
  3: begin result = product[29:15]; end //MP0
  4: begin result = product[14:0]; end //MP1
  5: begin result = C/D; end //DV0
  6: begin result = C%D; end //DV1
  endcase
  if (result[14] == 1 && command != 2) res = ~(-result);
  else res = result;
end

endmodule
