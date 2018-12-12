# The Apollo Guidance Computer
By Annie Kroo, Paige Pfenninger, March Saper

For our final Computer Architecture project, we set out with the goal to understand Block 1 of the Apollo Guidance Computer (AGC) and create a simulation that can run all of the commands in Block 1. 

We chose this project because we wanted to understand how early computers work and attempt to recreate one of the first computers with modern software. 

## What is the Apollo Guidance Computer

The Apollo Guidance Computer is the computer that was on board all of the Apollo missions. It provided, the guidance, navigation, and control for early space missions. The Apollo guidance computer is what allowed us to go to space and eventually land on the moon. 

The Apollo Guidance Computer was designed by MIT Instrumentation Laboratory and was fabricated by Raytheon.

### Block 1

Block 1 was the first part of the Apollo Guidance Computer. It was the first computer to use integrated chips and Block 1 contained 4100 IC that each consisted of a single 3 input NOR gate.  

Block 1 had 12 instructions: Add, Count Compare and Skip, Clear and Subtract, Index, Exchange, Divide, Multiply, Extend, Subtract, Transfer to Storage, Mask, and Jump Register. We will discuss these commands in more depth in a later section.

Block 1 had two types of memory: fixed memory and erasable memory. The Apollo Guidance Computer had 2KB of erasable memory and 48KB of fixed memory. The reason that the Apollo Guidance Computer had two types of memory was because in the 1960’s computer memory was difficult and expensive to make and it took up a lot of space and erasable memory required even more space. The fixed memory consisted of small disks that were weaved together. Each disk was a bit and depending on how it was oriented during the weaving process it read as either a 1 or a 0. Erasable memory also consisted of disks that were weaved together, but erasable memory required many more connections to be able to change the orientation of the disks. We will discuss memory in more detail later.  

The user interfaced with Block 1 through a series of indicator lights, numeric display, and a numeric keyboard. The user would input different numbers that corresponded to words and nouns which would translate to instruction sets for the computer. The interface connected to the computer through four input channels and five output channels. 

The Block 1 computer was used for the first unmanned missions into space. The Apollo Guidance Computer was updated with Block 2 hardware and instructions for the missions to the moon. 

## What We Accomplished

This project was completed over the course of 2.5 weeks. The majority of our time was spent learning about the Apollo Guidance Computer. The Apollo Guidance Computer is nothing like any of the architectures that we studied in Computer Architecture. Many of the standards that we take fore granted like 2s complement and having sufficient length op-codes were not part of the Apollo Guidance Computer. Although we were able to find many resources on the Apollo Guidance Computer, most of them were PDF scans of very old documents that could not be easily searched.

After completing a lot of research, we set out to create a simulation of Block 1 of the Apollo Guidance Computer. We created a simulation in verilog of the major components of Block 1. For many of the components and instructions it was difficult to find out exactly how they worked so we made our best guesses. 

Here are links to the breakdown of each major component:

- [Memory](Memory.md)
- [ALU](ALU.md)
- [Instructions and FSM](Instructions.md)

And to see how all of it works together visit:
- [Test Files](together.md) 
- [It Works!](Complete.md)

Our references can be found here:
- [References](references.md)

## What We Struggled With

The most difficult part of this project was just the fact that the Apollo Guidance Computer is so different from everything else that we worked on during Computer Architecture. 

The Apollo Guidance Computer was very space limited, and many of of the architecture decisions that were made were due to space limitations. Many if not all of the decisions that were made were very difficult for us to understand because we spent the entire semester learning about systems that are not space limited. 

For example, the opcode of the Apollo Guidance Computer is only 3 bits which means that you van have a maximum of eight instructions. However, the Apollo Guidance computer needed more than eight instructions, so sometimes the first five bits are used for the opcode instead of the first three. We had to take into consideration in our code that the opcode had a variable length. 

There was a similar issue with the memory. The memory address in the Apollo Guidance Computer was only 12 bits long, but it needed to be 16 bits long in order to address all of the possible memory locations. To overcome this obstacle, the Apollo Guidance Computer used a combination of 3 different memory address banks to form a 16 bit memory address. 

The Apollo Guidance Computer also only had 8 flip-flop memory registers, and so during each instruction, data had to be frequently moved between the registers and the erasable memory so that data was never lost and the right data was always in the correct place.

At the end of this project, we struggled a lot with running our test bench in Verilog. In previous labs, we were successfully able to initialize the memory with the instruction set, but for some reason we really struggled to do that in this project. 

At the end of the project our biggest issue was lack of time and small bugs in our code. Our finite state machine was almost 700 lines long, so it was difficult to debug. 

### Extensions of the Project

If we had more time, we would have implemented some of the instructions in Block 2 to allow us to actually run the code that was run on the Apollo Guidance Computer during the mission to the moon. Currently, our instruction set is too limited to run any of the actual commands that were preformed during that mission. 


