`timescale 1ns / 1ps

module PCSPandMemoryBlock_tb;

	// Inputs
	reg clock;
	reg MemWrite;
	reg [1:0] MemSrc;
	reg [2:0] MemDst;
	reg [15:0] ze_imm;
	reg [15:0] ls_imm;
	reg [15:0] MaryData;
	reg [15:0] ShelleyData;
	reg [15:0] RAData;
	reg [15:0] CompData;
	reg [2:0] PCSrc;
	reg [2:0] SPSrc;
	reg PCWrite;
	reg SPWrite;
	reg InstWrite;
	reg reset;

	// Outputs
	wire [15:0] MemVal_out;
	wire [15:0] Inst_out;
	wire [15:0] pc_out;
	wire [15:0] sp_out;

	// Instantiate the Unit Under Test (UUT)
	PCSPandMemoryBlock uut (
		.clock(clock), 
		.MemWrite(MemWrite), 
		.MemSrc(MemSrc), 
		.MemDst(MemDst), 
		.ze_imm(ze_imm), 
		.ls_imm(ls_imm), 
		.MaryData(MaryData), 
		.ShelleyData(ShelleyData), 
		.RAData(RAData), 
		.CompData(CompData), 
		.PCSrc(PCSrc), 
		.SPSrc(SPSrc), 
		.PCWrite(PCWrite), 
		.SPWrite(SPWrite), 
		.InstWrite(InstWrite), 
		.reset(reset),
		.MemVal_out(MemVal_out), 
		.Inst_out(Inst_out), 
		.pc_out(pc_out), 
		.sp_out(sp_out)
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
		ze_imm = 0;
		ls_imm = 0;
		MaryData = 0;
		ShelleyData = 0;
		RAData = 0;
		CompData = 0;
		PCSrc = 2;
		SPSrc = 0;
		PCWrite = 0;
		SPWrite = 1;
		InstWrite = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		PCWrite = 0;
		#10;
        
		PCWrite = 0;
		PCSrc = 0;
		reset = 0;
		SPWrite = 1;
		InstWrite = 1;
		PCSrc = 0;
		ze_imm = 2;
		MemWrite = 1;
		MaryData = 100;
		MemDst = 1;
		SPSrc = 1;
		//Test 1
		//Write 100 to memory at address 2, increment sp by 2
		#50;
		PCWrite = 0; 
		SPWrite = 0;
		SPSrc = 0;
		MemWrite = 0;
		MemDst = 0;
		//Read from memory at address = pc (i.e. 2)
		#50;
		if (MemVal_out == 100 && Inst_out == 100 && sp_out == 2)
			$display("PASSED test 1");
		else
			$display("FAILED test 1");

	end
      
endmodule

