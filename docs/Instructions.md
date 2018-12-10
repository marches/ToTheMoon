# Timing and Instructions

## Timing Pulses

The Apollo guidance 


## Instructions 

### Block 1 Instructions

## Our Implementation
We chose to implement the timing pulses in a modified form, using a finite state machine. A load state retrieves the instruction living at an address in memory specified by the program counter. The next state is chosen by decoding the opcode, QC and Extracode. Once the FSM falls into a chosen state a counter determines the control signals (pulses) on each rising clock edge. The FSM state returns to the load state once all the chosen state's pulses have been completed.

We chose to implement the instructions from Block 1 as these made use of our ALU and basic jump functionality. While implementing these, it was interesting to note the ramifications of relying on registers that are only accessible through the memory. Many of the steps we take to implement an instruction involve accessing and loading the writable memory (registers). 

We made some modifications to the actual instruction implementation, taking advantage of the features of behavioral verilog. For example, the divide instruction implementation in the real ACG required

Another choice we made surrounded the `Extend` function. In the real AGC calling `Extend`physically changed the way the central processor saw the following instruction. We instead chose to create a 1 bit "Extra Flag" register which was written ---- This allowed us to use the correct opcode and QC. 

See this page for a complete breakdown of our instruction implementation: [Control Pulse Matrix](https://github.com/marches/ToTheMoon/blob/master/docs/images/ControlPulseMatrix%20.pdf). This PDF shows our timing pulse flags as well as the steps necessary to perform the instructions we chose to implement. 