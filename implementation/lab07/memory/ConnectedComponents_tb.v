// Verilog test fixture created from schematic C:\prgr\csse232\lab07\memory\ConnectedComponents.sch - Fri Oct 19 08:28:07 2018

`timescale 1ns / 1ps

module ConnectedComponents_ConnectedComponents_sch_tb();

// Inputs
   reg [9:0] addra;
   reg [15:0] dina;
   reg [0:0] wea;
   reg clka;
   reg Reset;
   reg CLK;

// Output
   wire ALUSrc;
   wire MemtoReg;
   wire RegDst;
   wire RegWrite;
   wire MemRead;
   wire MemWrite;
   wire Branch;

// Bidirs

// Instantiate the UUT
   ConnectedComponents UUT (
		.addra(addra), 
		.dina(dina), 
		.wea(wea), 
		.clka(clka), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.Reset(Reset), 
		.CLK(CLK)
   );
	always begin
	#5 CLK = !CLK;
	clka = !clka;
	end
	
// Initialize Inputs
	initial begin
		addra = -1;
		dina = 0;
		wea = 0;
		clka = 0;
		Reset = 0; 
		CLK = 0;
		#10;
		
		addra = 0; //test r-type
		#100;
		addra = 11; //test branch
		#100;
		addra = 12; //test lw
		#100;
		addra = 13; //test sw
		#100;
		$finish;
	end
		
endmodule
