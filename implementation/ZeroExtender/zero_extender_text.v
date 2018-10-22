`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:41 10/16/2018
// Design Name:   zero_extender
// Module Name:   C:/Users/corialmt/Documents/Sophomore Year/Fall Quarter/CompArch/1819a-csse232-02-3V/implementation/zero_extender/work/ZeroExtender/zero_extender_text.v
// Project Name:  ZeroExtender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: zero_extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module zero_extender_text;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	zero_extender uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

