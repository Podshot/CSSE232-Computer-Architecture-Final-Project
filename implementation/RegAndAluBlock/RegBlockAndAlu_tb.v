`timescale 1ns / 1ps

module RegBlockAndAlu_tb;

	// Inputs
	reg [15:0] memval;
	reg [7:0] immediate;
	reg [15:0] pc;
	reg mary_write;
	reg shelley_write;
	reg comp_write;
	reg ra_write;
	reg [1:0] mary_src;
	reg [1:0] shelley_src;
	reg ra_src;
	reg clock;
	reg [0:0] SrcA;
	reg [1:0] SrcB;
	reg [2:0] AluOp;

	// Outputs
	wire overflow;
	wire [15:0] aluout;
	wire [15:0] mary_output;
	wire [15:0] shelley_output;
	wire [15:0] comp_output;
	wire [15:0] ra_output;

	// Instantiate the Unit Under Test (UUT)
	RegBlockAndAlu uut (
		.memval(memval), 
		.immediate(immediate), 
		.pc(pc), 
		.mary_write(mary_write), 
		.shelley_write(shelley_write), 
		.comp_write(comp_write), 
		.ra_write(ra_write), 
		.mary_src(mary_src), 
		.shelley_src(shelley_src), 
		.ra_src(ra_src), 
		.clock(clock), 
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.AluOp(AluOp), 
		.overflow(overflow), 
		.aluout(aluout), 
		.mary_output(mary_output), 
		.shelley_output(shelley_output), 
		.comp_output(comp_output), 
		.ra_output(ra_output)
	);

	always begin
	#5 clock = !clock;
	end

	initial begin
		// Initialize Inputs
		memval = 420;
		immediate = 84;
		pc = 68;
		mary_write = 0;
		shelley_write = 0;
		comp_write = 0;
		ra_write = 0;
		mary_src = 0;
		shelley_src = 0;
		ra_src = 0;
		clock = 0;
		SrcA = 0;
		SrcB = 0;
		AluOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//test 1: aadd
		mary_write = 1;
		mary_src = 0;
		SrcA = 1'b0;
		SrcB = 2'b01;
		AluOp = 3'b010;
		#20;
		if (aluout == 420+84)
			$display("PASSED test 1");
		else if (aluout != 420+84)
			$display("FAILED test 1");
		#5;
		
		//test 2: aadd@
		mary_write = 0;
		shelley_write = 1;
		shelley_src = 01;
		SrcA = 1'b0;
		SrcB = 2'b00;
		AluOp = 3'b010;
		#20;
		if (aluout == 420+84)
			$display("PASSED test 2");
		else if (aluout != 420+84)
			$display("FAILED test 2");
		#5;
		
	end
      
endmodule

