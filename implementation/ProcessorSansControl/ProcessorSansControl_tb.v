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
	wire [15:0] instruction;

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
		.overflow_output(overflow_output),
		.instruction(instruction)
	);
	
	always
	begin
		#20 clock = !clock;
	end

	initial begin
		// Initialize Inputs
		clock = 0;
		MemWrite = 1;
		MemSrc = 0;
		MemDst = 0;
		PCSrc = 0;
		SPSrc = 0;
		PCWrite = 0;
		SPWrite = 0;
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
		
		#100;
		MemWrite = 1;
		#30;
		//reset everything
		//note values in memory post-reset:
		//mem[0] = 10
		//mem[1] = 5
		//mem[2] = 12
		//mem[3] = 6
		//test 1: aadd@
		reset = 0;
		MemWrite = 0;
		MemDst = 0;
		PCWrite = 1;
		PCSrc = 0;
		InstWrite = 1;
		#40; //load 10 into memval, increment pc by 2
		#40; //write to inst
		$finish;
		mary_src = 0;
		mary_write = 1;
		#40; //load 10 into mary, load 5 into memval, increment pc by 2
		PCWrite = 0;
		mary_write = 0;
		shelley_write = 1;
		shelley_src = 0;
		#40; //load 5 into shelley
		PCWrite = 0;
		shelley_write = 0;
		SrcA = 0;
		SrcB = 0;
		AluOp = 2; //add
		#40; //add mary and shelley
		mary_write = 1;
		mary_src = 1;
		#40; //store 5+10=15 into mary
		mary_write = 0;
		MemDst = 3; //address in shelley = 5
		MemSrc = 0; //value in mary = 15
		MemWrite = 1;
		#40; //store value 15 at address 5		
		
		
		
		//test 2: asub@
		MemWrite = 0;
		MemDst = 0;
		PCWrite = 1;
		mary_src = 0;
		mary_write = 1;
		#40; //load 12 into mary, increment pc by 2
		mary_write = 0;
		shelley_write = 1;
		shelley_src = 0;
		PCWrite = 1;
		#40; //load 6 into shelley
		#40;
		PCWrite = 0;
		shelley_write = 0;
		SrcA = 0;
		SrcB = 0;
		AluOp = 3; //sub
		#40; //subtract
		mary_write = 1;
		mary_src = 1;
		#40; //store 12-6=6 into mary
		mary_write = 0;
		MemDst = 3;
		MemSrc = 0;
		MemWrite = 1;
		#40; //store value 6 at address 6
		$finish;

	end
      
endmodule

