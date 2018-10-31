`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:12 10/31/2018
// Design Name:   pc_block
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/PC_SP_and_Mem_block/pc_block_tb.v
// Project Name:  PC_SP_and_Mem_block
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
	reg [2:0] pcSrc;
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

	initial begin
		// Initialize Inputs
		clock = 0;
		pcSrc = 0;
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
      		#100;
		pcWrite = 1;
		immAddr = 2;
		ra = 3;
		mary = 4;
		comp = 1;
		reset = 0;
		#100;
		
		pcSrc = 0;
		#100;
		if (pcOut != 4)
			$display("FAILED test 1");
		else
			$display("PASSED test 1");
		#100;
		//pc is now 2
		pcSrc = 1;
		#100;
		if (pcOut != 8)
			$display("FAILED test 2");
		else
			$display("PASSED test 2");
		//pc is now 4
		#100;
		pcSrc = 2;
		#100;
		if (pcOut != 2)
			$display("FAILED test 3");
		else
			$display("PASSED test 3");
		#100;
		//pc is now 2
		pcSrc = 3;
		#20;
		if (pcOut != 3)
			$display("FAILED test 4");
		else
			$display("PASSED test 4");
		#100;


	end
      
endmodule

