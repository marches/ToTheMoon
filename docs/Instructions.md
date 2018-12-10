# Instructions

## Timing Pulses

The Apollo guidance 


## Opcodes 

## Our Implementation
We chose to implement the timing pulses in a modified form, using a finite state machine. A load state retrieves the instruction living at an address in memory specified by the program counter. The next state is chosen by decoding the opcode, QC and Extracode. Once the FSM falls into a chosen state a counter determines the control signals (pulses) on each rising clock edge. The FSM state returns to the load state once all the chosen state's pulses have been completed.

See this page for a complete breakdown of our instruction timing pulses: [Control Pulse Matrix](https://github.com/marches/ToTheMoon/blob/master/docs/images/ControlPulseMatrix%20.pdf)

