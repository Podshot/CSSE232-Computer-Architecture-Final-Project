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
	reg MemWrite;
	reg [1:0] MemSrc;
	reg [2:0] MemDst;
	reg [15:0] pc;
	reg [15:0] sp_in;
	reg [15:0] ze_imm;
	reg [15:0] ls_imm;
	reg [15:0] MaryData;
	reg [15:0] ShelleyData;
	reg [15:0] RAData;

	// Outputs
	wire [15:0] mem_out;

	// Instantiate the Unit Under Test (UUT)
	memory_datapath uut (
		.clock(CLK),
		.MemWrite(MemWrite),
		.MemSrc(MemSrc),
		.MemDst(MemDst),
		.pc(pc),
		.sp_in(sp_in), 
		.ze_imm(ze_imm),
		.ls_imm(ls_imm),
		.MaryData(MaryData), 
		.ShelleyData(ShelleyData), 
		.RAData(RAData),  
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
	  
	integer i;
	integer integrity_flag = 1;

	initial begin
		// Initialize Inputs
		MemWrite = 0;
		MemSrc = 0;
		pc = 0;
		sp_in = 0;
		ze_imm = 0;
		ls_imm = 0;
		MaryData = 0;
		ShelleyData = 0;
		RAData = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Test #1 - Set value from Mary into memory at immediate address
		MemWrite = 1;
		MemDst = 3'b001;
		MemSrc = 2'b00;
		MaryData = 1;
		ze_imm = 0;
		#50;
		MemWrite = 0;
		#50;
		if (mem_out == 1) begin
			$display("[Test #1]: Passed");
		end else begin
			$display("[Test #1]: Failed");
		end
		
		#75;
		
		// Test #2 - Set value from Shelley into memory at immediate address
		MemWrite = 1;
		MemDst = 3'b001;
		MemSrc = 2'b01;
		ShelleyData = 2;
		ze_imm = 1;
		#50;
		MemWrite = 0;
		#50;
		if (mem_out == 2) begin
			$display("[Test #2]: Passed");
		end else begin
			$display("[Test #2]: Failed");
		end
		
		#75;
		
		// Test #3 - Set value from RA into memory at immediate address
		MemWrite = 1;
		MemDst = 3'b001;
		MemSrc = 2'b10;
		RAData = 3;
		ze_imm = 2;
		#50;
		MemWrite = 0;
		#50;
		if (mem_out == 3) begin
			$display("[Test #3]: Passed");
		end else begin
			$display("[Test #3]: Failed");
		end
		
		#75;
		
		// Test #4 - Set value from Mary into memory at PC address
		MemWrite = 1;
		MemDst = 3'b000;
		MemSrc = 2'b00;
		MaryData = 4;
		pc = 3;
		#50;
		MemWrite = 0;
		#50;
		if (mem_out == 4) begin
			$display("[Test #4]: Passed");
		end else begin
			$display("[Test #4]: Failed");
		end
		
		#75;
		
		// Test #5 - Set value from Mary into memory at (SP + 2) address
		MemWrite = 1;
		MemDst = 3'b100;
		MemSrc = 2'b00;
		MaryData = 5;
		sp_in = 2;
		#50;
		MemWrite = 0;
		#50;
		if (mem_out == 5) begin
			$display("[Test #5]: Passed"); 
		end else begin
			$display("[Test #5]: Failed");
		end
		
		#75;
		
		// Test #6 - Set value from Shelley into memory at (SP + immediate shifted left 2)
		MemWrite = 1;
		MemDst = 3'b101;
		MemSrc = 2'b01;
		ShelleyData = 6;
		sp_in = 1;
		ls_imm = 1 << 2;
		#50
		MemWrite = 0;
		#50
		if (mem_out == 6) begin
			$display("[Test #6]: Passed");
		end else begin
			$display("[Test #6]: Failed");
		end
		
		#75;
		
		// Test #7 - Test memory integrity
		MemWrite = 0;
		MemDst = 3'b001;
		#50
		for (i = 0; i < 6; i = i + 1) begin
			ze_imm = i;
			#50
			if (mem_out != i + 1) begin
				$display("[Test #7]: Mismatched value at memory address %h was %h", ze_imm, mem_out);
				integrity_flag = 0;
			end
		end

		if (integrity_flag == 1) begin
			$display("[Test #7]: Passed");
		end else begin
			$display("[Test #7]: Failed");
		end
	end
      
endmodule

