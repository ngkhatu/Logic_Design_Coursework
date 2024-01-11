//Nikhil G. Khatu
//HW #2

// 2-input AND
module AND2 (a, b, f);
	input a;
	input b;
	output f;

        // Dataflow verilog style.
	assign f = (a & b);
endmodule

// 2-input OR
module OR2 (a, b, f);
	input a;
	input b;
	output f;

        // Dataflow verilog style.
	assign f = (a | b);
endmodule

// 2-input NAND
module NAND2 (a, b, f);
	input a;
	input b;
	output f;

        // Dataflow verilog style.
	assign f = ~(a & b);
endmodule

// 2-input NOR
module NOR2 (a, b, f);
	input a;
	input b;
	output f;

        // Dataflow verilog style.
	assign f = ~(a | b);
endmodule

// inverter (NOT gate)
module INV (a, f);
	input a;
	output f;

        // Dataflow verilog style.
	assign f = ~a;
endmodule

// 3-input NOR
module NOR3 (a, b, c, f);
	input a;
	input b;
	input c;
	output f;
	
	//Dataflow verilog style.
	assign f = ~(a | b | c);
endmodule

// 3-input NAND
module NAND3 (a, b, c, f);
	input a;
	input b;
	input c;
	output f;
	
	//Dataflow verilog style.
	assign f = ~(a & b & c);
endmodule

// 3-input OR
module OR3 (a, b, c, f);
	input a;
	input b;
	input c;
	output f;
	
	//Dataflow verilog style.
	assign f = (a | b | c);
endmodule

// 3-input AND
module AND3 (a, b, c, f);
	input a;
	input b;
	input c;
	output f;
	
	//Dataflow verilog style.
	assign f = (a & b & c);
endmodule

// 4-input OR
module OR4 (a, b, c, d, f);
	input a;
	input b;
	input c;
	input d;
	output f;
	
	//Dataflow verilog style.
	assign f = (a | b | c | d);
endmodule

// 4-input AND
module AND4 (a, b, c, d, f);
	input a;
	input b;
	input c;
	input d;
	output f;
	
	//Dataflow verilog style.
	assign f = (a & b & c & d);
endmodule
