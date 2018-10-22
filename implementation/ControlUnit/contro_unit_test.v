`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:38 10/22/2018
// Design Name:   control_unit
// Module Name:   C:/Users/corialmt/Documents/Sophomore Year/Fall Quarter/CompArch/ControlUnit/contro_unit_test.v
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
	wire MemSrc;
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
	wire SPSrc;
	wire RegDst;
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

	end
      
endmodule

