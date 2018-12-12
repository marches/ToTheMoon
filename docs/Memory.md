# Memory


## Fixed Memory

The fixed memory was also known as core rope memory. It was read-only memory. Core rope memory consisted of wires woven through ferrite cores that acted as transformers. Each core was set to either a zero or a one and the wires were woven through different core patterns to create bit strings. Up to 64 wires could be run through each core.

Rope core memory was made by hand by women who were adept at weaving. For this reason, it is sometimes also referred to as little-old-lady memory or LOL memory.

There was 34K words (each word was 16 bits) of fixed memory available on the Apollo Guidance Computer. The fixed memory was used to store things such as the locations of stars, fixed instruction sets, and any other constants that the astronauts would need. The instructions written in the rope core memory were often refferred to as “software as hardware” because the software instructions had to be woven into hardware months before the mission occurred and there was no way to change them after the fact.

## Erasable Memory

The erasable memory on the Apollo Guidance Computer was magnetic core memory.

There was 2K words of erasable memory available on the Apollo Guidance Computer. The erasable memory was used to store any values that were not constant and instruction sets that could change (instructions could be changed with the INDEX command).

Because of the extra wires needed for erasable memory, it took up a lot more space than fixed memory which is why there was only 2K words of erasable memory available on the AGC. The engineers had to rely on fixed memory as much as possible because of the limitations of the erasable memory.

## Registers

The Apollo Guidance Computer had eight 16-bit flip-flop registers. All of theses registers were frequently accessed and written to. The Apollo Guidance Computer only had room for eight flip-flop registers because they were large and required a lot of power.

The eight registers were:

1. Z – this register held our program counter
2. X – this register was one of the inputs to the ALU
3. Y – this register was the other input to the ALU
4. A – this register was the accumulator
5. B – this register stored the current instruction
6. Q – this register stored the remainder in division operations
7. G – this register was used as a buffer
8. LP – this register stored the lower values of multiply

The AGC also had several 1-5 bit registers that were used to store things like the extra bits needed for memory addressing and all flags.

The registers addresses are just the first 8 addresses of the memory, and they can be accessed just like any other word in memory.


## Addressing Memory

Learning how to address all of the memory banks was one of the trickiest parts of this project. The memory address in the instructions are only 12 bits long, but 16 bits are needed to fully address all memory locations. The 16 bit address is assembled from three different memory bank registers: a 1 bit Super Bank (s bank), a 3 bit Erasable Bank (e bank), and a 5 bit Fixed Bank (f bank). The programmer would have to set all of these bank values to enable the computer to access the right memory at the right time.

The logic all depends on what the opcode is, what is in bits 12 and 11 of the memory address, and what is in all of the banks.

How the memory logic works:

When we mention bit numbers, we are always referring to the location of the bit in the 12 bit memory address.

1. The opcode is 5 or bits 12 and 11 are 0 – then we are addressing erasable memory. The erasable memory addresses are sometimes supplemented with the ebank. If bits 9 and 10 are both 1, then the final address will be 00000_eBank_memAddress[7:0]. If 9 and 10 are not both 1, then the final address will be 000000_memAddress[9:0].
2. Bit 11 and 0 and bit 10 is 1 – then we are addressing the fixed memory and we need to use the fBank. If the two most significant bits of the fBank are both 1 that means that we might need to use the sBank. If the sBank is 1, then the final memory address will be 100_fBank[2:0]_memAddress[9:0]. If the sBank is 0, then the final memory address will be 0_fBank_memAddress[9:0].
3. None of the two above conditions apply – we are addressing fixed memory, but there is no need for any of the banks (addressing the lower parts of fixed memory). The final memory address if 0000_memAddress.


We found all of this information in the Apollo Guidance Computer training manual. It was very difficult to piece together what was going on. The Apollo engineers had to do this complex logic due to the small memory address size.


## Our Memory Simulation

### Erasable / Fixed Memory

We just used the basic memory that we used in all of the labs to create the memory module for this project. There were a few differences with the registers and the memory addressing that will be discussed later, but other than that, our memory was identical to the memory modules that we learned to used in class.

Our memory module constantly updates the output for the inputted address, and if write is enabled, it writes whatever is in data_in to the location specified by the memory address on the positive clock edge.

Because our instructions were so short, we never actually found a need to use the fixed memory. In fact, our simulation doesn’t even really have a fixed memory. If we needed more than 2K words worth of space for any of our programs, we would just add a condition that in order for a memory address to be written to, the address would have to be less than 2K which would mean that only erasable memory could be written to.

### Registers

In our system, the registers are just flip-flops with a write enable. Each register has its own write enable line and there is a MUX attached to each register that controls where the input to the register is coming from.

To allow us to access the registers from the memory, we pass all of the register values to the memory and on each clock edge, we write the register values to their appropriate spots in the memory. This likely is not the way that it was accomplished on the AGC, but it has the same functionality and worked well with our existing memory system.

### Memory Addressing

To simulation memory addressing, we created a file called memLogic.v. The inputs to this file are the opcode, the s bank, the e bank, the fbank, and the 12 bit initial memory address. From this, we used a series of conditional statements to build the final 16 bit memory address from all of the different components. MemLogic.v outputs the final 16 bit memory address.

MemLogic.v is called in the memory module and then the final address that it outputs is used as the read and write address in the memory module.





[Back To Home](README.md) 
