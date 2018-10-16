`timescale 1ns / 1ps

module memory(
	input [15:0] Address, DataIn,
	input MemWrite, clock,
	output reg [15:0] MemVal
	);
	
	reg [15:0] main_memory [4096:0];
	
	
	always @ (posedge clock)
	begin
		if (MemWrite == 1'b1)
			main_memory[Address] = DataIn;
		else
			MemVal = main_memory[Address];
	end

endmodule
