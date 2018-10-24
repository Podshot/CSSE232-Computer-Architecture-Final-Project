`timescale 1ns / 1ps

module MIPS_control_unit_tb;

	// Inputs
	reg [5:0] Opcode;
	reg CLK;
	reg Reset;

	// Outputs
	wire ALUSrc;
	wire MemtoReg;
	wire RegDst;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;

	// Instantiate the Unit Under Test (UUT)
	MIPS_control_unit uut (
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.Opcode(Opcode), 
		.CLK(CLK), 
		.Reset(Reset)
	);
	
	always begin
	#5 CLK = !CLK;
	end

	initial begin
		// Initialize Inputs
		Opcode = 0;
		CLK = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode = 0;
		#10;
		//if ((ALUSrc == 0 && MemtoReg == 0 && RegDst == 1 && RegWrite == 1 && MemRead == 0 && MemWrite == 0 && Branch == 0) == 0)
			//$display("Test 1 failed");
		//#10;
		
		Opcode = 4;
		#10;
		//if ((ALUSrc == 1 && MemtoReg == 0 && RegDst == 0 && RegWrite == 0 && MemRead == 0 && MemWrite == 0 && Branch == 1) == 0)
			//$display("Test 2 failed");
		//#10;
		
		Opcode = 35;
		#10;
		//if ((ALUSrc == 1 && MemtoReg == 1 && RegDst == 0 && RegWrite == 1 && MemRead == 1 && MemWrite == 0 && Branch == 0) == 0)
			//$display("Test 3 failed");
		//#10;
		
		Opcode = 43;
		#10;
		//if ((ALUSrc == 1 && MemtoReg == 0 && RegDst == 0 && RegWrite == 0 && MemRead == 0 && MemWrite == 1 && Branch == 0) == 0)
			//$display("Test 4 failed");
		//#10;
		
		Opcode = 2481;

	end
      
endmodule

