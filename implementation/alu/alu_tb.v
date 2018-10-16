`timescale 1ns / 1ps

module alu_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [2:0] AluOp;

	// Outputs
	wire [15:0] AluOut;
	wire CarryOut;
	wire Overflow;
	
	// Loop variables
	integer i;
	integer j;
	integer maxi = 4;
	integer maxj = 4;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.AluOp(AluOp), 
		.AluOut(AluOut), 
		.CarryOut(CarryOut), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		AluOp = 0;
		
		#100;
		
		//test AND
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b000;
				#1
				if (AluOut != (A & B))
					$display ("Test failed in AND; A=%d, B=%d", A, B);
			end
		end
		
		//test OR
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b001;
				#1
				if (AluOut != (A | B))
					$display ("Test failed in OR; A=%d, B=%d", A, B);
			end
		end
		
		//test Add
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b010;
				#1
				if (AluOut != (A + B))
					$display ("Test failed in Add; A=%d, B=%d", A, B);
			end
		end
		
		A = 16'b0111111111111111;
		B = 1;
		AluOp = 3'b001;
		#1
		if (AluOut == (A + B))
			$display ("Overflow test failed in Add; A=%d, B=%d", A, B);
		
		
		//test Sub
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b011;
				#1
				if (AluOut != (A - B))
					$display ("Test failed in Sub; A=%d, B=%d", A, B);
			end
		end
		
		//make tests for overflow once overflow is implemented
		
		//test slt
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b100;
				#1
				if (AluOut != (A < B))
					$display ("Test failed in slt; A=%d, B=%d", A, B);
			end
		end
		
		//test sgt
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b101;
				#1
				if (AluOut != (A > B))
					$display ("Test failed in sgt; A=%d, B=%d", A, B);
			end
		end
		
		//test seq
		for(i=0;i<maxi;i=i+1)
		begin
			for(j=0;j<maxj;j=j+1)
			begin
				A = i; B = j;
				AluOp = 3'b110;
				#1
				if (AluOut != (A == B))
					$display ("Test failed in seq; A=%d, B=%d", A, B);
			end
		end

		end
      
endmodule
