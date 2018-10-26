`timescale 1ns / 1ps

module alu_tb;

	// Inputs
	reg [15:0] mary;
	reg [15:0] sp;
	reg [15:0] shelley;
	reg [15:0] zext_imm;
	reg [15:0] sext_imm;
	reg [15:0] sext_ls_imm;
	reg [0:0] SrcA;
	reg [1:0] SrcB;
	reg [2:0] AluOp;
	reg clock;

	// Outputs
	wire [15:0] out;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.mary(mary), 
		.sp(sp), 
		.shelley(shelley), 
		.zext_imm(zext_imm), 
		.sext_imm(sext_imm), 
		.sext_ls_imm(sext_ls_imm), 
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.AluOp(AluOp), 
		.clock(clock), 
		.out(out), 
		.Overflow(Overflow)
	);
	
	always
	begin
		#3 clock = !clock;
	end

	initial begin
		// Initialize Inputs
		clock = 0;
		mary = 57;
		sp = 62;
		shelley = 75;
		zext_imm = 80;
		sext_imm = 34;
		sext_ls_imm = 136;
		
		SrcA = 0;
		SrcB = 0;
		AluOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		
		//test 1: land
		SrcA = 1'b0;
		SrcB = 2'b01;
		AluOp = 3'b000;
		#10;
		if (out == 16)
			$display("PASSED test 1");
		else if (out != 16)
			$display("FAILED test 1");
		#10;
		
		//test 2: lorr
		SrcA = 1'b0;
		SrcB = 2'b01;
		AluOp = 3'b001;
		#10;
		if (out == 121)
			$display("PASSED test 2");
		else if (out != 121)
			$display("FAILED test 2");
		#10;
		
		//test 3: land@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b000;
		#10;
		if (out == 9)
			$display("PASSED test 3");
		else if (out != 9)
			$display("FAILED test 3");
		#10;
		
		//test 4: lorr@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b001;
		#10;
		if (out == 123)
			$display("PASSED test 4");
		else if (out != 123)
			$display("FAILED test 4");
		#10;
		
		//test 5: aadd
		SrcA = 1'b0;
		SrcB = 2'b10;
		AluOp = 3'b010;
		#10;
		if (out == 91)
			$display("PASSED test 5");
		else if (out != 91)
			$display("FAILED test 5");
		#10;
		
		//test 6: asub
		SrcA = 1'b0;
		SrcB = 2'b10;
		AluOp = 3'b011;
		#10;
		if (out == 23)
			$display("PASSED test 6");
		else if (out != 23)
			$display("FAILED test 6");
		#10;
		
		//test 7: aadd@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b010;
		#10;
		if (out == 132)
			$display("PASSED test 7");
		else if (out != 132)
			$display("FAILED test 7");
		#10;
		
		//test 8: asub@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b011;
		#10;
		if ($signed(out) == -18)
			$display("PASSED test 8");
		else if ($signed(out) != -18)
			$display("FAILED test 8");
		#10;
		
		//test 9: slt
		SrcA = 1'b0;
		SrcB = 2'b10;
		AluOp = 3'b100;
		#10;
		if (out == 0)
			$display("PASSED test 9");
		else if (out == 1)
			$display("FAILED test 9");
		#10;
		
		//test 10: slt@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b100;
		#10;
		if (out == 1)
			$display("PASSED test 10");
		else if (out == 0)
			$display("FAILED test 10");
		#10;
		
		//test 11: sgt
		SrcA = 1'b0;
		SrcB = 2'b10;
		AluOp = 3'b101;
		#10;
		if (out == 1)
			$display("PASSED test 11");
		else if (out == 0)
			$display("FAILED test 11");
		#10;
		
		//test 12: sgt@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b101;
		#10;
		if (out == 0)
			$display("PASSED test 12");
		else if (out == 1)
			$display("FAILED test 12");
		#10;
		
		//test 13: seq
		SrcA = 1'b0;
		SrcB = 2'b10;
		AluOp = 3'b110;
		#10;
		if (out == 0)
			$display("PASSED test 13");
		else if (out == 1)
			$display("FAILED test 13");
		#10;
		
		//test 14: seq@
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b110;
		#10;
		if (out == 0)
			$display("PASSED test 14");
		else if (out == 1)
			$display("FAILED test 14");
		#10;
		
		//test 15: seq@ true
		shelley = 57;
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b110;
		#10;
		if (out == 1)
			$display("PASSED test 15");
		else if (out == 0)
			$display("FAILED test 15");
		#10;
		
	end
      
endmodule

