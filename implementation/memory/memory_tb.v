`timescale 1ns / 1ps

module memory_tb;

	// Inputs
	reg [15:0] Address;
	reg [15:0] DataIn;
	reg MemWrite;
	reg clock;

	// Outputs
	wire [15:0] MemVal;
	
	// Loop variables
	integer i;
	integer maxi = 64;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.Address(Address), 
		.DataIn(DataIn), 
		.MemWrite(MemWrite), 
		.clock(clock), 
		.MemVal(MemVal)
	);
	
	always begin
		#1 clock = !clock;
	end

	initial begin
		// Initialize Inputs
		Address = 0;
		DataIn = 0;
		MemWrite = 0;
		clock = 0;

		#100;
		
		//test write
		MemWrite = 1;
		for(i=0;i<maxi;i=i+1)
		begin
			Address = i*4;
			DataIn = i;
			#2;
		end
		
		//test read
		MemWrite = 0;
		for(i=0;i<maxi;i=i+1)
		begin
			Address = i*4;
			#2;
		end
		
	end
      
endmodule

