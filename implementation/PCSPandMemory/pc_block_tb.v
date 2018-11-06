`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:59:50 10/31/2018
// Design Name:   pc_block
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/PCSPandMemory/pc_block_tb.v
// Project Name:  PCSPandMemory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc_block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_block_tb;

	// Inputs
	reg clock;
	reg [3:0] pcSrc;
	reg [15:0] immPlusPC;
	reg [15:0] immAddr;
	reg [15:0] ra;
	reg [15:0] mary;
	reg [15:0] pcPlusMary;
	reg [15:0] jcmpImm;
	reg [15:0] jcmpImmLS;
	reg comp;
	reg jcmp;
	reg pcWrite;
	reg pcReset;

	// Outputs
	wire [15:0] pcCur;

	// Instantiate the Unit Under Test (UUT)
	pc_block uut (
		.clock(clock), 
		.pcSrc(pcSrc), 
		.immPlusPC(immPlusPC), 
		.immAddr(immAddr), 
		.ra(ra), 
		.mary(mary), 
		.pcPlusMary(pcPlusMary), 
		.jcmpImm(jcmpImm), 
		.jcmpImmLS(jcmpImmLS), 
		.comp(comp), 
		.jcmp(jcmp), 
		.pcWrite(pcWrite), 
		.pcReset(pcReset), 
		.pcCur(pcCur)
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
		
	integer i;

	initial begin
		// Initialize Inputs
		clock = 0;
		pcSrc = 0;
		immPlusPC = 0;
		immAddr = 0;
		ra = 0;
		mary = 0;
		pcPlusMary = 0;
		jcmpImm = 0;
		jcmpImmLS = 0;
		comp = 0;
		jcmp = 0;
		pcWrite = 0;
		pcReset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		pcWrite = 1;
		pcSrc = 2;
		immAddr = 3;

	end
      
endmodule

