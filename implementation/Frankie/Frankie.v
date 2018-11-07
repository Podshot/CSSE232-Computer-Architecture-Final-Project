`timescale 1ns / 1ps
//BEST PROCESSOR EVER BIG MIPS ENERGY

module Frankie(
	input clock,
	input reset,
	input [15:0] io_in,
	output [15:0] io_out
    );
	
	wire [15:0] inst_out;
	wire MemWrite;
	wire [1:0] MemSrc;
	wire [2:0] MemDst;
	wire [2:0] PCSrc;
	wire [1:0] SPSrc;
	wire PCWrite;
	wire SPWrite;
	wire InstWrite;
	wire mary_write;
	wire shelley_write;
	wire comp_write;
	wire ra_write;
	wire [1:0] mary_src;
	wire [1:0] shelley_src;
	wire ra_src;
	wire SrcA;
	wire [1:0] SrcB;
	wire [3:0] AluOp;

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
		.io_in(io_in),
		.io_out(io_out),
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
		.MaryWrite(mary_write),
		.ShelleyWrite(shelley_write),
		.CompWrite(comp_write),
		.RAWrite(ra_write),
		.PCWrite(PCWrite),
		.SPWrite(SPWrite),
		.InstWrite(InstWrite),
		.MarySrc(mary_src),
		.ShelleySrc(shelley_src),
		.RASrc(ra_src),
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
