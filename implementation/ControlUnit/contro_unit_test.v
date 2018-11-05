

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:23:41 10/23/2018
// Design Name:   control_unit
// Module Name:   C:/Users/corialmt/Documents/Sophomore Year/Fall Quarter/CompArch/ControlUnit/alt_test.v
// Project Name:  ControlUnit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module contro_unit_test;

	// Inputs
	reg [4:0] OPCODE;
	reg flagbit;
	reg CLK;
	reg Reset; 

	// Outputs
	wire MemRead;
	wire MemWrite;
	wire [2:0] MemSrc;
	wire RegWrite;
	wire MaryWrite;
	wire ShelleyWrite;
	wire CompWrite;
	wire RAWrite;
	wire PCWrite;
	wire SPWrite;
	wire [1:0] MarySrc;
	wire [1:0] ShelleySrc;
	wire RASrc;
	wire [2:0] PCSrc;
	wire [1:0] SPSrc;
	wire RegDst;
	wire [2:0] MemDst;
	wire RegData;
	wire SrcA;
	wire SrcB;
	wire [3:0] ALUOP;


	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.OPCODE(OPCODE), 
		.flagbit(flagbit),
		.CLK(CLK), 
		.Reset(Reset),
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemSrc(MemSrc), 
		.RegWrite(RegWrite), 
		.MaryWrite(MaryWrite), 
		.ShelleyWrite(ShelleyWrite), 
		.CompWrite(CompWrite), 
		.RAWrite(RAWrite), 
		.PCWrite(PCWrite), 
		.SPWrite(SPWrite), 
		.MarySrc(MarySrc), 
		.ShelleySrc(ShelleySrc), 
		.RASrc(RASrc), 
		.PCSrc(PCSrc), 
		.SPSrc(SPSrc), 
		.RegDst(RegDst), 
		.MemDst(MemDst), 
		.RegData(RegData), 
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.ALUOP(ALUOP)
	);
	
	always
	begin
		#10 CLK = !CLK; 
	end

	initial begin
		// Initialize Inputs
		OPCODE = 0;
		flagbit = 0;
		CLK = 0;
		Reset = 1; 

		// Wait 100 ns for global reset to finish
		#100;
		Reset = 0;
		
		//Testing APUT
		OPCODE = 10; 
		flagbit = 1; 
		#20; //set control bits for decode cycle here
		#12; //rising edge of decode cycle
		OPCODE = 0; //change opcode, recalculate control bits
		flagbit = 0;
		#8; //finish decode cycle
		if(MaryWrite == 1'b1 && MarySrc == 2'b11) 
			$display("Testing APUT Passed");
		else 
			$display("Testing APUT Failed");
		#20; //run cycle 3, set control bits for cycle 1
		
		//Testing APUT@
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 0;
		flagbit = 1; //change flagbit, recalculate control bits
		#8; //finish cycle 2
		if(ShelleyWrite == 1'b1 && ShelleySrc == 2'b01) 
			$display("Testing APUT@ Passed");
		else 
			$display("Testing APUT@ Failed");
		#20; //run cycle 3, set control bits for cycle 1
		
		//Testing SPUT
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 1;
		flagbit = 0;
		#8; //finish cycle 2
		if(SPWrite == 1'b1 && SPSrc == 2'b01 && MemWrite == 1'b1 && MemDst == 3'b100)
			$display("Testing SPUT Passed");
		else 
			$display("Testing SPUT Failed");
		#20; //run cycle 3, set control bits for cycle 1
		
		//Testing AADD
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 2;
		flagbit = 0;
		#8; //finish cycle 2
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 4'b0010)
			$display("Testing AADD cycle 3 Passed");
		else 
			$display("Testing AADD cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing AADD cycle 4 Passed");
		else 
			$display("Testing AADD cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
		
		//Testing AADD@
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 2;
		flagbit = 1;
		#8; //finish cycle 2
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 4'b0010)
			$display("Testing AADD@ cycle 3 Passed");
		else 
			$display("Testing AADD@ cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing AADD@ cycle 4 Passed");
		else 
			$display("Testing AADD@ cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
		
		//Testing ASUB
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 3;
		flagbit = 0;
		#8; //finish cycle 2
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 4'b0011)
			$display("Testing ASUB cycle 3 Passed");
		else 
			$display("Testing ASUB cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing ASUB cycle 4 Passed");
		else 
			$display("Testing ASUB cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
		
		//Testing ASUB@
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 3;
		flagbit = 1;
		#8; //finish cycle 2
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 4'b0011)
			$display("Testing ASUB@ cycle 3 Passed");
		else 
			$display("Testing ASUB@ cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing ASUB@ cycle 4 Passed");
		else 
			$display("Testing ASUB@ cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
		
		//Testing SPEK
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 4;
		flagbit = 0;
		#8; //finish cycle 2
		if(MemWrite == 1'b0 && MemDst == 3'b101)
			$display("Testing SPEK cycle 3 Passed");
		else 
			$display("Testing SPEK cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(MaryWrite == 1'b1 && MarySrc == 2'b00)
			$display("Testing SPEK cycle 4 Passed");
		else 
			$display("Testing SPEK cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
			
		//Testing SPEK
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 4;
		flagbit = 1;
		#8; //finish cycle 2
		if(MemWrite == 1'b0 && MemDst == 3'b101)
			$display("Testing SPEK@ cycle 3 Passed");
		else 
			$display("Testing SPEK@ cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(ShelleyWrite == 1'b1 && MarySrc == 2'b00)
			$display("Testing SPEK@ cycle 4 Passed");
		else 
			$display("Testing SPEK@ cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
		
		//Testing SPOP
		#20; //cycle 1
		#12; //rising edge of cycle 2
		OPCODE = 5;
		flagbit = 1;
		#8; //finish cycle 2
		if(MemWrite == 1'b0 && MemDst == 3'b110)
			$display("Testing SPOP cycle 3 Passed");
		else 
			$display("Testing SPOP cycle 3 Failed");
		#20; //finish cycle 3, prep for cycle 4
		if(MaryWrite == 1'b1 && MarySrc == 2'b00 && SPWrite == 1'b1 && SPSrc == 2'b10)
			$display("Testing SPOP cycle 4 Passed");
		else 
			$display("Testing SPOP cycle 4 Failed");
		#20; //run cycle 4, set control bits for cycle 1
			
			
			
			
			
		$finish;
		end 
		 
		
      
endmodule