`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:49 10/21/2018
// Design Name:   register_component
// Module Name:   C:/Users/gotharbg/Documents/Fall Term 2018/CSSE 232/1819a-csse232-02-3V/implementation/register_component/multi_component_test.v
// Project Name:  register_component
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_component
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_component_test;

	// Independent Inputs
	reg CLK;
	
	// Inputs for Mary
	reg [15:0] in_m;
	reg write_m;
	
	// Inputs for Shelley
	reg [15:0] in_s;
	reg write_s;

	// Outputs for Mary and Shelley
	wire [15:0] out_m;
	wire [15:0] out_s;

	// Instantiate the Unit Under Test (UUT)
	register_component mary (
		.in(in_m), 
		.clock(CLK), 
		.write(write_m), 
		.out(out_m)
	);
	
	register_component shelley (
		.in(in_s), 
		.clock(CLK), 
		.write(write_s), 
		.out(out_s)
	);
	
	// Copied from the CSSE232 Course Website Resources pages
	// use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   initial    // Clock process for CLK
     begin
        #OFFSET;
        forever
          begin
             CLK = 1'b0;
             #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = 1'b1;
             #(PERIOD*DUTY_CYCLE);
          end
     end

	initial begin
		// Initialize Inputs
		in_m = 0;
		in_s = 0;
		write_m = 0;
		write_s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		write_m = 1;
		write_s = 1;
		#75;
		in_m = 16;
		#200; // Wait 200ns before setting shelley's value to mary's
		in_s = out_m;
		#100;
		write_s = 0;
		write_m = 0;

	end
      
endmodule

