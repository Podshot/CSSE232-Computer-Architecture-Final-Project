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
    input [4:0] OPCODE,
    input flagbit,
    output reg MemRead,
    output reg MemWrite,
    output reg MemSrc,
    output reg RegWrite ,
    output reg MaryWrite,
    output reg ShelleyWrite,
    output reg CompWrite,
    output reg RAWrite,
    output reg PCWrite,
    output reg SPWrite,
    output reg [1:0] MarySrc,
    output reg ShelleySrc,
    output reg RASrc,
    output reg PCSrc,
    output reg SPSrc,
    output reg RegDst,
    output reg RegData,
    output reg SrcA,
    output reg SrcB,
    output reg ALUOP
    );
	 
//////////////////////////////
//      Initialization      //
//////////////////////////////	
	always@* begin
		MemRead = 0;
		MemWrite = 0; 
		MemSrc = 0; 
		RegWrite = 0; 
		MaryWrite = 0; 
		ShelleyWrite = 0; 
		CompWrite = 0; 
		RAWrite = 0; 
		PCWrite = 0; 
		SPWrite = 0; 
		MarySrc = 0; 
		ShelleySrc = 0;
		RASrc = 0; 
		PCSrc = 0; 
		SPSrc = 0; 
		RegDst = 0; 
		RegData = 0; 
		SrcA = 0; 
		SrcB = 0; 
		ALUOP = 0;  

//////////////////////////////
//      Input/Output        //
//////////////////////////////


	

//////////////////////////////
//     STACK OPERATIONS     //
//////////////////////////////

//CASE 1: APUT
		if(OPCODE == 0 && flagbit == 0)begin
			MaryWrite = 1'b1; 
			MarySrc = 2'b11;
		end

//CASE 2: APUT@
		if(OPCODE == 0 && flagbit == 1) begin
			ShelleyWrite = 1'b1; 
			ShelleySrc = 2'b01; 
		end

//CASE 3: SPUT

//CASE 8: SPEK 

//CASE 9: SPOP

//CASE 10: RPOP

//CASE 36: BKAC

//CASE 37: BKAC@

//CASE 38: BKRA

//////////////////////////////
//  ARITHMETIC OPERATIONS   //
//////////////////////////////
//CASE 4: AADD

//CASE 5: AADD@

//CASE 6: ASUB

//CASE 7: ASUB@

//////////////////////////////
//      JUMP OPERATIONS     //
//////////////////////////////

//CASE 11: JIMM

//CASE 12: JIMM@

//CASE 13: JACC 

//CASE 14: JACC@

//CASE 15: JCMP

//CASE 16: JCMP@

//CASE 17: JRET 

//CASE 18: JFNC

//CASE 19: JFNC@

//////////////////////////////
//    LOGICAL OPERATIONS    //
//////////////////////////////

//CASE 26: LORR 

//CASE 27: LORR@

//CASE 28: LAND 

//CASE 29: LAND@

//CASE 30: SHFL

//CASE 31: SHFL@

//////////////////////////////
//  COMPARISON OPERATIONS   //
//////////////////////////////

//CASE 20: CEQU

//CASE 21: CEQU@

//CASE 22: CLES 

//CASE 23: CLES@

//CASE 24: CGRE

//CASE 25: CGRE@	 

//////////////////////////////
//  LOAD/STORE OPERATIONS   //
//////////////////////////////

//CASE 32: LOAD 

//CASE 33: LOAD@

//CASE 34: STOR

//CASE 35: STOR@


//////////////////////////////
//      SWAP OPERATIONS     //
//////////////////////////////

//CASE 39: SWAP

	end
endmodule
