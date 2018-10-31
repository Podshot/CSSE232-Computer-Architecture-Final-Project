`timescale 1ns / 1ps

module Frankie(
	input clock,
	input reset
    );


ProcessorSansControl processor(
		.clock(clock),
		.MemWrite(MemWrite),
		.MemSrc(MemSrc),
		.MemDst(MemDst),
		.PCSrc(PCSrc),
		.SPSrc(SPSrc),
		.PCWrite(PCWrite),
		.SPWrite(SPWrite),
		.InstWrite(InstWrite),
		.reset(reset),
		.mary_write(mary_write),
		.shelley_write(shelley_write),
		.comp_write(comp_write),
		.ra_write(ra_write),
		.mary_src(mary_src),
		.shelley_src(shelley_src),
		.ra_src(ra_src),
		.SrcA(SrcA),
		.SrcB(SrcB),
		.AluOp(AluOp),
		.overflow_output(overflow),
		.instruction(inst_out)
	);
	
	reg [15:0] inst;
	
	always @ *
	begin
		inst = inst_out;
	end
	
control_unit control(
		.OPCODE(inst[14:10]),
		.flagbit(inst[15]),
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.MemSrc(MemSrc),
		.RegWrite(RegWrite),
		.MaryWrite(MaryWrite),
		.ShelleyWrite(ShelleyWrite),
		.CompWrite(CompWrite),
		.RAWrite(RAWrite),
		.PCWrite(PCWrite),
		.SPWrite(SPWrite),
		.InstWrite(InstWrite),
		.MarySrc(MarySrc),
		.ShelleySrc(ShelleySrc),
		.RASrc(RASrc),
		.PCSrc(PCSrc),
		.SPSrc(SPSrc),
		.RegDst(RegDst),
		.MemDst(MemDst),
		.RegData(RegData),
		.SrcA(SrcA),
		.SrcB(SrcB),
		.ALUOP(AluOp),
		.CLK(clock),
		.Reset(reset)
	);


endmodule
