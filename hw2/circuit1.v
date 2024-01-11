//Nikhil G. Khatu
//HW #2

// #4 implemented in dataflow verilog style.
module parity_dataflow (x, y, z, f);
	input x, y, z;
	output f;
	wire node1;
	wire node2;
	wire node3;
	wire node4;

        // Dataflow verilog style.
	assign node1 = (~x & ~y & z);
	assign node2 = (~x & y & ~z);
	assign node3 = (x & ~y & ~z);
	assign node4 = (x & y & z);
	assign f = (node1 | node2 | node3 | node4);
endmodule

// #4 implemented in structural verilog style.
module parity_structural (x, y, z, f);
	input x, y, z;
	output f;
	wire node1;
	wire node2;
	wire node3;
	wire node4;

        // Structural verilog style.
	AND3 u1 (~x, ~y, z, node1);
	AND3 u2 (~x, y, ~z, node2);
	AND3 u3 (x, ~y, ~z, node3);
	AND3 u4 (x, y, z, node4);
	OR4 u5 (node1, node2, node3, node4, f);
endmodule
