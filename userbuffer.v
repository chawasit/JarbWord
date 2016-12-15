module UserBuffer(s0, s1, press, a ,b, c ,d, reset);
	input a,b,c,d, reset;
	output s0, s1, press;
	reg s0, s1, press;
	wire pressin;
	reg pressing;
	or orAll(pressin, !a, !b, !c, !d, reset);
	always
		begin
		// pressin <= (~a) || (~b) || (~c) || (~d) || reset;
		if(reset) begin
			s0 <= 1'b0;
			s1 <= 1'b0;
			press <= 1'b0;
		end
		else if(pressin) begin
			if(~pressing) begin
				pressing <= 1'b1;
				if(~a) begin
					s1 <= 1'b0;
					s0 <= 1'b0;
					press <= 1'b1;
				end
				else if(~b) begin
					s1 <= 1'b0;
					s0 <= 1'b1;
					press <= 1'b1;
				end
				else if(~c) begin
					s1 <= 1'b1;
					s0 <= 1'b0;
					press <= 1'b1;
				end
					else if(~d) begin
					s1 <= 1'b1;
					s0 <= 1'b1;
					press <= 1'b1;
				end
							end
		end else begin
			pressing <= 1'b0;
		end
	end
endmodule
