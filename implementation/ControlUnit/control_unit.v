`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:11 10/20/2018 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
    input OPCODE,
    input flagbit,
    output MemRead,
    output MemWrite,
    output MemSrc,
    output RegWrite ,
    output MaryWrite,
    output ShelleyWrite,
    output CompWrite,
    output RAWrite,
    output PCWrite,
    output SPWrite,
    output MarySrc,
    output ShelleySrc,
    output RASrc,
    output PCSrc,
    output SPSrc,
    output RegDst,
    output RegData,
    output SrcA,
    output SrcB,
    output ALUOP
    );


endmodule
