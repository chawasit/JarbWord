module ReadyBox(ready, pa, pb);
	input pa, pb;
	output ready;
	reg ready;

	always begin
		if( pa == 1'b1 && pb == 1'b1) begin
			ready <= 1'b1;
		end else
			ready <= 1'b0;
	end
endmodule
