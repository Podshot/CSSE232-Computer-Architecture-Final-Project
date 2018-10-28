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
	 input [15:0] MaryData,
	 input [15:0] ShelleyData,
	 input [15:0] RAData,
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
    output wire [15:0] mem_out
    );
	 
	 reg [15:0] mux_to_mem_addr;
	 reg [15:0] mux_to_mem_data;
	 wire [15:0] mem_val = 0;
	 wire [7:0] extender_in = reg_in[8:2];
	 wire [15:0] extender_out;
	 wire [15:0] shifter_out;
	 
	 memory mem (
		.Address(mux_to_mem_addr),
		.DataIn(mux_to_mem_data),
		.MemWrite(MemWrite),
		.clock(clock),
		.MemVal(mem_val)
	 );
	 
	 sign_extender s_extenger (
		.in(extender_in),
		.out(extender_out)
	 );
	 
	 left_shift_2 l_shifter (
		.in(extender_out),
		.out(shifter_out)
	 );
	 
	 always @(posedge clock) begin
		if (MemWrite == 1'b1) begin
			case (MemDst)
				3'b000: begin // from pc
					assign mux_to_mem_addr = pc;
				end
				3'b001: begin // from immediate
					assign mux_to_mem_addr = extender_out;
				end
				3'b010: begin // from mary
					assign mux_to_mem_addr = MaryData;
				end
				3'b011: begin // from shelley
					assign mux_to_mem_addr = ShelleyData;
				end
				3'b100: begin // from stack pointer + 2
					assign mux_to_mem_addr = sp_in + 2;
				end
				3'b101: begin // immediate left-shifted 2 + stack pointer
					assign mux_to_mem_addr = sp_in + shifter_out;
				end
			endcase
			
			case (MemSrc)
				2'b00: begin // from mary
					assign mux_to_mem_data = MaryData;
				end
				2'b01: begin // from shelley
					assign mux_to_mem_data = ShelleyData;
				end
				2'b10: begin // from ra
					assign mux_to_mem_data = RAData;
				end
			endcase
		end
	 end
	 
	 assign mem_out = mem_val;
	 


endmodule
