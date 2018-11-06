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
    output reg [1:0] MemSrc,
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
    output reg [1:0] SrcB,
    output reg [3:0] ALUOP,
   
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
	always @ (current_state, OPCODE, flagbit) begin
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
				InstWrite = 1'b0; 
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
				InstWrite = 1; 
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


	if (current_state == 2 || current_state == 3)
	begin

	case (OPCODE)
		5'b00000: begin
		case (flagbit)
			0: //aput
			begin
				MaryWrite = 1'b1; 
				MarySrc = 2'b11;
			end
			1: //aput@
			begin
				ShelleyWrite = 1'b1; 
				ShelleySrc = 2'b01; 
			end
			endcase
		end
		5'b00001: //sput
		begin
			MemDst = 3'b100; 
			SPWrite = 1'b1;
			SPSrc = 2'b01;
			MemWrite = 1'b1; 
			MemSrc = 2'b11;
		end
		5'b00010: begin
		case (flagbit)
			0: //aadd
				begin
				case (current_state)
					2: begin
						SrcA = 1'b0;
						SrcB = 2'b01;
						ALUOP = 4'b0010;
						max_state = 1;
					end
					3: begin
						MaryWrite = 1'b1;  
						MarySrc = 2'b01; 
					end
				endcase
				end
			1: //aadd@
				begin
				case (current_state)
					2: begin
						SrcA = 1'b0;
						SrcB = 2'b00;
						ALUOP = 4'b0010;
						max_state = 1;
					end
					3: begin
						MaryWrite = 1'b1;  
						MarySrc = 2'b01; 
					end
				endcase
				end
			endcase
		end
		5'b00011: begin
		case (flagbit)
			0: //asub
			begin
				case (current_state)
					2: begin
						SrcA = 1'b0;
						SrcB = 2'b01;
						ALUOP = 4'b0011;
						max_state = 1; 
						end
					3: begin
						MaryWrite = 1'b1;  
						MarySrc = 2'b01; 
						end
				endcase
			end
			1: //asub@
			begin
				case (current_state)
					2: begin
						SrcA = 1'b0;
						SrcB = 2'b00;
						ALUOP = 4'b0011;
						max_state = 1; 
					end
					3: begin
						MaryWrite = 1'b1;  
						MarySrc = 2'b01; 
					end
				endcase
			end
			endcase
			end
		5'b00100: begin
		case (flagbit)
			0: //spek
				begin
				case (current_state)
					2: begin
						MemWrite = 1'b0; 
						MemDst = 3'b101; 
						max_state = 1; 
						end
					3: begin
						MaryWrite = 1'b1;
						MarySrc = 2'b00;
						end
				endcase
				end
			1: //spek@
				begin
				case (current_state)
					2: begin
						MemWrite = 1'b0; 
						MemDst = 3'b101; 
						max_state = 1; 
						end
					3: begin
						ShelleyWrite = 1'b1;
						ShelleySrc = 2'b00;
						end
				endcase
				end
			endcase
			end
		5'b00101: begin
		case (current_state) //spop
			2: begin
				MemWrite = 1'b0; 
				MemDst = 3'b110; 
				max_state = 1; 
				end
			3: begin
				SPWrite = 1'b1; 
				SPSrc = 2'b10; 
				MaryWrite = 1'b1; 
				MarySrc = 2'b00; 
				end
			endcase
			end
		5'b00110: begin
		case (current_state) //rpop
			2: begin
				MemWrite = 1'b0; 
				MemDst = 3'b110; 
				max_state = 1;
				end
			3: begin
				SPWrite = 1'b1; 
				SPSrc = 2'b10; 
				RAWrite = 1'b1; 
				RASrc = 2'b00; 
				end
			endcase
		end
		5'b00111: begin
		case (flagbit)
			0: //jimm
				begin
				PCWrite = 1'b1;
				PCSrc = 3'b010; 
				end
			1: //jimm@
				begin
				PCWrite = 1'b1;
				PCSrc = 3'b001; 
				end
			endcase
			end
		5'b01000: begin
		case (flagbit)
			0: //jacc
				begin
				PCWrite = 1'b1;
				PCSrc = 3'b100;
				end
			1: //jacc@
				begin
				PCWrite = 1'b1;
				PCSrc = 3'b101;
				end
			endcase
		end
		5'b01001: begin
		case (flagbit)
			0: //jcmp
				begin
				PCWrite = 1'b1;
				PCSrc = 3'b110; 
				end
			1: //jcmp@
				begin
				PCWrite = 1'b1;
				PCSrc = 3'b111; 
				end
			endcase
		end
		5'b01010: //jret
			begin
			PCWrite = 1'b1;
			PCSrc = 3'b011; 
			end
		5'b01011: begin
		case (flagbit)
			0: //jfnc
				begin
				RAWrite = 1'b1; 
				RASrc = 1'b1; 
				PCWrite = 1'b1;
				PCSrc = 3'b010;
				end
			1: //jfnc@
				begin
				RAWrite = 1'b1; 
				RASrc = 1'b1; 
				PCWrite = 1'b1;
				PCSrc = 3'b001; 
				end
			endcase
		end
		5'b01100: begin
		case (flagbit)
			0: begin
			case (current_state) //cequ
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b01; 
					ALUOP = 4'b0110;
					max_state = 1; 
					end
				3: begin
					CompWrite = 1'b1; 
					end
				endcase
			end
			1: begin
			case (current_state) //cequ@
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b00; 
					ALUOP = 4'b0110; 
					max_state = 1;
					end
				3: begin
					CompWrite = 1'b1; 
					end
				endcase
			end
			endcase
		end
		5'b01101: begin
		case (flagbit)
			0: begin
			case (current_state) //cles
				2: begin
					SrcA = 1'b0;
					SrcB = 2'b01; 
					ALUOP = 4'b0100;
					max_state = 1; 
					end
				3: begin
					CompWrite = 1'b1;
					end
				endcase
			end
			1: begin
			case (current_state) //cles@
				2: begin
					SrcA = 1'b0;
					SrcB = 2'b00; 
					ALUOP = 4'b0100;
					max_state = 1; 
					end
				3: begin
					CompWrite = 1'b1; 
					end
				endcase
			end
			endcase
		end
		5'b01110: begin
		case (flagbit)
			0: begin
			case (current_state) //cgre
				2: begin
					SrcA = 1'b0;
					SrcB = 2'b01; 
					ALUOP = 4'b0101;
					max_state = 1; 
					end
				3: begin
					CompWrite = 1'b1; 
					end
				endcase
			end
			1: begin
			case (current_state) //cgre@
				2: begin
					SrcA = 1'b0;
					SrcB = 2'b00; 
					ALUOP = 4'b0101;
					max_state = 1; 
					end
				3: begin
					CompWrite = 1'b1; 
					end
				endcase
			end
			endcase
		end
		5'b01111: begin
		case (flagbit)
			0: begin
			case (current_state) //lorr
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b01; 
					ALUOP = 4'b0001;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01; 
					end
				endcase
			end
			1: begin
			case (current_state) //lorr@
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b00; 
					ALUOP = 4'b0001;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01; 
					end
				endcase
			end
			endcase
		end
		5'b10000: begin
		case (flagbit)
			0: begin
			case (current_state) //land
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b01; 
					ALUOP = 4'b0000;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01; 
					end
				endcase
			end
			1: begin
			case (current_state) //land@
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b00; 
					ALUOP = 4'b0000;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01; 
					end
				endcase
			end
			endcase
		end
		5'b10001: begin
		case (flagbit)
			0: begin
			case (current_state) //shfl
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b01;
					ALUOP = 4'b1000;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01;
					end
				endcase
			end
			1: begin
			case (current_state) //shfl@
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b00;
					ALUOP = 4'b1000;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01;
					end
				endcase
			end
			endcase
		end
		5'b10010: begin
		case (flagbit)
			0: begin
			case (current_state) //shfr
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b01; 
					ALUOP = 4'b1001;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01; 
					end
				endcase
			end
			1: begin
			case (current_state) //shfr@
				2: begin
					SrcA = 1'b0; 
					SrcB = 2'b00; 
					ALUOP = 4'b1001;
					max_state = 1; 
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b01; 
					end
				endcase
			end
			endcase
		end
		5'b10011: begin
		case (flagbit)
			0: begin
			case (current_state) //load
				2: begin
					MemWrite = 1'b0;
					MemDst = 3'b001;
					max_state = 1;
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b00; 
					end
				endcase
			end
			1: begin
			case (current_state) //load@
				2: begin
					MemWrite = 1'b0;
					MemDst = 3'b011;
					max_state = 1;
					end
				3: begin
					MaryWrite = 1'b1; 
					MarySrc = 2'b00; 
					end
				endcase
			end
			endcase
		end
		5'b10100: begin
		case (flagbit)
			0: //stor
				begin
				MemWrite = 1'b1;
				MemDst = 3'b001;
				MarySrc = 2'b00;
				end
			1: //stor@
				begin
				MemWrite = 1'b1;
				MemDst = 3'b011;
				MarySrc = 2'b00;
				end
			endcase
		end
		5'b10101: begin
		case (flagbit)
			0: //bkac
				begin
				SPWrite = 1'b1;
				SPSrc = 2'b01; 
				MemWrite = 1'b1; 
				MemDst = 3'b100; 
				MemSrc = 2'b00; 
				end
			1: //bkac@
				begin
				SPWrite = 1'b1;
				SPSrc = 2'b01; 
				MemWrite = 1'b1; 
				MemDst = 3'b100; 
				MemSrc = 2'b01; 
				end
			endcase
		end
		5'b10110: //bkra
		begin
			SPWrite = 1'b1;
			SPSrc = 2'b01; 
			MemWrite = 1'b1; 
			MemDst = 3'b100; 
			MemSrc = 2'b10; 
		end
		5'b10111: //swap
		begin
		/*
			case (current_state)
			2: begin
				ShelleyWrite = 1'b1; 
				ShelleySrc = 2'b10;
				ALUOP = 4'b0100;
				SrcA = 1'b0;
				SrcB = 2'b00;
				max_state = 1;
				end
			3: begin
				MaryWrite = 1'b1; 
				MarySrc = 2'b01; 
				end
			endcase
		*/
		MaryWrite = 1'b1;
		MarySrc = 2'b10;
		ShelleyWrite = 1'b1;
		ShelleySrc = 2'b10;
		end
	endcase
	
	end
	end
	
	always @ (current_state, next_state, OPCODE) begin
		//$display("The current state is %d", current_state);
		
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
		
		if(current_state == Third && max_state == 0) begin
			next_state = Fetch; 
			//$display("In Three, the next state is %d", next_state); 
		end
		
		if(current_state == Third && max_state == 1) begin
			next_state = Fourth; 
			//$display("In Three, the next state is %d", next_state); 
		end
		
		if(current_state == Fourth) begin
			next_state = Fetch; 
			//$display("In Four, the next state is %d", next_state); 
		end 
	end
		
endmodule
