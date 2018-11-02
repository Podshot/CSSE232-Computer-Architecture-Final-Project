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
	 input [1:0] SPSrc,
	 input PCWrite,
	 input SPWrite,
	 input InstWrite,
	 input reset,
	 output [15:0] mem_out,
	 output [15:0] Inst_out,
	 output [15:0] pc_out,
	 output [15:0] sp_out
	 );
	
pc_block pc_block(
		.clock(clock),
		.pcSrc(PCSrc),
		.immAddr(ze_imm),
		.ra(RAData),
		.mary(MaryData),
		.comp(CompData),
		.pcWrite(PCWrite),
		.reset(reset),
		.pcOut(pc_out)
	);
	
sp_block sp_block(
		.clock(clock),
		.spSrc(SPSrc),
		.spWrite(SPWrite),
		.reset(reset),
		.spCur(sp_out)
	);

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
		.mem_out(mem_out),
		.reset(reset)
	);
		
register_component Inst(
	.in(mem_out),
	.clock(clock),
	.write(InstWrite),
	.out(Inst_out),
	.reset(reset)
	);
	

endmodule
