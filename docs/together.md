We have several individual test files. 
1. memLogic.t.v – ensures that the memory addressing logic works properly
2. memory.t.v – ensures that the memory works properly
3. parityBit.t.v – ensures that our parity bit module always adds the correct bit
4. behavioral_alu.t.v – ensures that our ALU is working
5. controlPulses.t.v – ensures that our finite state machine works
6. agc.t.v – runs the instructions listed in AndMaskTsXch.mem

To run these tests, navigate to our project directly and run:

./full_tests.sh

If nothing outputs test failed – then all of the unit tests passed. 

To ensure that the entire AGC is working, open agcTest.vcd in GTKwave. 

Select acgTest, then dut, then show regA. 

The output of regA should be in decimal:
0, 4, 8, 13, 4, 13,  8, 4, 1, 4, 65531, 1

The AGC test adds register 10 (currently contains 2) to the accumulator 3 times, then stores that value in register 100, then ANDS register 10 with the accumulator, then loads the value from register 100. Then it divides the accumulator by 2 and multiplies it by 2, and then it completes a CS and finally it jumps forward one value and does another add. 

For more information about the AGC test, see: [It Works!](Complete.md)
