`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:15 10/31/2018
// Design Name:   PCSPandMemoryBlock
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/PCSPandMemory/PCSPandMemoryBlock_tbJoy.v
// Project Name:  PCSPandMemory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCSPandMemoryBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCSPandMemoryBlock_tbJoy;

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
	reg [3:0] PCSrc;
	reg [2:0] SPSrc;
	reg PCWrite;
	reg SPWrite;
	reg InstWrite;
	reg [15:0] immPlusPC;
	reg [15:0] pcPlusMary;
	reg [15:0] jcmpImm;
	reg [15:0] jcmpImmLS;
	reg jcmp;
	reg PCReset;
	reg SPReset;

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
		.immPlusPC(immPlusPC), 
		.pcPlusMary(pcPlusMary), 
		.jcmpImm(jcmpImm), 
		.jcmpImmLS(jcmpImmLS), 
		.jcmp(jcmp), 
		.PCReset(PCReset), 
		.SPReset(SPReset), 
		.MemVal_out(MemVal_out), 
		.Inst_out(Inst_out), 
		.pc_out(pc_out), 
		.sp_out(sp_out)
	);

	//clock
	parameter PERIOD = 20;
	parameter real DUTY_CYCLE = 0.5;
	parameter OFFSET = 10;
	
	initial
		begin
			#OFFSET;
			forever
				begin
				clock = 1'b0;
				#(PERIOD - (PERIOD*DUTY_CYCLE)) clock = 1'b1;
				#(PERIOD*DUTY_CYCLE);
				end
		end

		// index for for loop
		integer i;
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
		PCSrc = 0;
		SPSrc = 0;
		PCWrite = 0;
		SPWrite = 0;
		InstWrite = 0;
		immPlusPC = 0;
		pcPlusMary = 0;
		jcmpImm = 0;
		jcmpImmLS = 0;
		jcmp = 0;
		PCReset = 0;
		SPReset = 0;


		// Wait 100 ns for global reset to finish
		#100;
		// Reset PC and SP
		PCWrite = 1;
		SPWrite = 1;
		PCReset = 1;
		SPReset = 1;
		#60;
		
		/*
		// Test 1
		// Write x to sp + 2 in mem for 0 <= x <= 15
		// Checks right after writing; next test will check that vals remain
		MemDst = 4;
		MemSrc = 1;
		SPReset = 0;
		#60;
		
		for (i = 0; i <= 15; i = i+1) begin
			MemWrite = 1;
			// Put 100 into shelley; it will go from shelley into mem
			ShelleyData = i;
			#50;
			// Set memWrite to 0 so it will start outputting again
			MemWrite = 0;
			//Read from memory at address = sp + 2 (i.e. 2)
			#50;
			// MemVal_out is last set val in mem if nothing else requested, so it will be what we just put in
			if (MemVal_out == i && sp_out == 2 * i)
				$display("PASSED test 1 part %d", i);
			else
				$display("FAILED test 1 part  %d: sp was %d and memVal was %d", i, sp_out, MemVal_out);
			SPSrc = 1;
			#20;
			SPSrc = 0;
			#20;
		end
			
			
		// Test 2
		// Read vals written in Test 1 going backward
		#20;
		MemWrite = 0;
		// Must decrement sp once before beginning to make up for extra increment at end of test 1
		SPSrc = 2;
		#20;
		SPSrc = 0;
		for (i = 0; i <= 15; i = i+1) begin
			#20;
			if (MemVal_out == 15 - i && sp_out == 30 - (2 * i))
				$display("PASSED test 2 part %d", i);
			else
				$display("FAILED test 2 part %d: sp was %d and memVal was %d", i, sp_out, MemVal_out);
			#20;
			SPSrc = 2;
			#20;
			SPSrc = 0;
		end
		*/
		
		// Test 3
		// Write vals 0 to 15 for pc = 30 to 30 + 14
		MemDst = 0;
		MemSrc = 1;
		PCReset = 0;
		SPWrite = 0;
		PCWrite = 1;
		PCSrc = 2;
		ze_imm = 30;
		#60
		for (i = 0; i <= 15; i = i+1) begin
			MemWrite = 1;
			// Put 100 into shelley; it will go from shelley into mem
			ShelleyData = i;
			#50;
			// Set memWrite to 0 so it will start outputting again
			MemWrite = 0;
			//Read from memory at address = sp + 2 (i.e. 2)
			#50;
			// MemVal_out is last set val in mem if nothing else requested, so it will be what we just put in
			if (MemVal_out == i && pc_out == 32 + 2 * i)
				$display("PASSED test 3 part %d", i);
			else
				$display("FAILED test 3 part  %d: pc was %d and memVal was %d", i, pc_out, MemVal_out);
			PCSrc = 0;
			#20;
			PCSrc = 7;
		end
		
	end
      
endmodule

