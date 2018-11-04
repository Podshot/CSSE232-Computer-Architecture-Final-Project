`timescale 1ns / 1ps

module memory(
	input [15:0] Address, DataIn,
	input MemWrite, clock,
	output [15:0] MemVal,
	input reset
	);
	
	reg [15:0] main_memory [256:0];
	reg [15:0] internal_mem_val;
	
	
	always @ (posedge clock)
	begin
		if (reset == 1'b1)
		begin
			//$readmemb("test1.mem", main_memory); //why this no work :((((
			main_memory[0] = 16'b0000000000001000; //aput 2
			main_memory[1] = 16'b0000100000010100; //aadd 5
			main_memory[2] = 16'b1000000000010100; //aput@ 5
			main_memory[3] = 16'b1000100000111000; //aadd@
			
			main_memory[4] = 16'b0000000000010100; //aput 5
			main_memory[5] = 16'b0000110000001000; //asub 2
			main_memory[6] = 16'b1000000000001100; //aput@ 3
			main_memory[7] = 16'b1000110000000000; //asub@
			
			main_memory[8] = 16'b0000000111111100; //aput 127
			main_memory[9] = 16'b0100010000100000; //shfl 8
			main_memory[10] = 16'b0011111111111100; //lorr 255
			
			main_memory[11] = 16'b0000010000011100; //sput 7
			main_memory[12] = 16'b0001000000000000; //spek
			main_memory[13] = 16'b0000010000101000; //sput 10
			main_memory[14] = 16'b0001010000000000; //spop
			main_memory[15] = 16'b0001100000000000; //rpop
			
			main_memory[16] = 16'b0100110000000100; //load 1
			main_memory[17] = 16'b1000000000001000; //aput@ 5
			main_memory[18] = 16'b1100110000000100; //load@
			main_memory[19] = 16'b0101000000000100; //stor 1
		end
		else if (MemWrite == 1'b1) 
		begin
			main_memory[Address] = DataIn;
		end
	end
	
	always @ (posedge clock)
	begin
		if (MemWrite == 1'b0) begin
			internal_mem_val = main_memory[Address];
		end
	end
	
	assign MemVal = internal_mem_val;
endmodule
