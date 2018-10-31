`timescale 1ns / 1ps

module ProcessorSansControl_tb;

	// Inputs
	reg clock;
	reg MemWrite;
	reg [1:0] MemSrc;
	reg [2:0] MemDst;
	reg [2:0] PCSrc;
	reg [2:0] SPSrc;
	reg PCWrite;
	reg SPWrite;
	reg InstWrite;
	reg reset;
	reg mary_write;
	reg shelley_write;
	reg comp_write;
	reg ra_write;
	reg [1:0] mary_src;
	reg [1:0] shelley_src;
	reg ra_src;
	reg SrcA;
	reg [1:0] SrcB;
	reg [3:0] AluOp;

	// Outputs
	wire overflow_output;

	// Instantiate the Unit Under Test (UUT)
	ProcessorSansControl uut (
		.clock(clock), 
		.MemWrite(MemWrite), 
		.MemSrc(MemSrc), 
		.MemDst(MemDst), 
		.PCSrc(PCSrc), 
		.SPSrc(SPSrc), 
		.PCWrite(PCWrite), 
		.SPWrite(SPWrite), 
		.InstWrite(InstWrite), 
		.reset(reset), 
		.mary_write(mary_write), 
		.shelley_write(shelley_write), 
		.comp_write(comp_write), 
		.ra_write(ra_write), 
		.mary_src(mary_src), 
		.shelley_src(shelley_src), 
		.ra_src(ra_src), 
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.AluOp(AluOp), 
		.overflow_output(overflow_output)
	);
	
	always
	begin
		#50 clock = !clock;
	end

	initial begin
		// Initialize Inputs
		clock = 0;
		MemWrite = 0;
		MemSrc = 0;
		MemDst = 0;
		PCSrc = 0;
		SPSrc = 0;
		PCWrite = 0;
		SPWrite = 1;
		InstWrite = 0;
		reset = 1;
		mary_write = 0;
		shelley_write = 0;
		comp_write = 0;
		ra_write = 0;
		mary_src = 0;
		shelley_src = 0;
		ra_src = 0;
		SrcA = 0;
		SrcB = 0;
		AluOp = 0;


		//This test cannot be written until
		//the PC block is fully functional

	end
      
endmodule

