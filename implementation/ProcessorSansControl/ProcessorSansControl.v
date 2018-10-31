`timescale 1ns / 1ps

module ProcessorSansControl(
	input clock,
	input MemWrite,
	input [1:0] MemSrc,
	input [2:0] MemDst,
	input [2:0] PCSrc,
	input [2:0] SPSrc,
	input PCWrite,
	input SPWrite,
	input InstWrite,
	input reset,
	input mary_write,
	input shelley_write,
	input comp_write,
	input ra_write,
	input [1:0] mary_src,
	input [1:0] shelley_src,
	input ra_src,
	input SrcA,
	input [1:0] SrcB,
	input [3:0] AluOp,
	output overflow_output,
	output [15:0] instruction
   );


PCSPandMemoryBlock PCSPandMemoryBlock(
	.clock(clock),
	.MemWrite(MemWrite),
	.MemSrc(MemSrc),
	.MemDst(MemDst),
	.ze_imm(zext_imm),
	.ls_imm(sext_ls_imm),
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
	.MemVal_out(MemVal),
	.Inst_out(Inst),
	.pc_out(pc),
	.sp_out(sp)
	);
	
	reg [15:0] inst_reg;
	
	always @ *
	begin
		inst_reg = Inst;
	end
	
	assign instruction = Inst;

RegBlockAndAlu RegBlockAndAlu(
	.memval(MemVal),
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
	.sext_ls_imm_output(sext_ls_imm)
	);
	
	assign overflow_output = overflow;
	

endmodule
