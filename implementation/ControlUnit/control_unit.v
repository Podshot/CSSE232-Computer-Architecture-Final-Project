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
	 output reg InstWrite, 
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
    output reg [2:0] ALUOP,
   
	 input wire CLK,
	 input wire Reset 
	 
	 );
	 
	 reg [3:0] current_state;
	 reg [3:0] next_state;
	 reg max_state; 

//////////////////////////////
//    State Declarations    //
//////////////////////////////	
	//Cycle 1: 
	parameter Fetch = 0; 
	
	//Cycle 2: 
	parameter Decode = 1; 
	
	//Cycle 3:
	parameter Third = 2;  
	
	//Cycle 4:
	parameter Fourth = 3; 

	
	
//////////////////////////////
//    Register Calculation  //
//////////////////////////////	
	always@ (posedge CLK) begin
		if(Reset)
			current_state = Fetch; 
		else 
			current_state = next_state; 
	end 
	 
//////////////////////////////
//      Initialization      //
//////////////////////////////	
	always @ (current_state) begin
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
		InstWrite = 0; 
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
		max_state = 0; 


//////////////////////////////
//    Fetch and Decode     //
//////////////////////////////
	case(current_state) 
		
		Fetch:
			begin
				PCWrite = 1'b1; 
				PCSrc = 3'b000;
				MemWrite = 1'b0; 
				MemDst = 3'b000;
				InstWrite = 1'b1; 
			end 
	
		Decode:
			begin 
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
				InstWrite = 0; 
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
			end 
	endcase 
	
	
//Separate the control stuff from the next state 

	
//////////////////////////////
//      Input/Output        //
//////////////////////////////


	

//////////////////////////////
//     STACK OPERATIONS     //
//////////////////////////////

//CASE 1: APUT
		if(OPCODE == 0 && flagbit == 0)begin
			if(current_state == Third) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b11;
			
			end 
		end

//CASE 2: APUT@
		if(OPCODE == 0 && flagbit == 1) begin
			if(current_state == Third) begin 
				ShelleyWrite = 1'b1; 
				ShelleySrc = 2'b01; 
			end 
		end

