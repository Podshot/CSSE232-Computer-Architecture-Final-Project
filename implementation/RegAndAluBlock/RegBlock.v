`timescale 1ns / 1ps

module RegBlock(
	input [15:0] memval,
	input [15:0] aluout,
	input [15:0] immediate,
	input [15:0] pc,
	 
	input mary_write,
	input shelley_write,
	input comp_write,
	input ra_write,
	 
	input [2:0] mary_src,
	input [1:0] shelley_src,
	input ra_src, //note: comp only takes in aluout, so it needs no source control
	 
	input clock,
	 
	output [15:0] mary_out,
	output [15:0] shelley_out,
	output [15:0] comp_out,
	output [15:0] ra_out,
	input reset,
	input [15:0] comary,
	input [15:0] coshelley,
	input [15:0] cocomp,
	input [15:0] cora
	);
	
	//registers used to keep track of mux results
	reg [15:0] mary_in;
	reg [15:0] shelley_in;
	//comp always takes aluout in, so it needs no mux register
	reg [15:0] ra_in;
	
	always @ (memval, aluout, shelley_out, immediate, mary_out, pc, mary_src, shelley_src, ra_src)
	begin
		//the following case statements simulate muxes
		//and decide which data gets written to the regs
		case(mary_src)
			3'b000: mary_in = memval;
			3'b001: mary_in = aluout;
			3'b010: mary_in = shelley_out;
			3'b011: mary_in = immediate;
		endcase
		
		case(shelley_src)
			2'b00: shelley_in = memval;
			2'b01: shelley_in = immediate;
			2'b10: shelley_in = mary_out;
		endcase
		
		case(ra_src)
			1'b0: ra_in = memval;
			1'b1: ra_in = pc;
		endcase
	end
	

register_component mary(
	.in(mary_in),
	.clock(clock),
	.write(mary_write),
	.out(mary_out),
	.reset(reset)
	);
	
register_component shelley(
	.in(shelley_in),
	.clock(clock),
	.write(shelley_write),
	.out(shelley_out),
	.reset(reset)
	);
	
register_component comp(
	.in(aluout),
	.clock(clock),
	.write(comp_write),
	.out(comp_out),
	.reset(reset)
	);
	
register_component ra(
	.in(ra_in),
	.clock(clock),
	.write(ra_write),
	.out(ra_out),
	.reset(reset)
	);


endmodule
