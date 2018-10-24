

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
	wire ShelleySrc;
	wire RASrc;
	wire PCSrc;
	wire [1:0] SPSrc;
	wire RegDst;
	wire [2:0] MemDst;
	wire RegData;
	wire SrcA;
	wire SrcB;
	wire ALUOP;

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
		//Testing APUT: 
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
		
		if(MemWrite == 1'b0 && MemSrc == 3'b101 && MaryWrite == 1'b1 && MarySrc == 2'b00) 
			$display("Testing SPEK Passed");
		else
			$display("Testing SPEK Failed");
			
		//Testing SPOP
		flagbit = 0; 
		OPCODE = 5'b00101;
		#100;
		
		if(MemWrite == 1'b0 && MemSrc == 3'b100 && SPWrite == 1'b1 && SPSrc == 2'b10 && MaryWrite == 1'b1 && MarySrc == 2'b00) 
			$display("Testing SPOP Passed");
		else 
			$display("Testing SPOP Failed"); 
			
		//Testing RPOP 
		flagbit = 0;
		OPCODE = 5'b00110; 
		#100;
		
		if(MemWrite == 1'b0 && MemSrc == 3'b100 && SPWrite == 1'b1 && SPSrc == 2'b10 && RAWrite == 1'b1 && RASrc == 1'b0)
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

	end
      
endmodule