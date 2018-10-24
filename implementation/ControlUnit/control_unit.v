`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// School: Rose-Hulman Institute of Technology
// Class: CSSE 232 Computer Architecture I 
// Term: Fall Quarter, 2018-2019 
// Professor: Sid Stamm 
// Team: 3V
// Members: Maura Coriale, Ben Gothard, Matthew Lyonns, Joy Stockwell 
// Project: CPU Design Project
// Project Name: "Frankie" 
// Author: Maura Coriale 
// Component: Control Unit  
// Description: Main control unit for the "Frankie" CPU. 
//////////////////////////////////////////////////////////////////////////////////
module control_unit(
    input [4:0] OPCODE,
    input flagbit,
    output reg MemRead,
    output reg MemWrite,
    output reg [2:0] MemSrc,
    output reg RegWrite,
    output reg MaryWrite,
    output reg ShelleyWrite,
    output reg CompWrite,
    output reg RAWrite,
    output reg PCWrite,
    output reg SPWrite,
    output reg [1:0] MarySrc,
    output reg [1:0] ShelleySrc,
    output reg RASrc,
    output reg [2:0] PCSrc,
    output reg [1:0] SPSrc,
    output reg RegDst,
	 output reg [2:0] MemDst,
    output reg RegData,
    output reg SrcA,
    output reg SrcB,
    output reg [2:0] ALUOP
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
		MemDst = 0;
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
		if(OPCODE == 5'b00001) begin
			MemSrc = 3'b100; 
			SPWrite = 1'b1;
			SPSrc = 2'b01;
			MemWrite = 1'b1; 
		end 

//CASE 8: SPEK 
		if(OPCODE == 5'b00100) begin
			MemWrite = 1'b0; 
			MemDst = 3'b101; 
			MaryWrite = 1'b1;
			MarySrc = 2'b00;
		end
	
//CASE 9: SPOP
		if(OPCODE == 5'b00101) begin
			MemWrite = 1'b0; 
			MemDst = 3'b100; 
			SPWrite = 1'b1; 
			SPSrc = 2'b10; 
			MaryWrite = 1'b1; 
			MarySrc = 2'b00; 
		end 

//CASE 10: RPOP
		if(OPCODE == 5'b00110) begin
			MemWrite = 1'b0; 
			MemDst = 3'b100;
			SPWrite = 1'b1; 
			SPSrc = 2'b10;
			RAWrite = 1'b1; 
			RASrc = 1'b0; 
		end

//CASE 36: BKAC 
		if(OPCODE == 5'b10101 && flagbit == 0) begin
			SPWrite = 1'b1;
			SPSrc = 2'b01; 
			MemWrite = 1'b1; 
			MemDst = 3'b100; 
			MemSrc = 2'b00; 
		end 

//CASE 37: BKAC@
		if(OPCODE == 5'b10101 && flagbit == 1) begin
			SPWrite = 1'b1;
			SPSrc = 2'b01; 
			MemWrite = 1'b1; 
			MemDst = 3'b100; 
			MemSrc = 2'b01; 
		end 

//CASE 38: BKRA
		if(OPCODE == 5'b10110) begin
			SPWrite = 1'b1;
			SPSrc = 2'b01; 
			MemWrite = 1'b1; 
			MemDst = 3'b100; 
			MemSrc = 2'b10; 
		end 
		
		
//////////////////////////////
//  ARITHMETIC OPERATIONS   //
//////////////////////////////

//CASE 4: AADD
		if(OPCODE == 5'b00010 && flagbit == 0) begin
			SrcA = 1'b0;
			SrcB = 2'b01;
			ALUOP = 3'b010;
			MaryWrite = 1'b1;  
			MarySrc = 2'b01; 
		end 

//CASE 5: AADD@
		if(OPCODE == 5'b00010 && flagbit == 1) begin
			SrcA = 1'b0;
			SrcB = 2'b00;
			ALUOP = 3'b010;
			MaryWrite = 1'b1;  
			MarySrc = 2'b01; 
		end 
 

//CASE 6: ASUB 
		if(OPCODE == 5'b00011 && flagbit == 0) begin
			SrcA = 1'b0;
			SrcB = 2'b01;
			ALUOP = 3'b011;
			MaryWrite = 1'b1;  
			MarySrc = 2'b01; 
		end 
		
//CASE 7: ASUB@
		if(OPCODE == 5'b00011 && flagbit == 1) begin
			SrcA = 1'b0;
			SrcB = 2'b00;
			ALUOP = 3'b011;
			MaryWrite = 1'b1;  
			MarySrc = 2'b01; 
		end 

//////////////////////////////
//      JUMP OPERATIONS     //
//////////////////////////////

//CASE 11: JIMM
		if(OPCODE == 5'b00111 && flagbit == 0) begin
			PCWrite = 1'b1;
			PCSrc = 2'b10; 
		end 

//CASE 12: JIMM@
		if(OPCODE == 5'b00111 && flagbit == 1) begin
			PCWrite = 1'b1;
			PCSrc = 2'b01; 
		end 

//CASE 13: JACC 
		if(OPCODE == 5'b01000 && flagbit == 0) begin
			PCWrite = 1'b1;
			PCSrc = 3'b100; 
		end

//CASE 14: JACC@
		if(OPCODE == 5'b01000 && flagbit == 1) begin
			PCWrite = 1'b1;
			PCSrc = 3'b101; 
		end

//CASE 15: JCMP
		if(OPCODE == 5'b01001 && flagbit == 0) begin
			PCWrite = 1'b1;
			PCSrc = 3'b110; 
		end

//CASE 16: JCMP@
		if(OPCODE == 5'b01001 && flagbit == 1) begin
			PCWrite = 1'b1;
			PCSrc = 3'b111; 
		end

//CASE 17: JRET 
		if(OPCODE == 5'b01010) begin
			PCWrite = 1'b1;
			PCSrc = 3'b011; 
		end

//CASE 18: JFNC
		if(OPCODE == 5'b01011 && flagbit == 0) begin
			RAWrite = 1'b1; 
			RASrc = 1'b1; 
			PCWrite = 1'b1;
			PCSrc = 3'b010; 
		end
	
//CASE 19: JFNC@
		if(OPCODE == 5'b01011 && flagbit == 1) begin
			RAWrite = 1'b1; 
			RASrc = 1'b1; 
			PCWrite = 1'b1;
			PCSrc = 3'b001; 
		end
	
//////////////////////////////
//    LOGICAL OPERATIONS    //
//////////////////////////////

//CASE 26: LORR 
		if(OPCODE == 5'b01111 && flagbit == 0) begin
			SrcA = 1'b0; 
			SrcB = 2'b01; 
			ALUOP = 3'b001;
			CompWrite = 1'b1; 
		end
//CASE 27: LORR@
		if(OPCODE == 5'b01111 && flagbit == 1) begin
			SrcA = 1'b0; 
			SrcB = 2'b00; 
			ALUOP = 3'b001;
			CompWrite = 1'b1; 
		end

//CASE 28: LAND 
		if(OPCODE == 5'b10000 && flagbit == 0) begin
			SrcA = 1'b0; 
			SrcB = 2'b01; 
			ALUOP = 3'b000;
			CompWrite = 1'b1; 
		end
//CASE 29: LAND@
		if(OPCODE == 5'b10000 && flagbit == 1) begin
			SrcA = 1'b0; 
			SrcB = 2'b00; 
			ALUOP = 3'b000;
			CompWrite = 1'b1; 
		end

//CASE 30: SHFL
	//?????????????????????

//CASE 31: SHFL@
	//?????????????????????


//////////////////////////////
//  COMPARISON OPERATIONS   //
//////////////////////////////

//CASE 20: CEQU
		if(OPCODE == 5'b01100 && flagbit == 0) begin
			SrcA = 1'b0; 
			SrcB = 2'b01; 
			ALUOP = 3'b110; 
			CompWrite = 1'b1; 
		end

//CASE 21: CEQU@
		if(OPCODE == 5'b01100 && flagbit == 1) begin
			SrcA = 1'b0; 
			SrcB = 2'b00; 
			ALUOP = 3'b110; 
			CompWrite = 1'b1; 
		end

//CASE 22: CLES 
		if(OPCODE == 5'b01101 && flagbit == 0) begin
			SrcA = 1'b0;
			SrcB = 2'b01; 
			ALUOP = 3'b100;
			CompWrite = 1'b1; 
		end

//CASE 23: CLES@
		if(OPCODE == 5'b01101 && flagbit == 1) begin
			SrcA = 1'b0;
			SrcB = 2'b00; 
			ALUOP = 3'b100;
			CompWrite = 1'b1; 
		end

//CASE 24: CGRE
		if(OPCODE == 5'b01110 && flagbit == 0) begin
			SrcA = 1'b0;
			SrcB = 2'b01; 
			ALUOP = 3'b101; 
			CompWrite = 1'b1; 
		end

//CASE 25: CGRE@	 
		if(OPCODE == 5'b01110 && flagbit == 1) begin
			SrcA = 1'b0;
			SrcB = 2'b00; 
			ALUOP = 3'b101; 
			CompWrite = 1'b1; 
		end

//////////////////////////////
//  LOAD/STORE OPERATIONS   //
//////////////////////////////

//CASE 32: LOAD 
		if(OPCODE == 5'b10011 && flagbit == 0) begin
			MemWrite = 1'b0;
			MemDst = 3'b001;
			MaryWrite = 1'b1; 
			MarySrc = 2'b00; 
		end

//CASE 33: LOAD@
		if(OPCODE == 5'b10011 && flagbit == 1) begin
			MemWrite = 1'b0;
			MemDst = 3'b011;
			MaryWrite = 1'b1; 
			MarySrc = 2'b00; 
		end

//CASE 34: STOR
		if(OPCODE == 5'b10100 && flagbit == 0) begin
			MemWrite = 1'b1;
			MemDst = 3'b001;
			MarySrc = 2'b00; 
		end
		
//CASE 35: STOR@
		if(OPCODE == 5'b10100 && flagbit == 1) begin
			MemWrite = 1'b1;
			MemDst = 3'b011;
			MarySrc = 2'b00; 
		end


//////////////////////////////
//      SWAP OPERATIONS     //
//////////////////////////////

//CASE 39: SWAP
		if(OPCODE == 5'b10111) begin
			MaryWrite = 1'b1; 
			MarySrc = 2'b10; 
			ShelleyWrite = 1'b1; 
			ShelleySrc = 2'b10;
		end

			
	end
		
		
endmodule
