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
	input pcSrc,
	input[15:0] nextInst,
	input[15:0] jump,
	input pcWrite,
	output[15:0] pcCur
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
		case( pcSrc )
			 0 : muxOut = nextInst;
			 1 : muxOut = jump;
		endcase
	end

endmodule
