module StateBox(reset, scoreA, scoreB, problem, check1, check2, ready, greset ,clk);
	input check1, check2, ready, greset, clk;
	output [2:0] scoreA, scoreB, problem;
	output reset;
	reg reset;
	reg [2:0]scoreA, scoreB;
	reg [2:0]problem;
	reg visit;
	
	//problem <= 0;
	//scoreA <= 0;
	//scoreB <= 0;

	always @(posedge clk) begin
		//if(showAnswer) begin
			//problem <= problem + 1;
			//reset <= 1'b1;
		if(greset) begin
			scoreA <= 3'b000;
			scoreB <= 3'b000;
			problem <= 3'b000;
			visit <= 1'b0;
		end else if(ready && ~visit) begin
			if(check1 == 1'b1) begin
				scoreA <= scoreA + 1;
			end
			if(check2 == 1'b1) begin
				scoreB <= scoreB + 1;
			end
			problem <= problem + 1;
			reset <= 1'b1;
			visit <= 1'b1;
		end else begin
			reset <= 1'b0;
			visit <= 1'b0;
		end
	end
endmodule

