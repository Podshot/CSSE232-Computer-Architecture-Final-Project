

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
	wire [2:0] ALUOP;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.OPCODE(OPCODE), 
		.flagbit(flagbit), 
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

	initial begin
		// Initialize Inputs
		OPCODE = 0;
		flagbit = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Add stimulus here

		//Testing Stack Operations:
		
		$display("******************************");
		$display("Tests for Stack Operations");
		$display("******************************");
		
		//Testing APUT
		OPCODE = 0; 
		flagbit = 0; 
		#100; 
		
		if(MaryWrite == 1'b1 && MarySrc == 2'b11) 
			$display("Testing APUT Passed");
		else 
			$display("Testing APUT Failed");
		#1; 
		
		//Testing APUT@
		OPCODE = 0; 
		flagbit = 1; 
		#100; 
		
		if(ShelleyWrite == 1'b1 && ShelleySrc == 2'b01) 
			$display("Testing APUT@ Passed");
		else 
			$display("Testing APUT@ Failed"); 
			
		//Testing SPUT 
		flagbit = 0; 
		OPCODE = 5'b00001;
		#100; 
		  
		if(SPWrite == 1'b1 && SPSrc == 2'b01 && MemWrite == 1'b1 && MemSrc == 3'b100)
			$display("Testing SPUT Passed");
		else 
			$display("Testing SPUT Failed"); 
			
		//Testing SPEK 
		flagbit = 0; 
		OPCODE = 5'b00100; 
		#100; 
		
		if(MemWrite == 1'b0 && MemDst == 3'b101 && MaryWrite == 1'b1 && MarySrc == 2'b00) 
			$display("Testing SPEK Passed");
		else
			$display("Testing SPEK Failed");
			
		//Testing SPOP
		flagbit = 0; 
		OPCODE = 5'b00101;
		#100;
		
		if(MemWrite == 1'b0 && MemDst == 3'b100 && SPWrite == 1'b1 && SPSrc == 2'b10 && MaryWrite == 1'b1 && MarySrc == 2'b00) 
			$display("Testing SPOP Passed");
		else 
			$display("Testing SPOP Failed"); 
			
		//Testing RPOP 
		flagbit = 0;
		OPCODE = 5'b00110; 
		#100;
		
		if(MemWrite == 1'b0 && MemDst == 3'b100 && SPWrite == 1'b1 && SPSrc == 2'b10 && RAWrite == 1'b1 && RASrc == 1'b0)
			$display("Testing RPOP Passed");
		else 
			$display("Testing RPOP Failed");
			
		//Testing BKAC 
		flagbit = 0; 
		OPCODE = 5'b10101;
		#100; 
		
		if(SPWrite == 1'b1 && SPSrc == 2'b01 && MemWrite == 1'b1 && MemSrc == 2'b00) 
			$display("Testing BKAC Passed");
		else 
			$display("Testing BKAC Failed"); 
			
		//Testing BKAC@
		flagbit = 1;
		OPCODE = 5'b10101;
		#100; 
		
		if(SPWrite == 1'b1 && SPSrc == 2'b01 && MemWrite == 1'b1 && MemSrc == 2'b01) 
			$display("Testing BKAC@ Passed");
		else 
			$display("Testing BKAC@ Failed"); 
			
		//Testing BKRA
		flagbit = 0;
		OPCODE = 5'b10110;
		#100; 
		
		if(SPWrite == 1'b1 && SPSrc == 2'b01 && MemWrite == 1'b1 && MemSrc == 2'b10) 
			$display("Testing BKRA Passed");
		else 
			$display("Testing BKRA Failed"); 
		
		
		//Testing Arithmetic and Logic 
		$display("******************************");
		$display("Tests for Arithmetic:");
		$display("******************************");
		
		//Testing AADD
		flagbit = 0; 
		OPCODE = 5'b00010;
		#100;  
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 3'b010 && MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing AADD Passed");
		else
			$display("Testing AADD Failed"); 
			
		//Testing AADD@
		flagbit = 1; 
		OPCODE = 5'b00010;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 3'b010 && MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing AADD@ Passed");
		else
			$display("Testing AADD@ Failed"); 
	
	//Testing ASUB
		flagbit = 0; 
		OPCODE = 5'b00011;
		#100;  
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 3'b011 && MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing ASUB Passed");
		else
			$display("Testing ASUB Failed"); 
			
		//Testing ASUB@
		flagbit = 1; 
		OPCODE = 5'b00011;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 3'b011 && MaryWrite == 1'b1 && MarySrc == 2'b01)
			$display("Testing ASUB@ Passed");
		else
			$display("Testing ASUB@ Failed"); 
		

		
		$display("******************************");
		$display("Tests for Jump Operations:");
		$display("******************************");

		//Testing JIMM
		flagbit = 0; 
		OPCODE = 5'b00111;
		#100; 
		if(PCWrite == 1'b1 && PCSrc == 2'b10)
			$display("Testing JIMM Passed");
		else 
			$display("Testing JIMM Failed");
		
		//Testing JIMM@
		flagbit = 1; 
		OPCODE = 5'b00111; 
		#100; 
		if(PCWrite == 1'b1 && PCSrc == 2'b01 )
			$display("Testing JIMM@ Passed");
		else 
			$display("Testing JIMM@ Failed");		
		
		//Testing JACC
		flagbit = 0; 
		OPCODE = 5'b01000;
		#100; 
		if(PCWrite == 1'b1 && PCSrc == 3'b100)
			$display("Testing JACC Passed");
		else 
			$display("Testing JACC Failed");
		
		//Testing JACC@
		flagbit = 1; 
		OPCODE = 5'b01000; 
		#100; 
		if(PCWrite == 1'b1 && PCSrc == 3'b101 )
			$display("Testing JACC@ Passed");
		else 
			$display("Testing JACC@ Failed");
		
		//Testing JCMP
		flagbit = 0; 
		OPCODE = 5'b01001;
		#100; 
		if(PCWrite == 1'b1 && PCSrc == 3'b110)
			$display("Testing JCMP Passed");
		else 
			$display("Testing JCMP Failed");
		
		//Testing JCMP@
		flagbit = 1; 
		OPCODE = 5'b01001; 
		#100; 
		if(PCWrite == 1'b1 && PCSrc == 3'b111 )
			$display("Testing JCMP@ Passed");
		else 
			$display("Testing JCMP@ Failed"); 
		
		//Testing JFNC
		flagbit = 0;
		OPCODE = 5'b01011;
		#100;
		if(RAWrite == 1'b1 && RASrc == 1'b1 && PCWrite == 1'b1 && PCSrc == 3'b010)
			$display("Testing JFNC Passed");
		else
			$display("Testing JFNC Failed"); 
		
		//Testing JFNC@
		flagbit = 1;
		OPCODE = 5'b01011;
		#100;
		if(RAWrite == 1'b1 && RASrc == 1'b1 && PCWrite == 1'b1 && PCSrc == 3'b001)
			$display("Testing JFNC@ Passed");
		else
			$display("Testing JFNC@ Failed"); 
			
		
		$display("******************************");
		$display("Tests for Logical Operations:");
		$display("******************************");
		
		//Testing LORR
		flagbit = 0;
		OPCODE = 5'b01111;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 3'b001 && CompWrite == 1'b1)
			$display("Testing LORR Passed");
		else 
			$display("Testing LORR Failed"); 
			
		//Testing LORR@
		flagbit = 1;
		OPCODE = 5'b01111;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 3'b001 && CompWrite == 1'b1)
			$display("Testing LORR@ Passed");
		else 
			$display("Testing LORR@ Failed"); 
		
		
		//Testing LAND
		flagbit = 0; 
		OPCODE = 5'b10000;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 3'b000 && CompWrite == 1'b1) 
			$display("Testing LAND Passed");
		else 
			$display("Testing LAND Failed"); 
			
		//Testing Comparisons
		$display("******************************");
		$display("Tests for Comparison Operations:");
		$display("******************************");
		
		//Testing CEQU
		flagbit = 0; 
		OPCODE = 5'b01100;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 3'b110 && CompWrite == 1'b1) 
			$display("Testing CEQU Passed");
		else 
			$display("Testing CEQU Failed"); 
		
		//Testing CEQU@
		flagbit = 1; 
		OPCODE = 5'b01100;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 3'b110 && CompWrite == 1'b1) 
			$display("Testing CEQU@ Passed");
		else 
			$display("Testing CEQU@ Failed"); 
		
		//Testing CLES 
		flagbit = 0;
		OPCODE = 5'b01101;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b01 && ALUOP == 3'b100 && CompWrite == 1'b1)
			$display("Testing CLES Passed");
		else 
			$display("Testing CLES Failed"); 
		
		//Testing CLES@
		flagbit = 1;
		OPCODE = 5'b01101;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 3'b100 && CompWrite == 1'b1)
			$display("Testing CLES Passed");
		else 
			$display("Testing CLES Failed"); 	

		//Testing CGRE
		flagbit = 0; 
		OPCODE = 5'b01110;
		#100; 
		if(SrcA == 1'b0 && SrcB == 2'b01 &&  ALUOP == 3'b101 && CompWrite == 1'b1)
			$display("Testing CGRE Passed");
		else 
			$display("Testing CGRE Failed"); 
			
		//Testing CGRE@ 
		flagbit = 1; 
		OPCODE = 5'b01110; 
		#100;
		if(SrcA == 1'b0 && SrcB == 2'b00 && ALUOP == 3'b101 && CompWrite == 1'b1)
			$display("Testing CGRE@ Passed");
		else 
			$display("Testing CGRE@ Failed");
		
		
		//Testing Load/Store
		$display("******************************");
		$display("Tests for Load/Store Operations:");
		$display("******************************");		
		
		//Testing LOAD
		flagbit = 0; 
		OPCODE = 5'b10011;
		#100; 
		if(MemWrite == 1'b0 && MemDst == 3'b001 && MaryWrite == 1'b1 && MarySrc == 2'b00)
			$display("Testing LOAD Passed");
		else
			$display("Testing LOAD Failed");
			

		//Testing LOAD@
		flagbit = 1; 
		OPCODE = 5'b10011;
		#100; 
		if(MemWrite == 1'b0 && MemDst == 3'b011 && MaryWrite == 1'b1 && MarySrc == 2'b00)
			$display("Testing LOAD@ Passed");
		else 
			$display("Testing LOAD@ Failed"); 
				
		//Testing STOR
		flagbit = 0;
		OPCODE = 5'b10100;
		#100;
		if(MemWrite == 1'b1 && MemDst == 3'b001 && MarySrc == 2'b00)
			$display("Testing STOR Passed");
		else
			$display("Testing STOR Failed");
		
		//Testing STOR@
		flagbit = 1; 
		OPCODE = 5'b10100;
		#100;
		if(MemWrite == 1'b1 && MemDst == 3'b011 && MarySrc == 2'b00) 
			$display("Testing STOR@ Passed");
		else 
			$display("Testing STOR@ Failed");
			
		
		//Testing Swap
		$display("******************************");
		$display("Test for Swap Operation");
		$display("******************************");
		
		//Testing SWAP
		flagbit = 0; 
		OPCODE = 5'b10111; 
		#100; 
		if(MaryWrite == 1'b1 && MarySrc == 2'b10 && ShelleyWrite == 1'b1 && ShelleySrc == 2'b10) 
			$display("Testing SWAP Passed");
		else
			$display("Testing SWAP Failed"); 
			
		end
		 
		
      
endmodule