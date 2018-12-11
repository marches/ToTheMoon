`include "agc.v"

module agcTest ();
	reg clk;

	agc dut(clk);

	//Set up clock
	initial clk = 0;

	always #10 clk=!clk;

	initial begin


	$readmemb("AndMaskTsXch.mem", dut.mem.memory, 4'd11);

	$dumpfile("cpufirsttest.vcd");
	$dumpvars();

	#20000 $finish();

	end

endmodule
