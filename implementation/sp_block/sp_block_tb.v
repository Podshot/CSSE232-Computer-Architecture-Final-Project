`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:14 10/28/2018
// Design Name:   pc_block
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/sp_block/sp_block_tb.v
// Project Name:  sp_block
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

module sp_block_tb;

	// Inputs
	reg clock;
	reg [2:0] spSrc;
	reg spWrite;
	reg spReset;

	// Outputs
	wire [15:0] spCur;

	// Instantiate the Unit Under Test (UUT)
	sp_block uut (
		.clock(clock), 
		.spSrc(spSrc), 
		.spWrite(spWrite), 
		.spCur(spCur),
		.spReset(spReset)
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
		spSrc = 0;
		spWrite = 0;
		spReset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		spWrite = 1;
		spReset = 1;
		// 100 to 200 ns: sp should be 0
		#100;
		spReset = 0;
		spSrc = 1;
		// 200 to 300 ns: sp should be 2, 4, 6, 8, 10
		#100;
		spSrc = 0;
		// 300 to 400 ns: sp holds steady at 10
		#100;
		spSrc = 2;
		// 400 to 500 ns :sp goes back to 0
		#100;
		spSrc = 0;
		end
      
endmodule

