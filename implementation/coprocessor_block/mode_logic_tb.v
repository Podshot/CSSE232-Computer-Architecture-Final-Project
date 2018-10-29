`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:38 10/29/2018
// Design Name:   coprocessor
// Module Name:   C:/Users/stockwja/Documents/Classes/CSSE232/1819a-csse232-02-3V/implementation/coprocessor/coprocessor_tb.v
// Project Name:  coprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: coprocessor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mode_logic_tb;

	// Inputs
	reg overflow;
	reg userInput;
	reg interruptsEnabled;

	// Outputs
	wire mode;

	// Instantiate the Unit Under Test (UUT)
	mode_logic uut (
		.overflow(overflow), 
		.userInput(userInput), 
		.interruptsEnabled(interruptsEnabled), 
		.mode(mode)
	);

	initial begin
		// Initialize Inputs
		overflow = 0;
		userInput = 0;
		interruptsEnabled = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Mode should be 0 for next 4 assignments
		overflow = 1;
		#100;
		userInput = 1;
		#100;
		overflow = 0;
		#100;
		userInput = 0;
		#100;
		interruptsEnabled = 1;
      #100;
		// Mode should be 1 for next 3 assignments
		overflow = 1;
		#100;
		userInput = 1;
		#100;
		overflow = 0;
		#100;
		// Mode should go back to 0.
		userInput = 0;
		 
		 
	end
      
endmodule

