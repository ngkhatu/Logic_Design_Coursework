`timescale 1 ns / 100 ps

module test_fixture;
	reg done;
	reg [3:0] test_input;
	wire dec0, dec1, dec2, dec3, dec4, dec5, dec6, dec7, dec8, dec9, dec10, dec11, dec12, dec13, dec14, dec15;
	wire G ;
	assign G = 1 ;
	initial
	begin
	   $dumpfile("dec4to16.vcd"); // save waveforms in this file
	   $dumpvars;                 // saves all waveforms

	   // initialize done signal to 0
	   done = 1'b0;

	   // test 0000 case
	   test_input[3] = 0;
	   test_input[2] = 0;
	   test_input[1] = 0;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 0;
	   test_input[1] = 0;
	   test_input[0] = 1;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 0;
	   test_input[1] = 1;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 0;
	   test_input[1] = 1;
	   test_input[0] = 1;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 1;
	   test_input[1] = 0;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 1;
	   test_input[1] = 0;
	   test_input[0] = 1;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 1;
	   test_input[1] = 1;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 0;
	   test_input[2] = 1;
	   test_input[1] = 1;
	   test_input[0] = 1;
	   
	    // test 0000 case
	   test_input[3] = 1;
	   test_input[2] = 0;
	   test_input[1] = 0;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 0;
	   test_input[1] = 0;
	   test_input[0] = 1;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 0;
	   test_input[1] = 1;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 0;
	   test_input[1] = 1;
	   test_input[0] = 1;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 1;
	   test_input[1] = 0;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 1;
	   test_input[1] = 0;
	   test_input[0] = 1;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 1;
	   test_input[1] = 1;
	   test_input[0] = 0;
	   // wait 5 ns, then test 001 case
	   #5 
	   test_input[3] = 1;
	   test_input[2] = 1;
	   test_input[1] = 1;
	   test_input[0] = 1;
	   

	   // Bogus kluge to extend simulation time for better viewing.
	   #5 done = 1'b1;

	   $finish;       // finished with simulation
	end
	

	// Instantiate test decoder
	 Four_to_Sixteen_decoder u6 (G , test_input[3], test_input[2], test_input[1], test_input[0], dec0, dec1, dec2, dec3, dec4, dec5, dec6, dec7, dec8, dec9, dec10, dec11, dec12, dec13, dec14, dec15);
	

endmodule	// test_fixture
