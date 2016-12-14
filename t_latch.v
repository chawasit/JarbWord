module T_Latch(q, t, reset);
	input t, reset;
	output q;
	reg q;
	always @(negedge t) begin
		if(reset)
			q <= 1'b0;
		else
			q <= ~q;
	end
endmodule
