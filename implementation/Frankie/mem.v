`timescale 1ns / 1ps

module memory(
	input [15:0] Address, DataIn,
	input MemWrite, clock,
	output [15:0] MemVal,
	input reset
	);
	
	reg [15:0] main_memory [256:0];
	reg [15:0] internal_mem_val;
	
	
	always @ (posedge clock)
	begin
		if (reset == 1'b1)
		begin
			//$readmemb("test1.mem", main_memory); //why this no work :((((
			
			// 2 + 5
			main_memory[0] = 16'b0000000000001000; //aput 2
			main_memory[1] = 16'b0000100000010100; //aadd 5
			main_memory[2] = 16'b1000000000010100; //aput@ 5
			main_memory[3] = 16'b1000100000111000; //aadd@
			
			// 5 - 2 - 3
			main_memory[4] = 16'b0000000000010100; //aput 5
			main_memory[5] = 16'b0000110000001000; //asub 2
			main_memory[6] = 16'b1000000000001100; //aput@ 3
			main_memory[7] = 16'b1000110000000000; //asub@
			
			// big imm
			main_memory[8] = 16'b0000000111111100; //aput 127
			main_memory[9] = 16'b0100010000100000; //shfl 8
			main_memory[10] = 16'b0011111111111100; //lorr 255
			
			// stack operations
			main_memory[11] = 16'b0000010000011100; //sput 7
			main_memory[12] = 16'b0001000000000000; //spek
			main_memory[13] = 16'b0000010000101000; //sput 10
			main_memory[14] = 16'b0001010000000000; //spop
			main_memory[15] = 16'b0001100000000000; //rpop
			
			// load/store
			main_memory[16] = 16'b0100110000000100; //load 1
			main_memory[17] = 16'b1000000000001000; //aput@ 5
			main_memory[18] = 16'b1100110000000100; //load@
			main_memory[19] = 16'b0101000000000100; //stor 1
			
			// Add Function
			main_memory[20] = 16'b0101100000000000; //bkra
			main_memory[21] = 16'b0000000000010100; //aput 5
			main_memory[22] = 16'b1000000000001000; //aput@ 2
			main_memory[23] = 16'b0010111000000000; //jfnc add
			main_memory[24] = 16'b0001100000000000; //rpop
			main_memory[129] = 16'b1000100000000000; //aadd@
			main_memory[130] = 16'b0010100000000000; //jret
			
			// swap mary (7) and shelley (2)
			main_memory[25] = 16'b0101110000000000;
			
			// loop to sum 0 through 10
			main_memory[26] = 16'b0000000000000000; //aput 0
			main_memory[27] = 16'b1000000000000000; //aput@ 0
			main_memory[28] = 16'b0101110000000000; //swap
			main_memory[29] = 16'b0011100000100100; //cgre 9
			main_memory[30] = 16'b0010010010001100; //jcmp exit
			main_memory[31] = 16'b0000100000000100; //aadd 1
			main_memory[32] = 16'b0101110000000000; //swap
			main_memory[33] = 16'b1000100000000000; //aadd@
			main_memory[34] = 16'b1001111111100100; //jimm@ -6
			
			//GCD
			main_memory[35] = 16'b0111110000000000; //GCD: converted to noop
			main_memory[36] = 16'b0001010000000000; //spop
			main_memory[37] = 16'b0011000000000100; //cequ 1
			main_memory[38] = 16'b0101110000000000; //swap
			main_memory[39] = 16'b0010010011010000; //jcmp ENDgcd (52)
			main_memory[40] = 16'b0111110000000000; //LOOPgcd:
			main_memory[41] = 16'b0010010011001000; //jcmp ENDswap (50)
			main_memory[42] = 16'b0011010000000100; //cles 1
			main_memory[43] = 16'b0010010011000000; //jcmp ELSEgcd (48)
			main_memory[44] = 16'b0101110000000000; //swap
			main_memory[45] = 16'b1000110000000000; //asub@
			main_memory[46] = 16'b0101110000000000; //swap
			main_memory[47] = 16'b0001110010100000; //jimm LOOPgcd (40)
			main_memory[48] = 16'b0111110000000000; //ELSEgcd: converted to noop
			main_memory[49] = 16'b0001110010100000; //jimm LOOPgcd (40)
			main_memory[50] = 16'b0111110000000000; //ENDswap: converted to noop
			main_memory[51] = 16'b0101110000000000; //swap
			main_memory[52] = 16'b0111110000000000; //ENDgcd: converted to noop
			main_memory[53] = 16'b0111110000000000; //GCD: converted to noop
			main_memory[54] = 16'b0010100000000000; //jret
			
			// relPrime
			main_memory[55] = 16'b0111110000000000; //main:
			main_memory[56] = 16'b0101100000000000; //bkra
			main_memory[57] = 16'b0000010000000110; //sput nVal (6 right now)
			main_memory[58] = 16'b0000000000000000; //aput 2
			main_memory[59] = 16'b0101110000000000; //swap
			main_memory[60] = 16'b0111110000000000; //LOOPrp:
			main_memory[61] = 16'b0010110010001100; //jfnc GCD (35)
			main_memory[62] = 16'b0011000000000100; //cequ 1
			main_memory[63] = 16'b0010010100010000; //jcmp ENDrp (68)
			main_memory[64] = 16'b0101110000000000; //swap
			main_memory[65] = 16'b0000000000000100; //aadd 1
			main_memory[66] = 16'b0101110000000000; //swap
			main_memory[67] = 16'b0001110011110000; //jimm LOOPrp (60)
			main_memory[68] = 16'b0111110000000000; //ENDrp: convereted to noop
			main_memory[69] = 16'b0101110000000000; //swap
			main_memory[70] = 16'b0001100000000000; //rpop
			main_memory[71] = 16'b0010100000000000; //jret
			
		end
		else if (MemWrite == 1'b1) 
		begin
			main_memory[Address] = DataIn;
		end
	end
	
	always @ (posedge clock)
	begin
		if (MemWrite == 1'b0) begin
			internal_mem_val = main_memory[Address];
		end
	end
	
	assign MemVal = internal_mem_val;
endmodule
