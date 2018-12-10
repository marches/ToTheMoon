`include "behavioral_alu.v"
`include "memory.v"
`include "parityBit.v"
`include "controlPulses.v"
`include "ccsLogic.v"

module agc
(
  input clk
  );
  //Bank parameters set by users with buttons
    //Remain constant for one program
  parameter[2:0] eBank = 000;
  parameter[4:0] fBank = 00000;
  parameter superBank = 1'd0;

  //Instantiating all regs and wires
  wire[14:0] preU;
  wire[15:0] memOut,aNotA, U;
  wire[11:0] mAddr,S, PC_addr;
  wire[2:0] alu_op, Y_MUX, pcAdd;
  wire[1:0] Q_MUX,A_MUX,X_MUX,Z_MUX;
  wire  MAddr_MUX, LP_MUX, B_MUX, LP_WE, G_WE, Q_WE, B_WE, A_WE, Y_WE, X_WE, Z_WE,mem_WE, data_in_MUX, new_extraflag,G_MUX,aAdd;
  reg[15:0] regY,regX,regLP,regG,regQ, regB,regA,regZ;
  reg extraflag;
  initial extraflag = 0;
  initial regZ[15:1] = 15'd11;

  //Control Pulse Driven FSM
  controlPulses control(.clk(clk),.opcode(regB[15:13]),.qc(regB[12:11]),.extracode(extraflag),.ext_flag(new_extraflag),.mem_wr(mem_WE),.lp_wr(LP_WE), .g_wr(G_WE), .q_wr(Q_WE), .b_wr(B_WE), .a_wr(A_WE), .y_wr(Y_WE), .x_wr(X_WE), .z_wr(Z_WE), .maddr_mux(MAddr_MUX), .mdata_mux(data_in_MUX), .lp_mux(LP_MUX), .g_mux(G_MUX), .b_mux(B_MUX), .q_mux(Q_MUX), .a_mux(A_MUX), .x_mux(X_MUX), .z_mux(Z_MUX), .y_mux(Y_MUX), .alu_op(alu_op));

  //Choose immediate
  ccsLogic ccs(.A(regA),.pcAdd(pcAdd),.aAdd(aAdd),.aNotA(aNotA));

  //Execute ALU
  ALU alu(.res(preU),.A(regX),.B(regY),.command(alu_op),.clk(clk));

  //Generate Parity Bit
  parityBit parity(.initialInput(preU),.finalOutput(U));

  //Pulling out pieces of registers
  assign S = regB[12:1];
  assign PC_addr = regZ[12:1];

  //Interfacing with memory
  memory mem(.clk(clk),.eBank(eBank),.fBank(fBank),.superBank(superBank),.memAddress(mAddr),.dataIn(regA),.writeEnable(mem_WE),.regZ(regZ),.regX(regX),.regY(regY),.regA(regA),.regB(regB),.regQ(regQ),.regG(regG),.regLP(regLP),.result(memOut));

  //Address for memory mux
  assign mAddr = (MAddr_MUX == 0) ? PC_addr : ((MAddr_MUX == 1) ? S : regA);

  //MUXes with reg enables
  wire[15:0] inLP, inG, inQ, inB, inA, inY, inX, inZ;
  assign inLP = (LP_WE) ? ((LP_MUX == 0) ? memOut : U) : inLP;
  assign inG  = (G_WE)  ? memOut : inG;
  assign inQ  = (Q_WE)  ? ((Q_MUX == 2'd0) ? memOut : ((Q_MUX == 1) ? U : regZ)) : inQ;
  assign inB  = (G_WE)  ? ((B_MUX == 2'd0) ? memOut : U) : inB;
  assign inA  = (A_WE)  ? ((A_MUX == 2'd0) ? memOut : ((A_MUX == 1) ? U : ((A_MUX == 2) ? (~regA) : regG))) : inA;
  assign inY  = (Y_WE)  ? ((Y_MUX == 2'd0) ? memOut : ( (Y_MUX == 1) ? regA : ((Y_MUX == 2) ? 16'd1: ( (Y_MUX == 3) ? aAdd : pcAdd) ) ) ) : inY;
  assign inX  = (X_WE)  ? ((X_MUX == 2'd0) ? memOut : ((X_MUX == 1) ? regZ : ((X_MUX == 2) ? S : aNotA))) : inX;
  assign inZ  = (Z_WE)  ? ((Z_MUX == 2'd0) ? memOut : ((Z_MUX == 1) ? U : regB)) : inZ;

  //Write reg only on posedges
  always @(posedge clk) begin
    extraflag = new_extraflag;
    regLP = inLP;
    regG = inG ;
    regQ = inQ ;
    regB = inB ;
    regA = inA ;
    regY = inY ;
    regX = inX ;
    regZ = inZ ;
  end
endmodule
