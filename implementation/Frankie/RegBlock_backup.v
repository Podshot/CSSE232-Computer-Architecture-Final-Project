`timescale 1ns / 1ps

module RegBlock_backup(
	input [15:0] mary,
	input [15:0] shelley,
	input [15:0] comp,
	input [15:0] ra,
	
	input clock, 
	input in_kernel,
	
	output [15:0] comary_out,
	output [15:0] coshelley_out,
	output [15:0] cocomp_out,
	output [15:0] cora_out,
	input reset
	);
	

register_component comary(
	.in(mary),
	.clock(clock),
	.write(~in_kernel),
	.out(comary_out),
	.reset(reset)
	);
	
register_component coshelley(
	.in(shelley),
	.clock(clock),
	.write(~in_kernel),
	.out(coshelley_out),
	.reset(reset)
	);


endmodule
