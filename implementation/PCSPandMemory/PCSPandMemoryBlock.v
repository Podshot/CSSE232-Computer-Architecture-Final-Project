`timescale 1ns / 1ps

module PCSPandMemoryBlock(
    input clock,
	 input MemWrite,
	 input [1:0] MemSrc,
	 input [2:0] MemDst,
	 input [15:0] ze_imm,
	 input [15:0] ls_imm,
	 input [15:0] se_imm,
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
	 input [15:0] io_in,
	 output [15:0] io_out,
	 output [15:0] mem_data_out,
	 output [15:0] Inst_out,
	 output [15:0] pc_out,
	 output [15:0] sp_out
	 );
	 
	 wire [15:0] mem_out;
	 reg [15:0] new_MemWrite;
	 reg [15:0] io_in_reg;
	 reg [15:0] io_out_reg;
	 
	 always @ (ze_imm, MemWrite, io_in, MaryData, mem_out) begin
		if (ze_imm == 255) begin
			if (MemWrite == 1'b0) begin
				io_in_reg = io_in;
			end else begin
				io_out_reg = MaryData;
				new_MemWrite = 1'b0;
			end
		end else begin
			io_in_reg = mem_out;
			new_MemWrite = MemWrite;
		end
	 end
	 
	 assign mem_data_out = io_in_reg;
	 assign io_out = io_out_reg;
	
pc_block pc_block(
		.clock(clock),
		.pcSrc(PCSrc),
		.immAddr(ze_imm),
		.se_immAddr(se_imm),
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
		.MemWrite(new_MemWrite),
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
