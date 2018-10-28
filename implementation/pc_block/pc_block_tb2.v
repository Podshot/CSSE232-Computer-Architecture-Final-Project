`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:01:48 10/23/2018
// Design Name:   pc_block
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/pc_block/pc_block_tb2.v
// Project Name:  pc_block
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

module pc_block_tb2;

	// Inputs
	reg clock;
	reg [3:0]  pcSrc;
	reg [15:0] immPlusPC;
	reg [15:0] immAddr;
	reg [15:0] ra;
	reg [15:0] mary;
	reg [15:0] pcPlusMary;
	reg [15:0] jcmpImm;
	reg [15:0] jcmpImmLS;
	reg pcWrite;

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
		.pcWrite(pcWrite), 
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
		pcWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
		//no writing to pc for first 200 ns
		pcSrc = 2;
		#100
		// 200 to 300 ns: pc should be 0
		//load in immAddr of 0
		pcWrite = 1;
		#100
		// 300 to 400 ns: pc should be 2
		immPlusPC = 1;
		immAddr = 2;
		ra = 3;
		mary = 4;
		pcPlusMary = 5;
		jcmpImm = 6;
		jcmpImmLS= 7;
		#100;
		// 400 to 500 ns: pc should increment by 2 every 20 ns, ending at 12
		pcSrc = 0;
		#100;
		// 500 to 600 ns: pc should be 1
		pcSrc = 1;
		#100;
		// 600 to 700 ns: pc should be 3
		pcSrc = 3;
		#100;
		// 700 to 800 ns: pc should be 4
		pcSrc = 4;
		#100;
		// 800 to 900 ns: pc should be 5
		pcSrc = 5;
		#100;
		// 900 to 1000 ns: pc should be 6
		pcSrc = 6;
		#100;
		// 1000 to 1100 ns: pc should be 7
		pcSrc = 7;
		#100;

	end
      
endmodule
