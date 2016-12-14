module ScoreBox(out, enable, reset, clk);
	input enable, reset, clk;
	output [2:0]out;
	reg [2:0]out;

	always @(posedge clk)
		if (reset) begin
			out <= 3'b0 ;
		end else if (enable) begin
			out <= out + 1;
	end

endmodule
