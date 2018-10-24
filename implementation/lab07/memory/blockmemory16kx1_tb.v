`timescale 1ns / 1ps

module blockmemory16kx1_tb;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [9:0] addra;
	reg [15:0] dina;

	// Outputs
	wire [15:0] douta;

	// Instantiate the Unit Under Test (UUT)
	blockmemory16kx1 uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta) //data out 
	);
	
	always begin
	#5 clka = !clka;
	end

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		addra = 0;
		#50
		if (douta[15:0] != 16'b0000000000000000) //Expected value in memory 
			$display("Test 1 failed, douta: %d", douta);
		#50
		addra = 1;
		#50
		if (douta[15:0] != 16'b0001000100010001)
			$display("Test 2 failed, douta: %d", douta);
		#50
		addra = 2;
		#50
		if (douta[15:0] != 16'b1010101111001101)
			$display("Test 3 failed, douta: %d", douta);
		#50
		addra = 3;
		#50
		if (douta[15:0] != 16'b0010001000100010)
			$display("Test 4 failed, douta: %d", douta);
		
	end
      
endmodule

