`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:51:53 10/17/2018
// Design Name:   sign_extender
// Module Name:   C:/Users/corialmt/Documents/Sophomore Year/Fall Quarter/CompArch/SignExtender/work/sign_extender_test.v
// Project Name:  SignExtender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_extender_test;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	sign_extender uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		//Test 1: Negative Value 
		in = 8'b11111111;
		#100;
		if(out == 16'b1111111111111111)
			$display("Test 1 Passed");
		else 
			$display("Test 1 Failed: ");
		
		#100;
		//Test 2: Positive Value
		in = 8'b00000000; 
		#100;
		if(out == 16'b0000000000000000)
			$display("Test 2 Passed");
		else 
			$display("Test 2 Failed: ");
		

	end
      
endmodule