//CASE 3: SPUT
		if(OPCODE == 5'b00001) begin
			if(current_state == Third) begin 
				MemDst = 3'b100; 
				SPWrite = 1'b1;
				SPSrc = 2'b01;
				MemWrite = 1'b1; 
			end
		end 

//CASE 8: SPEK 
		if(OPCODE == 5'b00100 && flagbit == 1'b0) begin
			if(current_state == Third) begin
				MemWrite = 1'b0; 
				MemDst = 3'b101; 
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1;
				MarySrc = 2'b00;
			end
		end
		
//CASE 43: SPEK 
		if(OPCODE == 5'b00100 && flagbit == 1'b1) begin
			if(current_state == Third) begin
				MemWrite = 1'b0; 
				MemDst = 3'b101; 
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				ShelleyWrite = 1'b1;
				ShelleySrc = 2'b00;
			end
		end
	
//CASE 9: SPOP
		if(OPCODE == 5'b00101) begin
			if(current_state == Third) begin
				MemWrite = 1'b0; 
				MemDst = 3'b100; 
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				SPWrite = 1'b1; 
				SPSrc = 2'b10; 
				MaryWrite = 1'b1; 
				MarySrc = 2'b00; 
			end
		end 

//CASE 10: RPOP
		if(OPCODE == 5'b00110) begin
			if(current_state == Third) begin 
				MemWrite = 1'b0; 
				MemDst = 3'b100;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				SPWrite = 1'b1; 
				SPSrc = 2'b10;
				RAWrite = 1'b1; 
				RASrc = 1'b0; 
			end 
		end

//CASE 36: BKAC 
		if(OPCODE == 5'b10101 && flagbit == 0) begin
			if(current_state == Third) begin 
				SPWrite = 1'b1;
				SPSrc = 2'b01; 
				MemWrite = 1'b1; 
				MemDst = 3'b100; 
				MemSrc = 2'b00; 
			end 
		end 

//CASE 37: BKAC@
		if(OPCODE == 5'b10101 && flagbit == 1) begin
			if(current_state == Third) begin 
				SPWrite = 1'b1;
				SPSrc = 2'b01; 
				MemWrite = 1'b1; 
				MemDst = 3'b100; 
				MemSrc = 2'b01; 
			end 
		end 

//CASE 38: BKRA
		if(OPCODE == 5'b10110) begin
			if(current_state == Third) begin
				SPWrite = 1'b1;
				SPSrc = 2'b01; 
				MemWrite = 1'b1; 
				MemDst = 3'b100; 
				MemSrc = 2'b10; 
			end 
		end 
		
		
//////////////////////////////
//  ARITHMETIC OPERATIONS   //
//////////////////////////////

//CASE 4: AADD
		if(OPCODE == 5'b00010 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b01;
				ALUOP = 4'b0010;
				max_state = 1; 
			end
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1;  
				MarySrc = 2'b01; 
			end
		end 

//CASE 5: AADD@
		if(OPCODE == 5'b00010 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b00;
				ALUOP = 4'b0010;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin
				MaryWrite = 1'b1;  
				MarySrc = 2'b01; 
			end
		end 
 

//CASE 6: ASUB 
		if(OPCODE == 5'b00011 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b01;
				ALUOP = 4'b0011;
				max_state = 1; 
			end
			if(current_state == Fourth) begin
				MaryWrite = 1'b1;  
				MarySrc = 2'b01; 
			end
		end 
		
//CASE 7: ASUB@
		if(OPCODE == 5'b00011 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b00;
				ALUOP = 4'b0011;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1;  
				MarySrc = 2'b01; 
			end 
		end 

//////////////////////////////
//      JUMP OPERATIONS     //
//////////////////////////////

//CASE 11: JIMM
		if(OPCODE == 5'b00111 && flagbit == 0) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 2'b10; 
			end
		end 

//CASE 12: JIMM@
		if(OPCODE == 5'b00111 && flagbit == 1) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 2'b01; 
			end 
		end 

//CASE 13: JACC 
		if(OPCODE == 5'b01000 && flagbit == 0) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 3'b100;
			end 
		end

//CASE 14: JACC@
		if(OPCODE == 5'b01000 && flagbit == 1) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 3'b101;
			end 
		end

//CASE 15: JCMP
		if(OPCODE == 5'b01001 && flagbit == 0) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 3'b110; 
			end 
		end

//CASE 16: JCMP@
		if(OPCODE == 5'b01001 && flagbit == 1) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 3'b111; 
			end 
		end

//CASE 17: JRET 
		if(OPCODE == 5'b01010) begin
			if(current_state == Third) begin 
				PCWrite = 1'b1;
				PCSrc = 3'b011; 
			end 
		end

//CASE 18: JFNC
		if(OPCODE == 5'b01011 && flagbit == 0) begin
			if(current_state == Third) begin 
				RAWrite = 1'b1; 
				RASrc = 1'b1; 
				PCWrite = 1'b1;
				PCSrc = 3'b010;
			end 
		end
	
//CASE 19: JFNC@
		if(OPCODE == 5'b01011 && flagbit == 1) begin
			if(current_state == Third) begin 
				RAWrite = 1'b1; 
				RASrc = 1'b1; 
				PCWrite = 1'b1;
				PCSrc = 3'b001; 
			end 
		end
	
//////////////////////////////
//    LOGICAL OPERATIONS    //
//////////////////////////////

//CASE 26: LORR 
		if(OPCODE == 5'b01111 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b01; 
				ALUOP = 4'b0001;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b01; 
			end 
		end
//CASE 27: LORR@
		if(OPCODE == 5'b01111 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b00; 
				ALUOP = 4'b0001;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b01; 
			end 
		end

//CASE 28: LAND 
		if(OPCODE == 5'b10000 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b01; 
				ALUOP = 4'b0000;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b01; 
			end 

		end
//CASE 29: LAND@
		if(OPCODE == 5'b10000 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b00; 
				ALUOP = 4'b0000;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b01; 
			end 
		end


//CASE 30: SHFR
	if(OPCPDE == 5'b10010 && flagbit == 1'b0) begin 
		if(current_state == Third) begin 
			SrcA = 1'b0; 
			SrcB = 2'b01; 
			ALUOP = 4'b1001;
			max_state = 1; 
		end 
		if(current_state == Fourth) begin 
			MaryWrite = 1'b1; 
			MarySrc = 2'b01; 
		end 
	end 
			

//CASE 31: SHFR@
	//?????????????????????
	if(OPCPDE == 5'b10010 && flagbit == 1'b0) begin 
		if(current_state == Third) begin 
			SrcA = 1'b0; 
			SrcB = 2'b00; 
			ALUOP = 4'b1001;
			max_state = 1; 
		end 
		if(current_state == Fourth) begin 
			MaryWrite = 1'b1; 
			MarySrc = 2'b01; 
		end 
	end 
	
//CASE 30: SHFL
	if(OPCPDE == 5'b10001 && flagbit == 1'b0) begin 
		if(current_state == Third) begin 
			SrcA = 1'b0; 
			SrcB = 2'b01;
			ALUOP = 4'b10000;
			max_state = 1; 
		end 
		if(current_state == Fourth) begin 
			MaryWrite = 1'b1; 
			MarySrc = 2'b01;
		end 
	end 
			

//CASE 31: SHFL@
	//?????????????????????
	
	if(OPCPDE == 5'b10001 && flagbit == 1'b1 ) begin 
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b00;
				ALUOP = 4'b10000;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b01;
			end 
		end 

//////////////////////////////
//  COMPARISON OPERATIONS   //
//////////////////////////////

//CASE 20: CEQU
		if(OPCODE == 5'b01100 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b01; 
				ALUOP = 4'b0110;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				CompWrite = 1'b1; 
			end 
		end

//CASE 21: CEQU@
		if(OPCODE == 5'b01100 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0; 
				SrcB = 2'b00; 
				ALUOP = 4'b0110; 
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				CompWrite = 1'b1; 
			end 
		end

//CASE 22: CLES 
		if(OPCODE == 5'b01101 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b01; 
				ALUOP = 4'b0100;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				CompWrite = 1'b1;
			end 
		end

//CASE 23: CLES@
		if(OPCODE == 5'b01101 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b00; 
				ALUOP = 4'b0100;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				CompWrite = 1'b1; 
			end 
		end

//CASE 24: CGRE
		if(OPCODE == 5'b01110 && flagbit == 0) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b01; 
				ALUOP = 4'b0101;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				CompWrite = 1'b1; 
			end 
		end

//CASE 25: CGRE@	 
		if(OPCODE == 5'b01110 && flagbit == 1) begin
			if(current_state == Third) begin 
				SrcA = 1'b0;
				SrcB = 2'b00; 
				ALUOP = 4'b0101;
				max_state = 1; 
			end 
			if(current_state == Fourth) begin 
				CompWrite = 1'b1; 
			end 
		end

//////////////////////////////
//  LOAD/STORE OPERATIONS   //
//////////////////////////////

//CASE 32: LOAD 
		if(OPCODE == 5'b10011 && flagbit == 0) begin
			if(current_state == Third) begin 
				MemWrite = 1'b0;
				MemDst = 3'b001;
				
			end
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b00; 
			end
		end

//CASE 33: LOAD@
		if(OPCODE == 5'b10011 && flagbit == 1) begin
			if(current_state == Third) begin 
				MemWrite = 1'b0;
				MemDst = 3'b011;
			end 
			if(current_state == Fourth) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b00; 
			end 
		end

//CASE 34: STOR
		if(OPCODE == 5'b10100 && flagbit == 0) begin
			if(current_state == Third) begin 
				MemWrite = 1'b1;
				MemDst = 3'b001;
				MarySrc = 2'b00;
			end 
		end
		
//CASE 35: STOR@
		if(OPCODE == 5'b10100 && flagbit == 1) begin
			if(current_state == Third) begin 
				MemWrite = 1'b1;
				MemDst = 3'b011;
				MarySrc = 2'b00;
			end
		end 


//////////////////////////////
//      SWAP OPERATIONS     //
//////////////////////////////

//CASE 39: SWAP
		if(OPCODE == 5'b10111) begin
			if(current_state == Third) begin 
				MaryWrite = 1'b1; 
				MarySrc = 2'b10; 
				ShelleyWrite = 1'b1; 
				ShelleySrc = 2'b10;
			end
		end 
		
		
	end
		
		
//////////////////////////////
//  Next State Calculation  //
//////////////////////////////
	always @ (current_state, next_state, OPCODE) begin
		$display("The current state is %d", current_state);
		
		//Fetch:
		if(current_state == Fetch) begin
			next_state = Decode; 
			//$display("In Fetch, the next state is %d", next_state);
		end
		
		//Decode:
		if(current_state == Decode) begin
			next_state = Third; 
			//$display("In Decode, the next state is %d", next_state); 
		end 
		
		if(current_state == Third) begin
			next_state = Fourth; 
			//$display("In Three, the next state is %d", next_state); 
		end
		
		if(current_state == Fourth) begin
			next_state = Fetch; 
			//$display("In Four, the next state is %d", next_state); 
		end 
		
	
		

			
	end
		
		
endmodule
