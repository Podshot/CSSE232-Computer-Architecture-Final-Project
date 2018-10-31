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
    input clock,
    input MemWrite,
    input [1:0] MemSrc,
    input [2:0] MemDst,
    input [15:0] pc,
    input [15:0] sp_in,
    input [15:0] ze_imm,
    input [15:0] ls_imm,
    input [15:0] MaryData,
    input [15:0] ShelleyData,
    input [15:0] RAData,
    
    output [15:0] mem_out
    );
     
     reg [15:0] mux_to_mem_addr;
     reg [15:0] mux_to_mem_data;
     wire [15:0] mem_val = 0;
     
     always @* begin
			case (MemDst)
				3'b000: begin // from pc
					mux_to_mem_addr = pc;
				end
            3'b001: begin // from immediate
                mux_to_mem_addr = ze_imm;
            end
            3'b010: begin // from mary
                mux_to_mem_addr = MaryData;
            end
            3'b011: begin // from shelley
                mux_to_mem_addr = ShelleyData;
            end
            3'b100: begin // from stack pointer + 2
                mux_to_mem_addr = sp_in + 2'b10;
            end
            3'b101: begin // immediate left-shifted 2 + stack pointer
                mux_to_mem_addr = sp_in + ls_imm;
            end
            default: begin
            end
        endcase        
			
        case (MemSrc)
            2'b00: begin // from mary
                mux_to_mem_data = MaryData;
            end
            2'b01: begin // from shelley
                mux_to_mem_data = ShelleyData;
            end
            2'b10: begin // from ra
                mux_to_mem_data = RAData;
            end
            default: begin
            end
        endcase
     end
	  
	  memory mem (
        .Address(mux_to_mem_addr),
        .DataIn(mux_to_mem_data),
        .MemWrite(MemWrite),
        .clock(clock),
        .MemVal(mem_out)
     );
	  
endmodule
