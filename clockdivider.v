module ClockDivider(q, clk);
	output q;
	input clk;
	wire [8:0]d;
	
	T_FF clkDiv1(d[0], 1'b1, clk, 1'b0);
	T_FF clkDiv2(d[1], 1'b1, d[0], 1'b0);
	T_FF clkDiv3(d[2], 1'b1, d[1], 1'b0);
	T_FF clkDiv4(d[3], 1'b1, d[2], 1'b0);
	T_FF clkDiv5(d[4], 1'b1, d[3], 1'b0);
	T_FF clkDiv6(d[5], 1'b1, d[4], 1'b0);
	T_FF clkDiv7(d[6], 1'b1, d[5], 1'b0);
	T_FF clkDiv8(d[7], 1'b1, d[6], 1'b0);
	T_FF clkDiv9(q, 1'b1, d[7], 1'b0);

endmodule
