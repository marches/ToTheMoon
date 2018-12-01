module ALU
(
  output reg[15:0]  result,
  output reg        zero,
  input[15:0]   A,
  input[15:0]   B,
  input[2:0]    command
);
wire[15:0] resultXOR;
wire[29:0] product;
wire[15:0] C,D;

always @(command,A,B) begin
  case(command)
  0: begin result <= A[15:1]+B[15:1]; end   //ADD
  1: begin result <= A[15:1]-B[15:1]; end   //SUB
  2: begin result <= resultAND; end //AND
  3: begin result <= product[29:15]; end //MP0
  4: begin result <= product[14:0]; end //MP1
  5: begin result <= A[15:1]/B[15:1]; end
  6: begin result <= A[15:1]%B[15:1]; end
  endcase
end

always @(A,B,command)begin
  if (result==0)
    zero <= 1;
  //convert to 2s compliment
  if (A[15] == 1) begin
    C <= -(!A);
  end
  if (B[15] == 1) begin
    D <= -(!A);
  end
end



//32 BIT XOR
genvar i;
generate

for (i = 0; i < 15; i = i + 1)
  begin:genblock
      and _orgate(resultAND[i], A[i], B[i]);
  end
endgenerate

//Multiply
product <= A[15:1]*B[15:1];




endmodule
