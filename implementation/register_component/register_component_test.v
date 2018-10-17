`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:24 10/16/2018
// Design Name:   register_component
// Module Name:   C:/Users/gotharbg/Documents/Fall Term 2018/CSSE 232/1819a-csse232-02-3V/implementation/register_component/register_component_test.v
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

module register_component_test;

	// Inputs
	reg [15:0] in;
	reg CLK;
	reg write;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	register_component uut (
		.in(in), 
		.clock(CLK), 
		.write(write), 
		.out(out)
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
		in = 0;
		write = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		write = 1;
		in = 0;
		#50;
		write = 0;
		#75;
		
		if (out != 0) begin
			$display("[Failed] Register initialization! OUT=%out", out);
		end else begin
			$display("[Passed] Register initialization!");
		end
			
		#75;
		
		// Start Test #1 - Not storing "in" value when write == 0
		in = 16;
		#50; // Wait for hardware to simulate
		
		if (out != 0) begin
			$display("[Failed] Storing 'in' value when write == 0 test!");
		end else begin
			$display("[Passed] Storing 'in' value when write == 0 test!");
		end
		// End Test #1
		
		// Start Test #2 - Storing "in" value  when write == 1
		#75;
		
		write = 1; // Set write to 1
		in = 16;   // Set "in" value to 16
		#50;       // Wait for hardware
		write = 0; // Set write back to 0
		
		#75;      // Wait for hardware again
		
		if (out != 16) begin
			$display("[Failed] Storing 'in' value when write == 1 test!");
		end else begin
			$display("[Passed] Storing 'in' value when write == 1 test!");
		end
		// End Test #2
		
		// Start Test #3 - Overwriting value of register when write == 1
		#75;
		write = 1; // Set write to 1
		in = 3;    // Set "in" value to 3
		#50;       // Wait for hardware
		write = 0; // Set write back to 0
		
		#75;       // Wait for hardware
		
		if (out != 3) begin
			$display("[Failed] Overwriting of register value when write == 1 test!");
		end else begin
			$display("[Passed] Overwriting of register value when write == 1 test!");
		end
		// End Test #3
		
		// Start Test #4 - Overwriting value of register when write == 0
		#75;
		write = 0; // Set write to 0
		in = 7;    // Set "in" value to 7
		#50;       // Wait for hardware
		write = 0; // Set write to 0
		
		#75;      // Wait for hardware
		
		if (out != 3) begin
			$display("[Failed] Overwriting of register value when write == 0 test!");
		end else begin
			$display("[Passed] Overwriting of register value when write == 0 test!");
		end
		// End Test #4
		
		#75;
	end
      
endmodule

