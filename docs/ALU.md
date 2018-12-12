# Arithmetic Logic Unit and One's compliment

## One's Compliment

To represent negative numbers in 1969, the engineers of the Apollo Guidance Computer chose a standard for the machine to use. Due to the strict spacial limitations that they faced, they decided to use a One's Compliment system instead of adding an extra bit to denote the sign for example. In this  one's compliment system, positive numbers are represented as normal binary numbers where for a 4 bit example, 0 would correspond to 0000, 1 would correspond to 0001 and so on. Then to represent negative numbers they decided to use the compliment of the positive. As such, -1 would be 1110, -2 would be 1101, and so on. The strange part here is that this introduces a "negative zero" which is 1111 and the scheme now has two 0 values. They utilized this in some situations to optimize a four way branch but primarily the extra negative zero made arithmetic on such numbers a little more difficult.

For example if you add -4 (0101) and +5(1011) in binary purely adding the bits together and carrying over in the traditional manner, you get: 0000 with a carryout of 1 (1011+0101 = 10000).They solved this discrepancy by merely adding back in the carryout to the sum making it: 0000+0001 = 0001 which is 1 which equals -4 + 5.


## Two's Compliment and Comparison

In modern computing, twos compliment which came from one's compliment is the primary standard for representing negative numbers. In this model, negative numbers are made ever so slightly more complex. To get the negative of a number you must first get its compliment and then subtract 1 to get the twos compliment negative. This eliminates the extra negative zero and allows for a smoother and easier arithmetic function.

## The Apollo Guidance Computer ALU
The Apollo guidance computer had bit-spliced adder/subtracter and a multicycle multiply and divide. The AGC used an accumulator and shift register to calculate the partial products and effectively multiply two binary numbers. This took multiple timing pulses. Similarly for the divide, it used a complex process in which it first multiplied the dividend and then similarly use the accumulator and shift register to get out the quotient and the remainder. In multiply, because the binary output of multiplying two n bit long numbers is 2n, the upper n bits are stored in the accumulator and the lower n bits are stored in the lower product or LP register. In divide, the binary quotient is stored in the accumulator and the remainder is stored in the Q register.

## Our Implementation

Because of our time limitations, and to fully utilize Verilog's built in structures, we decided to make a behavioral verilog ALU. This meant that to add, instead of making a bit-spliced adder, we simply used the "+" command.  Because Verilog is setup for use on modern computing platforms, it uses exclusively two's compliment by default. As such we chose to convert our one's compliment numbers into two's compliment and then operate on the two's compliment version, then convert that number back to one's compliment. Then we stored the upper product of multiplications in the accumulator, the lower product in the LP register, the quotient in the accumulator, and the remainder in the Q register. In this way our system functions in the same manner as the original AGC, except in the time performance area where our model is considerably faster.



[Back To Home](README.md)
