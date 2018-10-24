`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:51 10/23/2018 
// Design Name: 
// Module Name:    memory_datapath 
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
module memory_datapath(
    input [15:0] pc,
    input [15:0] sp_in,
    input [15:0] reg_in,
    input [1:0] MemSrc,
	 input clock,
    input MemWrite,
    input MemRead,
    input [2:0] MemDst,
    input MaryWrite,
    input ShelleyWrite,
    input CompWrite,
    input RAWrite,
    input [1:0] MarySrc,
    input [1:0] ShelleySrc,
    output [15:0] inst_out,
    output [15:0] mem_out
    );
	 
	 reg [15:0] mux_to_mem;
	 wire [15:0] mem_val = 0;
	 
	 memory mem (
		.Address(mux_to_mem),
		.DataIn(___replace_me___),
		.MemWrite(MemWrite),
		.clock(clock),
		.MemVal(mem_val)
	 );
	 
	 always @(posedge clock) begin
		case (MemDst)
			3'b000: begin // from pc
			assign mux_to_mem = pc;
			end
			3'b001: begin // from immediate
			end
			3'b010: begin // from mary
			end
			3'b011: begin // from shelley
			end
			3'b100: begin // from stack pointer + 2
			end
			3'b101: begin // immediate left-shifted 2 + stack pointer
			end
		endcase
	end
	 


endmodule
