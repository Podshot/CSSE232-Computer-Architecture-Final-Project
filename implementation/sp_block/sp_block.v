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
module sp_block(
	input clock,
	input [1:0] spSrc,
	input spWrite,
	input reset,
	output wire [15:0] spCur
	);
	
	reg[15:0] muxOut; // takes current sp, 2 more, 2 less, or 0 to sp
	
	register_component sp (
		.in(muxOut),
		.clock(clock),
		.write(spWrite),
		.out(spCur),
		.reset(reset)
	);
 
	always @(spSrc, spCur)
	begin
		//switch case acts as mux
				case( spSrc )
		 //adder is just + in verilog
				 2'b00 : muxOut = spCur;
				 2'b01 : muxOut = spCur + 1;
				 2'b10 : muxOut = spCur - 1;
				endcase
	end
	

endmodule
