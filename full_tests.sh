iverilog -o mem memory.t.v
iverilog -o behavioral_alu behavioral_alu.t.v
iverilog -o memLogic memLogic.t.v
iverilog -o parityBit parityBit.t.v
iverilog -o controlPulse controlPulses.t.v
iverilog -o agc agc.t.v

./mem
./behavioral_alu
./memLogic
./controlPulse
./parityBit
./agc

rm mem
rm behavioral_alu
rm memLogic
rm controlPulse
rm agc
rm parityBit