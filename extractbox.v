module ExtractBox(out0, out1, out2, in);
	input [2:0]in;
	output out0, out1, out2;
	assign {out2, out1, out0} = in;
endmodule
