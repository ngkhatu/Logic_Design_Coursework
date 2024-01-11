// Nikhil G. Khatu HW #1  Exercise E
// Circuit #1 implemented in structural verilog style.
module circuit1_structural (a, b, c, f);
	input a, b, c;
	output f;
	wire node1;

        // Structural verilog style.
	NAND2 u1 (a, b, node1);
	NAND2 u2 (node1, c, f);
	
endmodule

// Circuit #1 implemented in dataflow verilog style.
module circuit1_dataflow (a, b, c, f);
	input a, b, c;
	output f;
	wire node1;

        // Dataflow verilog style.
	
	assign node1 = ~(a & b);
	assign f = ~(node1 &c) ;
endmodule
