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

- Memory
- ALU
- Instructions and FSM

And to see how all of the components interact visit:
- Putting it all together 

## What We Struggled With

The most difficult part of this project was just the fact that the Apollo Guidance Computer is so different from everything else that we worked on during Computer Architecture. 



### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/marches/ToTheMoon/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
