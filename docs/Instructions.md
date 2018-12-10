# Instructions and Timing

## Timing Pulses

The Apollo guidance 


## Opcodes 

## Our Implementation
We chose to implement the timing pulses in a modified form, using a finite state machine. A load state retrieves the instruction living at an address in memory specified by the program counter. The next state is chosen by decoding the opcode, QC and Extracode. Once the FSM falls into a chosen state a counter determines the control signals (pulses) on each rising clock edge. The FSM state returns to the load state once all the chosen state's pulses have been completed.

See this page for a complete breakdown of our instruction implementation: [Control Pulse Matrix](https://github.com/marches/ToTheMoon/blob/master/docs/images/ControlPulseMatrix%20.pdf). This PDF shows our timing pulse flags as well as the steps necessary to perform the instructions we chose to implement. It is interesting to note here the ramifications of relying on registers that are only accessible through the memory as many of the steps we must take to implement an instruction involve loading 

We chose to implement the instructions . These instructions were all present in Block 1. 

