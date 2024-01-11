//Nikhil G. Khatu (HW#1)---> modified modules
// Circuit #1 implemented in structural verilog style.
module circuit1(Cin, X, Y, Cout, S);
	input Cin, X, Y;
	output Cout, S;
	wire number1;
	wire number2;
	wire number3;
	wire number4;
	wire number5;
	
	XOR2 u6 (X, Y, number1);
	XOR2 u7 (number1, Cin, S);
	AND2 u8 (Y, Cin, number2);
	AND2 u9 (X, Cin, number3);
	AND2 u10 (X, Y, number4);
	OR2 u11 (number2, number3, number5);
	OR2 u12 (number4, number5, Cout);
	
	
	
endmodule

module circuit2 (Cin, X, Y, Cout, S);
	input Cin, X, Y;
	output Cout, S;
	wire Cinv;
	wire EN;
	wire C1, C2;
	assign C1 = 1;
	assign C2 = 0;
	assign EN = 1;
	
	
	INV u30 (Cin, Cinv);
	MUX4 u13 (EN, Cin, Cinv, Cinv, Cin, X, Y, S);
	MUX4 u14 (EN, C1, Cin, Cin, C2, X, Y, Cout);
endmodule

module RCadder (Cin, X1, Y1, X2, Y2, S2, S1, Cout);
	input Cin, X1, X2, Y1, Y2;
	output S2, S1, Cout;
	wire C1;
	
	circuit1 u15 (Cin, X1, Y1, C1, S1);
	circuit2 u16 (C1, X2, Y2, Cout, S2);
endmodule
	
