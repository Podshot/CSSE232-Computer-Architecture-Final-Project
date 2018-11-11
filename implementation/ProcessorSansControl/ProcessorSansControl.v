`timescale 1ns / 1ps

module ProcessorSansControl(
	input clock,
	input MemWrite,
	input [1:0] MemSrc,
	input [2:0] MemDst,
	input [3:0] PCSrc,
	input [1:0] SPSrc,
	input PCWrite,
	input SPWrite,
	input InstWrite,
	input reset,
	input mary_write,
	input shelley_write,
	input comp_write,
	input ra_write,
	input [2:0] mary_src,
	input [1:0] shelley_src,
	input ra_src,
	input SrcA,
	input [1:0] SrcB,
	input [3:0] AluOp,
	input [15:0] io_in,
	output [15:0] io_out,
	output overflow_output,
	output [15:0] instruction,
	input in_kernel,
	output [15:0] pc_out
   );

	wire [15:0] mem_out;
	wire [15:0] pc;
	assign pc_out = pc;
	wire [15:0] sp;
	wire [15:0] comp;
	wire [15:0] ra;
	wire [15:0] shelley;
	wire [15:0] mary;
	wire [15:0] sext_imm;
	wire [15:0] sext_ls_imm;
	wire [15:0] zext_imm;

PCSPandMemoryBlock PCSPandMemoryBlock(
	.clock(clock),
	.MemWrite(MemWrite),
	.MemSrc(MemSrc),
	.MemDst(MemDst),
	.ze_imm(zext_imm),
	.ls_imm(sext_ls_imm),
	.se_imm(sext_imm),
	.MaryData(mary),
	.ShelleyData(shelley),
	.RAData(ra),
	.CompData(comp),
	.PCSrc(PCSrc),
	.SPSrc(SPSrc),
	.PCWrite(PCWrite),
	.SPWrite(SPWrite),
	.InstWrite(InstWrite),
	.reset(reset),
	.io_in(io_in),
	.io_out(io_out),
	.mem_data_out(mem_out),
	.Inst_out(instruction),
	.pc_out(pc),
	.sp_out(sp),
	.in_kernel(in_kernel)
	);
	
	reg [15:0] inst_reg;
	
	always @ instruction
	begin
		inst_reg = instruction;
	end

RegBlockAndAlu RegBlockAndAlu(
	.memval(mem_out),
	.immediate(inst_reg[9:2]),
	.sp(sp),
	.pc(pc),
	.mary_write(mary_write),
	.shelley_write(shelley_write),
	.comp_write(comp_write),
	.ra_write(ra_write),
	.mary_src(mary_src),
	.shelley_src(shelley_src),
	.ra_src(ra_src),
	.clock(clock),
	.SrcA(SrcA),
	.SrcB(SrcB),
	.AluOp(AluOp),
	.overflow(overflow),
	.mary_output(mary),
	.shelley_output(shelley),
	.comp_output(comp),
	.ra_output(ra),
	.zext_imm_output(zext_imm),
	.sext_imm_output(sext_imm),
	.sext_ls_imm_output(sext_ls_imm),
	.reset(reset),
	.in_kernel(in_kernel)
	);
	
	assign overflow_output = overflow;
	

endmodule
