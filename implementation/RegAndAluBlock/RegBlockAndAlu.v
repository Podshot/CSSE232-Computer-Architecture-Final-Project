`timescale 1ns / 1ps

module RegBlockAndAlu(
	input [15:0] memval,
	input [7:0] immediate,
	input [15:0] pc,
	input mary_write,
	input shelley_write,
	input comp_write,
	input ra_write,
	input [1:0] mary_src,
	input [1:0] shelley_src,
	input ra_src, //note: comp only takes in aluout, so it needs no source control
	input clock,
	input [0:0] SrcA,
	input [1:0] SrcB,
	input [2:0] AluOp,
	output overflow,
	output [15:0] aluout,
	output [15:0] mary_output,
	output [15:0] shelley_output,
	output [15:0] comp_output,
	output [15:0] ra_output
	);

	//outputs of regblock
	wire [15:0] mary_reg_out;
	wire [15:0] shelley_reg_out;
	wire [15:0] comp_reg_out;
	wire [15:0] ra_reg_out;
	
	//used as inputs for alu, since inputs have to be regs?
	reg [15:0] mary_out;
	reg [15:0] shelley_out;
	reg [15:0] comp_out;
	reg [15:0] ra_out;
	
	wire [15:0] zeroextender_out;
	wire [15:0] signextender_out;
	wire [15:0] leftshifter_out;
	
	reg [15:0] zext_imm;
	reg [15:0] sext_imm;
	reg [15:0] sext_ls_imm;
	
	wire [15:0] aluout_wire;
	reg [15:0] aluout_reg;
	wire Overflow;
	
	always @ zeroextender_out
		zext_imm = zeroextender_out;
	always @ signextender_out
		sext_imm = signextender_out;
	always @ leftshifter_out
		sext_ls_imm = leftshifter_out;
	always @ mary_reg_out
		mary_out = mary_reg_out;
	always @ shelley_reg_out
		shelley_out = shelley_reg_out;
	always @ comp_reg_out
		comp_out = comp_reg_out;
	always @ ra_reg_out
		ra_out = ra_reg_out;
	
zeroextender zeroextender(
	.in(immediate),
	.out(zeroextender_out)
	);
	
sign_extender signextender(
	.in(immediate),
	.out(signextender_out)
	);
	
left_shift_2 leftshifter(
	.in(sext_imm),
	.out(leftshifter_out)
	);

RegBlock RegBlock(
	.memval(memval),
	.aluout(aluout_reg),
	.immediate(sext_imm),
	.pc(pc),
	.mary_write(mary_write),
	.shelley_write(shelley_write),
	.comp_write(comp_write),
	.ra_write(ra_write),
	.mary_src(mary_src),
	.shelley_src(shelley_src),
	.ra_src(ra_src),
	.clock(clock),
	.mary_out(mary_reg_out),
	.shelley_out(shelley_reg_out),
	.comp_out(comp_reg_out),
	.ra_out(ra_reg_out)
);

alu alu(
	.mary(mary_out),
	.sp(sp),
	.shelley(shelley_out),
	.zext_imm(zext_imm),
	.sext_imm(sext_imm),
	.sext_ls_imm(sext_ls_imm),
	.SrcA(SrcA),
	.SrcB(SrcB),
	.AluOp(AluOp),
	.clock(clock),
	.out(aluout),
	.Overflow(Overflow)
);

endmodule
