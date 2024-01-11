//Nikhil G. Khatu
//E homework #2
// 3/23/07

`timescale 1 ns / 100 ps

module test_fixture;
	reg done;
	reg Cin, X1, X2, Y1, Y2;
	wire S2, S1, Cout;

	initial
	begin
	   $dumpfile("fulladdertest.vcd"); // save waveforms in this file
	   $dumpvars;                 // saves all waveforms

	   // initialize done signal to 0
	   done = 1'b0;

	   // test 000 case
	   X2 = 0;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 0;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 0;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 0;
	   Y1 = 1;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 0;
	   Cin = 1;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 0;
	    #5
	   X2 = 1;
	   X1 = 1;
	   Y2 = 1;
	   Y1 = 1;
	   Cin = 1;
	 

	   // Bogus kluge to extend simulation time for better viewing.
	   #5 done = 1'b1;

	   $finish;       // finished with simulation
	end
	

	// Instantiate two copies of Circuit #1 - but different implementations.
	RCadder u3 (Cin, X1, Y1, X2, Y2, S2, S1, Cout);

endmodule	// test_fixture
