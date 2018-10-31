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
	input [2:0] pcSrc,
	input[15:0] immAddr,
	input[15:0] ra,
	input[15:0] mary,
	input comp,
	input pcWrite,
	input reset,
	output wire [15:0] pcOut
	);
	
	reg[15:0] muxOut; //takes either nextInst or jump to pc
	register_component pc (
		.in(muxOut),
		.clock(clock),
		.write(pcWrite && pcWrite2out),
		.out(pcInternal),
		.reset(reset)
	);
 
	always @ (immAddr, ra, mary, pcOut, pcSrc)
	begin
	if (reset)
		muxOut = 0;
	else
	//switch case acts as mux
		case( pcSrc )
	 //adder is just + in verilog
			 3'b000 : muxOut = pcOut + 2;
			 3'b001 : muxOut = immAddr + pcOut;
			 3'b010 : muxOut = immAddr;
			 3'b011 : muxOut = ra;
			 3'b100 : muxOut = mary;
			 3'b101 : muxOut = (mary << 4) + pcOut;
			 3'b110 : muxOut = immAddr;
			 3'b111 : muxOut = (immAddr << 4);
		endcase
	end
	

endmodule
