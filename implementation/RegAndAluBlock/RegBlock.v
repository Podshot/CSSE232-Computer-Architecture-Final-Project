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
	 
	input [1:0] mary_src,
	input [1:0] shelley_src,
	input ra_src, //note: comp only takes in aluout, so it needs no source control
	 
	input clock,
	 
	output [15:0] mary_out,
	output [15:0] shelley_out,
	output [15:0] comp_out,
	output [15:0] ra_out
	);
	
	//registers used to keep track of mux results
	reg [15:0] mary_in;
	reg [15:0] shelley_in;
	//comp always takes aluout in, so it needs no mux register
	reg [15:0] ra_in;
	
	always @ *
	begin
		//the following case statements simulate muxes
		//and decide which data gets written to the regs
		case(mary_src)
			2'b00: mary_in = memval;
			2'b01: mary_in = aluout;
			2'b10: mary_in = shelley_out;
			2'b11: mary_in = immediate;
		endcase
		
		case(shelley_src)
			2'b00: shelley_in = memval;
			2'b01: shelley_in = immediate;
			2'b10: shelley_in = mary_out;
		endcase
		
		case(ra_src)
			1'b0: ra_in = memval;
			1'b1: ra_in = pc+2;
		endcase
	end
	

register_component mary(
	.in(mary_in),
	.clock(clock),
	.write(mary_write),
	.out(mary_out)
	);
	
register_component shelley(
	.in(shelley_in),
	.clock(clock),
	.write(shelley_write),
	.out(shelley_out)
	);
	
register_component comp(
	.in(aluout),
	.clock(clock),
	.write(comp_write),
	.out(comp_out)
	);
	
register_component ra(
	.in(ra_in),
	.clock(clock),
	.write(ra_write),
	.out(ra_out)
	);


endmodule
