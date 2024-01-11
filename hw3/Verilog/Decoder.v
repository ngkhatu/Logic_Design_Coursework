module Two_to_Four_decoder (G, A, B, yo, y1, y2, y3) ;
	input G, A, B ;
	output yo, y1, y2, y3 ;
	
	assign yo = (G & ~A & ~B) ;
	assign y1 = (G & A & ~B) ;
	assign y2 = (G & ~A & B) ;
	assign y3 = (G & A & B) ;
endmodule

module Four_to_Sixteen_decoder (G, n3, n2, n1, n0, dec0, dec1, dec2, dec3, dec4, dec5, dec6, dec7, dec8, dec9, dec10, dec11, dec12, dec13, dec14, dec15) ;
	input G ;
	input n3, n2, n1, n0 ;
	output dec0, dec1, dec2, dec3, dec4, dec5, dec6, dec7, dec8, dec9, dec10, dec11, dec12, dec13, dec14, dec15 ;
	wire enable1, enable2, enable3, enable4 ;
	wire out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15 ;
	
	Two_to_Four_decoder u1 (G, n2, n3, enable1, enable2, enable3, enable4) ;
	
	Two_to_Four_decoder u2 (enable1, n0, n1, out0, out1, out2, out3) ;
	assign dec0 = out0 ;
	assign dec1 = out1 ;
	assign dec2 = out2 ;
	assign dec3 = out3 ;
	
	Two_to_Four_decoder u3 (enable2, n0, n1, out4, out5, out6, out7) ;
	assign dec4 = out4 ;
	assign dec5 = out5 ;
	assign dec6 = out6 ;
	assign dec7 = out7 ;
	
	Two_to_Four_decoder u4 (enable3, n0, n1, out8, out9, out10, out11) ;
	assign dec8 = out8 ;
	assign dec9 = out9 ;
	assign dec10 = out10 ;
	assign dec11 = out11 ;
	
	Two_to_Four_decoder u5 (enable4, n0, n1, out12, out13, out14, out15) ;
	assign dec12 = out12 ;
	assign dec13 = out13 ;
	assign dec14 = out14 ;
	assign dec15 = out15 ;
endmodule
