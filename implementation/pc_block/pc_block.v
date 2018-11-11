`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:11 10/20/2018 
// Design Name: 
// Module Name:    pc_block 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pc_block(
	input clock,
	input [3:0] pcSrc,
	input[15:0] immAddr,
	input[15:0] se_immAddr,
	input[15:0] ra,
	input[15:0] mary,
	input [15:0] comp,
	input pcWrite,
	input reset,
	output wire [15:0] pcOut,
	input in_kernel
	);
	
	reg pcWrite2;
	
	reg[15:0] muxOut; //takes either nextInst or jump to pc
	
	register_component pc (
		.in(muxOut),
		.clock(clock),
		.write(pcWrite && pcWrite2),
		.out(pcOut),
		.reset(reset)
	);
	
	wire [15:0] copc_out;
	
	register_component copc(
		.in(pcOut),
		.clock(clock),
		.write(~in_kernel),
		.out(copc_out),
		.reset(reset)		
	);
 
	always @ (immAddr, ra, mary, pcOut, pcSrc, comp, copc_out)
	begin
		pcWrite2 = (~comp & pcSrc[2] & pcSrc[1]) ? 0 : 1;
	//switch case acts as mux
		case( pcSrc )
	 //adder is just + in verilog
			 4'b0000 : muxOut = pcOut + 1;
			 4'b0001 : muxOut = se_immAddr + pcOut;
			 4'b0010 : muxOut = immAddr;
			 4'b0011 : muxOut = ra;
			 4'b0100 : muxOut = mary;
			 4'b0101 : muxOut = (mary << 4) + pcOut;
			 4'b0110 : muxOut = immAddr;
			 4'b0111 : muxOut = (se_immAddr + pcOut);
			 4'b1000 : muxOut = 254; //kernel address
			 4'b1001 : muxOut = copc_out;
		endcase
	end
	

endmodule
