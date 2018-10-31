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
	input[15:0] immPlusPC,
	input[15:0] immAddr,
	input[15:0] ra,
	input[15:0] mary,
	input[15:0] pcPlusMary,
	input[15:0] jcmpImm,
	input[15:0] jcmpImmLS,
	input comp,
	input jcmp,
	input pcWrite,
	input pcReset,
	output wire [15:0] pcCur
	);
	
	reg[15:0] muxOut; //takes either nextInst or jump to pc
	
	register_component pc (
		.in(muxOut),
		.clock(clock),
		.write(pcWrite),
		.out(pcCur)
	);
 
	always @(posedge clock)
	begin
	if (pcReset)
		muxOut = 0;
	else if (jcmp == 0 || (jcmp == 1 && comp == 1))
	//switch case acts as mux
		case( pcSrc )
	 //adder is just + in verilog
			 3'b000 : muxOut = pcCur + 2;
			 3'b001 : muxOut = immPlusPC;
			 3'b010 : muxOut = immAddr;
			 3'b011 : muxOut = ra;
			 3'b100 : muxOut = mary;
			 3'b101 : muxOut = pcPlusMary;
			 3'b110 : muxOut = jcmpImm;
			 3'b111 : muxOut = jcmpImmLS;
		endcase
	end
	

endmodule
