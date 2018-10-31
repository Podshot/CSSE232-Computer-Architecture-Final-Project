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
        if (MemWrite == 1'b1) begin
            $display("-- Initial Addr: %b", mux_to_mem_addr);
            $display("-- Initial Data: %b", mux_to_mem_data);
            case (MemDst)
                3'b000: begin // from pc
                    assign mux_to_mem_addr = pc;
                end
                3'b001: begin // from immediate
                    assign mux_to_mem_addr = ze_imm;
                end
                3'b010: begin // from mary
                    assign mux_to_mem_addr = MaryData;
                end
                3'b011: begin // from shelley
                    assign mux_to_mem_addr = ShelleyData;
                end
                3'b100: begin // from stack pointer + 2
                    $display("=====");
                    assign mux_to_mem_addr = sp_in + 2'b10;
                    $display("sp: %b", sp_in);
                    $display("mem: %b", mux_to_mem_addr);
                    $display("=====");
                end
                3'b101: begin // immediate left-shifted 2 + stack pointer
                    $display("+++++");
                    assign mux_to_mem_addr = sp_in + ls_imm;
                    $display("sp: %b", sp_in);
                    $display("shifted: %b", ls_imm);
                    $display("mem: %b", mux_to_mem_addr);
                    $display("+++++");
                end
                default: begin
                end
            endcase
            
            case (MemSrc)
                2'b00: begin // from mary
                    assign mux_to_mem_data = MaryData;
                    $display("== Using mary...");
                end
                2'b01: begin // from shelley
                    assign mux_to_mem_data = ShelleyData;
                    $display("++ Using shelley...");
                    $display("++ Shelley: %b", ShelleyData);
                end
                2'b10: begin // from ra
                    assign mux_to_mem_data = RAData;
                end
                default: begin
                end
            endcase
            $display("-- Final Addr: %b", mux_to_mem_addr);
            $display("-- Final Data: %b", mux_to_mem_data);
        end
     end
	  
	  memory mem (
        .Address(mux_to_mem_addr),
        .DataIn(mux_to_mem_data),
        .MemWrite(MemWrite),
        .clock(clock),
        .MemVal(mem_out)
     );
endmodule
