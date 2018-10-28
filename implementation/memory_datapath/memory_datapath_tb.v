`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:04 10/28/2018
// Design Name:   memory_datapath
// Module Name:   C:/Users/gotharbg/Documents/Fall Term 2018/CSSE 232/1819a-csse232-02-3V/implementation/memory_datapath/memory_datapath_tb.v
// Project Name:  memory_datapath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_datapath_tb;

	reg CLK;

	// Inputs
	reg [15:0] pc;
	reg [15:0] sp_in;
	reg [15:0] reg_in;
	reg [1:0] MemSrc;
	reg [15:0] MaryData;
	reg [15:0] ShelleyData;
	reg [15:0] RAData;
	reg MemWrite;
	reg MemRead;
	reg [2:0] MemDst;
	reg MaryWrite;
	reg ShelleyWrite;
	reg CompWrite;
	reg RAWrite;
	reg [1:0] MarySrc;
	reg [1:0] ShelleySrc;

	// Outputs
	wire [15:0] mem_out;

	// Instantiate the Unit Under Test (UUT)
	memory_datapath uut (
		.pc(pc), 
		.sp_in(sp_in), 
		.reg_in(reg_in), 
		.MemSrc(MemSrc), 
		.MaryData(MaryData), 
		.ShelleyData(ShelleyData), 
		.RAData(RAData), 
		.clock(CLK), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.MemDst(MemDst), 
		.MaryWrite(MaryWrite), 
		.ShelleyWrite(ShelleyWrite), 
		.CompWrite(CompWrite), 
		.RAWrite(RAWrite), 
		.MarySrc(MarySrc), 
		.ShelleySrc(ShelleySrc), 
		.mem_out(mem_out)
	);
	
	parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   initial    // Clock process for CLK
     begin
        #OFFSET;
        forever
          begin
             CLK = 1'b0;
             #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = 1'b1;
             #(PERIOD*DUTY_CYCLE);
          end
     end

	initial begin
		// Initialize Inputs
		pc = 0;
		sp_in = 0;
		reg_in = 0;
		MemSrc = 0;
		MaryData = 0;
		ShelleyData = 0;
		RAData = 0;
		MemWrite = 0;
		MemRead = 0;
		MemDst = 0;
		MaryWrite = 0;
		ShelleyWrite = 0;
		CompWrite = 0;
		RAWrite = 0;
		MarySrc = 0;
		ShelleySrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		MemWrite = 1;
		MemDst = 3'b001;
		MemSrc = 1'b0;
		MaryData = 127;
		reg_in = 16'b0000000000000000;
		#100;

	end
      
endmodule

