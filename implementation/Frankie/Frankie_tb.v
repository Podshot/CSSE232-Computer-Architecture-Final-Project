`timescale 1ns / 1ps

module Frankie_tb;

	// Inputs
	reg clock;
	reg reset;
	reg [15:0] io_in;
	reg [15:0] io_out;
	
	
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	Frankie uut (
		.clock(clock), 
		.reset(reset),
		.io_in(io_in),
		.io_out(io_out)
	);
	
	always begin
		#20 clock = !clock;
	end


	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
		io_in = 0;

		#100;
		reset = 0;

		/*
		//test add
		#30; //get mem_out, increment pc
		#40; //put mem_out into inst, calculate control bits
		#40; //put immediate into mary; mary should be 2
		
		#40; //get mem_out, increment pc
		#40; //put mem_out into inst, calculate control bits
		#40; //add mary and sign-extended immediate
		#40; //put aluout into mary; mary should be 7
		
		#40; //get mem_out, increment pc
		#40; //put mem_out into inst, calculate control bits
		#40; //put immediate into shelley; shelley should be 5
		
		#40; //get mem_out, increment pc
		#40; //put mem_out into inst, calculate control bits
		#40; //add mary and shelley
		#40; //put aluout into mary; mary should be 12
		*/
		
		//test sub
		//test write io
		for(i=0;i<7;i=i+1) begin
			#40;
		end //value in mary should be 0, shelley should be 3
		
		io_in = 16;
		for(i=0;i<3;i=i+1) begin
			#40; // test read IO
		end
		
		/*
		//test big immediate
		for(i=0;i<11;i=i+1) begin
			#40;
		end //value in mary should be 32767
		
		//test stack ops
		for(i=0;i<18;i=i+1) begin
			#40;
		end //value in mary should be 10, ra should be 7, sp should be 0
		
		//test load and store
		for(i=0;i<14;i=i+1) begin
			#40;
		end //value in mary should be 10, shelley should be 2, mem[1] should be 10
		
		//test function add
		for (i=0;i<26;i=i+1) begin
			#40;
		end
		// We expect mary to equal 7 and shelley to be 2 and sp to be 0
		
		//test swap
		for (i = 0; i < 3; i = i + 1) begin
			#40;
		end
		// We expect to finish with mary = 2 and shelley = 7
		
		//test summation
		for (i=0;i<256;i=i+1) begin
			#40; //256
		end
		// end: mary=55, shelley=10, comp=1
		
		//test just gcd
		for (i = 0; i < 20; i = i + 1) begin
			#40;
		end
		// We expect mary to hold 5

		$finish;
	end
      
endmodule

