`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:40:25 10/25/2018
// Design Name:   RegBlock
// Module Name:   C:/prgr/csse232/RegAndAluBlock/RegBlock_tb.v
// Project Name:  RegAndAluBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegBlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegBlock_tb;

	// Inputs
	reg [15:0] memval;
	reg [15:0] aluout;
	reg [15:0] immediate;
	reg [15:0] pc;
	reg mary_write;
	reg shelley_write;
	reg comp_write;
	reg ra_write;
	reg [1:0] mary_src;
	reg [1:0] shelley_src;
	reg ra_src;
	reg clock;

	// Outputs
	wire [15:0] mary_out;
	wire [15:0] shelley_out;
	wire [15:0] comp_out;
	wire [15:0] ra_out;

	// Instantiate the Unit Under Test (UUT)
	RegBlock uut (
		.memval(memval), 
		.aluout(aluout), 
		.immediate(immediate), 
		.pc(pc), 
		.mary_write(mary_write), 
		.shelley_write(shelley_write), 
		.comp_write(comp_write), 
		.ra_write(ra_write), 
		.mary_src(mary_src), 
		.shelley_src(shelley_src), 
		.ra_src(ra_src), 
		.clock(clock), 
		.mary_out(mary_out), 
		.shelley_out(shelley_out), 
		.comp_out(comp_out), 
		.ra_out(ra_out)
	);
	 
	always
	begin
		#3 clock = !clock;
	end

	initial begin
		// Initialize Inputs
		memval = 100;
		aluout = 2863;
		immediate = 14;
		pc = 44;
		
		mary_write = 0;
		shelley_write = 0;
		comp_write = 0;
		ra_write = 0;
		
		mary_src = 2'b00;
		shelley_src = 2'b00;
		ra_src = 1'b0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//Test 1: write memval to mary
		mary_write = 1;
		#10
		if (mary_out != 100)
			$display("FAILED test 1\n");
		else if (mary_out == 100)
			$display("PASSED test 1\n");
		#10
		
		//Test 2: write aluout to mary
		mary_src = 2'b01;
		#10
		if (mary_out != 2863)
			$display("FAILED test 2\n");
		else if (mary_out == 2863)
			$display("PASSED test 2\n");
		#10
			
		//Test 3: write immediate to mary (aput)
		mary_src = 2'b11;
		#10
		if (mary_out != 14)
			$display("FAILED test 3\n");
		else if (mary_out == 14)
			$display("PASSED test 3\n");
		#10
		
		mary_write = 0;
		shelley_write = 1;
			
		//Test 4: write immediate to shelley (aput@)
		shelley_src = 2'b01;
		#10
		if (shelley_out != 14)
			$display("FAILED test 4\n");
		else if (shelley_out == 14)
			$display("PASSED test 4\n");
		#10
		
		//Test 5: write memval to shelley
		shelley_src = 2'b00;
		#10
		if (shelley_out != 100)
			$display("FAILED test 5\n");
		else if (shelley_out == 100)
			$display("PASSED test 5\n");
		#10;
		
		mary_write = 0;
		shelley_write = 0;
		comp_write = 1;
		
		//Test 6: write aluout to comp
		#10
		if (comp_out != 2863)
			$display("FAILED test 6\n");
		else if (comp_out == 2863)
			$display("PASSED test 6\n");
		#10
		
		comp_write = 0;
		ra_write = 1;
		
		//Test 7: write memval to ra
		ra_src = 1'b0;
		#10
		if (ra_out != 100)
			$display("FAILED test 7\n");
		else if (ra_out == 100)
			$display("PASSED test 7\n");
		#10
		
		//Test 8: write pc+2 to ra
		ra_src = 1'b1;
		#10
		if (ra_out != 46)
			$display("FAILED test 8\n");
		else if (ra_out == 46)
			$display("PASSED test 8\n");
		#10;
		
		ra_write = 0;
		mary_write = 1;
		shelley_write = 1;
		
		//Test 6: swap mary and shelley
		mary_src = 2'b10;
		shelley_src = 2'b10;
		#10
		if (shelley_out != 14 || mary_out != 100)
			$display("FAILED test 6\n");
		else if (shelley_out == 14 && mary_out == 100)
			$display("PASSED test 6\n");
		#10
		
		$finish;
	end
      
endmodule