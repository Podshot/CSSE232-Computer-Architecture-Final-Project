`timescale 1ns / 1ps

module Frankie_tb;

	// Inputs
	reg clock;
	reg reset;
	
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	Frankie uut (
		.clock(clock), 
		.reset(reset)
	);
	
	always begin
		#20 clock = !clock;
	end


	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;

		#100;
		reset = 0;

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
		
		//test sub
		for(i=0;i<14;i=i+1) begin
			#40;
		end //value in mary should be 0, shelley should be 3
		
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
		$finish;
	end
      
endmodule

