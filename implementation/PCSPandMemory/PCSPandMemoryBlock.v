`timescale 1ns / 1ps

module PCSPandMemoryBlock(
    input clock,
	 input MemWrite,
	 input [1:0] MemSrc,
	 input [2:0] MemDst,
	 input [15:0] ze_imm,
	 input [15:0] ls_imm,
	 input [15:0] MaryData,
	 input [15:0] ShelleyData,
	 input [15:0] RAData,
	 input [15:0] CompData,
	 input [2:0] PCSrc,
	 input [2:0] SPSrc,
	 input PCWrite,
	 input SPWrite,
	 input InstWrite,
	 // Joy added 5; changed reset to pc and sp resets
	 input [15:0] immPlusPC,
	 input [15:0] pcPlusMary,
	 input [15:0] jcmpImm,
	 input [15:0] jcmpImmLS,
	 input jcmp,
	 input PCReset,
	 input SPReset,
	 output [15:0] MemVal_out,
	 output [15:0] Inst_out,
	 output [15:0] pc_out,
	 output [15:0] sp_out
	 );
	
pc_block pc_block(
		.clock(clock),
		.pcSrc(PCSrc),
		// from ALU
		.immPlusPC(immPlusPC),
		.immAddr(ze_imm),
		.ra(RAData),
		.mary(MaryData),
		// all 3 of these should come from ALu
		.pcPlusMary(pcPlusMary),
		.jcmpImm(jcmpImm),
		.jcmpImmLS(jcmpImmLS),
		.comp(CompData),
		.jcmp(jcmp),
		.pcWrite(PCWrite),
		.pcReset(PCReset),
		.pcCur(pc_out)
	);
	
sp_block sp_block(
		.clock(clock),
		.spSrc(SPSrc),
		.spWrite(SPWrite),
		.spReset(SPReset),
		.spCur(sp_out)
	);
	
	wire [15:0] mem_out;

memory_datapath memory_datapath(
		.clock(clock),
		.MemWrite(MemWrite),
		.MemSrc(MemSrc),
		.MemDst(MemDst),
		.pc(pc_out),
		.sp_in(sp_out),
		.ze_imm(ze_imm),
		.ls_imm(ls_imm),
		.MaryData(MaryData),
		.ShelleyData(ShelleyData),
		.RAData(RAData),
		.mem_out(mem_out)
	);
		
register_component Inst(
	.in(mem_out),
	.clock(clock),
	.write(InstWrite),
	.out(Inst_out)
	);
	
	register_component MemVal(
	.in(mem_out),
	.clock(clock),
	.write(1'b1),
	.out(MemVal_out)
	);
	

endmodule
