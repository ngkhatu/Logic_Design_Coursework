//Nikhil G. Khatu
//E HW #2
// 3/23/07

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

// 2-input XOR
module XOR2 (a, b, f);
	input a;
	input b;
	output f;

        // Dataflow verilog style.
	assign f = ((~a & b) | (a & ~b));
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

// 4 to 1 one bit MUX
module MUX4 (EN, I3, I2, I1, I0, S1, S0, Y);
	input EN;
	input I3;
	input I2;
	input I1;
	input I0;
	input S1;
	input S0;
	output Y;
	wire select0;
	wire select1;
	wire select2;
	wire select3;
	
	AND4 u1 (EN, I0, ~S1, ~S0, select0);
	AND4 u2 (EN, I1, ~S1, S0, select1);
	AND4 u3 (EN, I2, S1, ~S0, select2);
	AND4 u4 (EN, I3, S1, S0, select3);
	OR4 u5 (select0, select1, select2, select3, Y);
endmodule
	
