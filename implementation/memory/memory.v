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
			//$readmemb("memory.mem", main_memory);   make this work eventually pls :)
			main_memory[0] = 10;
			main_memory[1] = 5;
			main_memory[2] = 12;
			main_memory[3] = 6;
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
