`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:31 10/21/2018
// Design Name:   pc_block
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/pc_block/pc_block_tb.v
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

module pc_block_tb;

	// Inputs
	reg clock;
	reg pcSrc;
	reg [15:0] nextInst;
	reg [15:0] jump;
	reg pcWrite;

	// Outputs
	wire [15:0] pcCur;

	// Instantiate the Unit Under Test (UUT)
	pc_block uut (
		.clock(clock), 
		.pcSrc(pcSrc), 
		.nextInst(nextInst), 
		.jump(jump), 
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
		nextInst = 0;
		jump = 0;
		pcWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		nextInst = 42;
		pcWrite = 1;
		
		#100;
		
		jump = 24;
		pcSrc = 1;
		//pcWrite already 1
		
		#100;
		
		

	end
      
endmodule

