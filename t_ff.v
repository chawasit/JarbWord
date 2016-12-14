module T_FF(q, t, clk, reset);
	output q;
	input t, clk, reset;
	wire d;
	xor x1(d,q,t);
	D_FF d1(q,d,clk,reset);
endmodule



module D_FF(q, d, clk, reset);
	output q;
	input d, clk, reset;
	reg q;
	always@ (posedge reset or negedge clk)
	if(reset)
		q <= 1'b0;
	else
		q <= d;
endmodule


