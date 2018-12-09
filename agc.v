`include "behavioral_alu.v"
`include "memory.v"

module agc
(
  input clk,
  input[2:0] alu_op,
  input[1:0] MAddr_MUX, Q_MUX,A_MUX,X_MUX,Z_MUX, Y_MUX,
  input LP_MUX, B_MUX, LP_WE, G_WE, Q_WE, B_WE, A_WE, Y_WE, X_WE, Z_WE,mem_WE
  );
  wire[14:0] preU;
  wire[15:0] memOut,AorNegA,imm, U;
  wire[11:0] mAddr,S;
  reg[15:0] regY,regX,regLP,regG,regQ, regB,regA,regZ;

  ALU alu(.res(preU),.A(regX),.B(regY),.command(alu_op),.clk(clk));
  U[15:1] = preU;
  U[0] = 0; //temp should be set by parity bit
  AorNegA = regA; //or negative A based on whether pos or neg module (ccs)
  imm = 16'd1; //or 2 or 3 or 4 or 0 baseed on module (ccs)
  S = regB[1:12];
  memory mem(.clk(clk),.memAddress(mAddr),.dataIn(regA[12:1]),.writeEnable(mem_WE),.result(memOut));
  assign mAddr <= (MAddr_MUX == 0) ? PC_addr : ((MAddr_MUX == 1) ? S : regA);

  wire[15:0] inLP, inG, inQ, inB, inA, inY, inX, inZ;
  assign inLP = (LP_WE) ? ((LP_MUX == 0) ? memOut : U);
  assign inG  = (G_WE)  ? memOut;
  assign inQ  = (Q_WE)  ? ((Q_MUX == 0) ? memOut : ((Q_MUX == 1) ? U : regZ));
  assign inB  = (G_WE)  ? ((B_MUX == 0) ? memOut : U);
  assign inA  = (A_WE)  ? ((A_MUX == 0) ? memOut : ((A_MUX == 1) ? U : ((A_MUX == 2) ? (~A) : regG)));
  assign inY  = (Y_WE)  ? ((Y_MUX == 0) ? memOut : ((Y_MUX == 1) ? regA : ((Y_MUX == 2) ? 16'd1: imm )));
  assign inX  = (X_WE)  ? ((X_MUX == 0) ? memOut : ((X_MUX == 1) ? regZ : ((X_MUX == 2) ? S : AorNegA)));
  assign inZ  = (Z_WE)  ? ((Z_MUX == 0) ? memOut : ((Z_MUX == 1) ? U : regB));
  always (@posedge clk) begin
    regLP <= inLP;
    regG <= inG ;
    regQ <= inQ ;
    regB <= inB ;
    regA <= inA ;
    regY <= inY ;
    regX <= inX ;
    regZ <= inZ ;
  end
endmodule

//MUX:
// assign cond ? in1 : in2;
