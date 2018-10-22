`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:38 10/17/2018
// Design Name:   left_shift_4
// Module Name:   C:/Users/corialmt/Documents/Sophomore Year/Fall Quarter/CompArch/LeftShift4/left_shift_4_test.v
// Project Name:  LeftShift4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: left_shift_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module left_shift_4_test;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	left_shift_4 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 16'b0011111111111111;
		
		#100;
		if(out == 16'b1111111111110000)
			$display("Test 1 Passed");
		else
			$display("Test 1 Failed");
			
		#100;
		//TEST 2:
		in = 16'b0000000000000001; 
		#100; 
		if(out == 16'b0000000000010000)
			$display("Test 2 Passed");
		else
			$display("Test 2 Failed"); 

		

	end
      
endmodule

