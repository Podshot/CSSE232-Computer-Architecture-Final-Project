`timescale 1ns / 1ps

module memory(
	input [15:0] Address, DataIn,
	input MemWrite, clock,
	output [15:0] MemVal
	);
	
	reg [15:0] main_memory [4096:0];
	reg [15:0] internal_mem_val;
	
	
	always @ (posedge clock)
	begin
		if (MemWrite == 1'b1) begin
			main_memory[Address] = DataIn;
		end else begin
			internal_mem_val = main_memory[Address];
		end
	end
	
	assign MemVal = internal_mem_val;

endmodule
