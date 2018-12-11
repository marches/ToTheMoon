# Timing Pulses and Instructions

On this page we describe in more detail the instructions and their implementation on the AGC.

## Timing Pulses

The AGC made use of groups of subsequcnes. Each subsequence consisted of 12 timing pulses. Simple instructions could be implemented using a single subsequence while more complex instructions required several. Each timing pulse subsequence could trigger up to 5 control pulses. These control pulses performed the actual work of an instruction. It is easiest to think about the control pulses as, for example, write enable or mux flags since the control pulses were responsible, among other things, for reading and writing data into/out of registers.


## Instructions 

The AGC instruction format used a 3-bit opcode and 12-bit address. The eight instructions accessable using with the 3-bit opcode are called the basic instructions. Unsurprisingly, eight instructions was not enough to create a program that could guide a ship to space. Therefore several creative solutions were devised to add additional instructions. In the Block 1 computers, this approach involved the use of "extracode instructions". 

### Block 1 Instructions

We successfully implemented all of the block 1 instructions. While many of the instructions have analogs to the ones used with MIPS CPUs there were a few that we found especially different and interesting.

`Index`: Used to add the data retrieved at the address specified by the instruction to the next instruction. 

`Extend`: Executes the function `Index 5777` and makes the following instruction an "extracode instruction". By convention the address 5777 contains 47777. The `Index` instruction adds 47777 to the extended instruction to form a new opcode. The number 47777 specifically takes advantage of octal end-around-carry. The result of this is that calling `Extend` physically changes the way the central processor sees the instruction that immediately follows. Though the instruction that the assembler sees can be identical to another instruction, by the time it is at the central processor it had been converted. It is no longer interpreted as being in the set of "basic instructions", but instead is an "extended instruction". This as an interesting side effect of "extended instructions" requiring two words of memory while basic instructions only require one. This was necessary because of the limitations of a 3-bit opcode.

`CCS`: Count, Compare, Skip. A complex conditional branch instruction, `CCS` ---- come back to this. CCS-holes!!!! wat

`MASK`: An bitwise AND of memory with the contents of register A. 

## Our Implementation
We chose to implement the timing pulses in a modified form, using a finite state machine. A load state retrieves the instruction living at an address in memory specified by the program counter. The next state is chosen by decoding the opcode, QC and Extracode. Once the FSM falls into a chosen state a counter determines the control signals (pulses) on each rising clock edge. The FSM state returns to the load state once all the chosen state's pulses have been completed.

We chose to implement the instructions from Block 1 as these made use of our ALU and basic jump functionality. While implementing these, it was interesting to note the ramifications of relying on registers that are only accessible through the memory. Many of the steps we take to implement an instruction involve accessing and loading the writable memory (registers). 

We made modifications to the actual instruction implementation, taking advantage of the features of behavioral verilog. For example, the divide instruction implementation in the real ACG required: (1) multiplying the accumulator by 2^14, (2) dividing that number by the value stored in the operand, (3) storing the quotient in the A register (accumulator), (4) storing the negative of the absolute value of the remainder in the Q register and (5) setting the LP register to a positive value determined by the actual control pulse sequences that defined the divide instruction. These sequences, like many portions of the AGC, are not readily accessable in existing documentation. In our implementation, we chose to model the divide command after its multiplication counterpart in a much more straight-forward fashion.


Also, instead of following the previously detailed `EXTEND` implementation, we instead chose to create a 1 bit "Extra Flag" register which written high by the `Extend` function. This allowed us to approximate the correct inputs for "extracode" instructions.

See this page for a complete breakdown of our instruction implementation: [Control Pulse Matrix](https://github.com/marches/ToTheMoon/blob/master/docs/images/ControlPulseMatrix%20.pdf). This PDF shows our timing pulse flags as well detailed steps for performing each instruction command.