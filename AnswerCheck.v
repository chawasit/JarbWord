module AnswerCheck(correctAns , s1 , s2 , p1 , p2 , r1 , r2);
	input s1,s2; 			//input answer 00 01 10 11
	input p1,p2;			//input patten 00 01 10 11
	input r1,r2;			//round	00 01 10 11
	output correctAns;		// 1'b1 correct  and 1'b0 worng
	reg correctAns;
	always begin  

	correctAns <= 1'b0;		//alway worng ans
	//------------------------  patten 0 ----------------//
	if((p1 == 1'b0) && (p2 == 1'b0) )					//00 = patten 0 
	begin
		if((r1 == 1'b0) && (r2 == 1'b0))			//00 question 0
		begin
			if((s1 == 1'b0) && (s2 == 1'b1))		//ans 01 = 1
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b0) && (r2 == 1'b1))		//01 question 1
			begin
			if((s1 == 1'b0) && (s2 == 1'b0))		//ans 00 = 0
				begin
				correctAns <= 1'b1;
				end
			end
		else if((r1 == 1'b1) && (r2 == 1'b0))		//10 question 2
		begin
			if((s1 == 1'b1) && (s2 == 1'b1))		//ans 11 = 3
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b1))		//11 question 3
		begin
			if((s1 == 1'b1) && (s2 == 1'b0))		//ans 10 = 2
			begin
				correctAns <= 1'b1;
			end
		end
	end

	//------------------------  patten 1 ----------------//
	if((p1 == 1'b0) && (p2 == 1'b1))					//01 = patten 1
	begin
		if((r1 == 1'b0) && (r2 == 1'b0))			//00 question 0
		begin
			if((s1 == 1'b1) && (s2 == 1'b0))		//ans 10 = 2
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b0) && (r2 == 1'b1))		//01 question 1
		begin
			if((s1 == 1'b1) && (s2 == 1'b1))		//ans 11 = 3
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b0))		//10 question 2
		begin
			if((s1 == 1'b0) && (s2 == 1'b0))		//ans 00 = 0
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b1))		//11 question 3
		begin
			if((s1 == 1'b0) && (s2 == 1'b1))		//ans 01 = 1
			begin
				correctAns <= 1'b1;
			end
		end
	end
	
	//------------------------  patten 2 ----------------//
	if((p1 == 1'b1) && (p2 == 1'b0))					//10 = patten 2
	begin
		if((r1 == 1'b0) && (r2 == 1'b0))			//00 question 0
		begin
			if((s1 == 1'b1) && (s2 == 1'b1))		//ans 11 = 3 
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b0) && (r2 == 1'b1))		//01 question 1
		begin
			if((s1 == 1'b1) && (s2 == 1'b0))		//ans 10 = 2
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b0))		//10 question 2
		begin
			if((s1 == 1'b0) && (s2 == 1'b1))		//ans 01 = 1
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b1))		//11 question 3
		begin
			if((s1 == 1'b0) && (s2 == 1'b0))		//ans 00 = 0
			begin
				correctAns <= 1'b1;
			end
		end
	end
	//------------------------  patten 3 ----------------//
	if((p1 == 1'b1) && (p2 == 1'b1))					//11 = patten 3
	begin
		if((r1 == 1'b0) && (r2 == 1'b0))			//00 question 0
		begin
			if((s1 == 1'b0) && (s2 == 1'b0))		//ans 00 = 0
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b0) && (r2 == 1'b1))		//01 question 1
		begin
			if((s1 == 1'b1) && (s2 == 1'b0))		//ans 10 = 2
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b0))		//10 question 2
		begin
			if((s1 == 1'b0) && (s2 == 1'b1))		//ans 01 = 1
			begin
				correctAns <= 1'b1;
			end
		end
		else if((r1 == 1'b1) && (r2 == 1'b1))		//11 question 3
		begin
			if((s1 == 1'b1) && (s2 == 1'b1))		//ans 11 = 0
			begin
				correctAns <= 1'b1;
			end
		end
	end
	 end

endmodule
