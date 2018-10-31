`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:00 10/29/2018 
// Design Name: 
// Module Name:    coprocessor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mode_logic(
    input overflow,
    input userInput,
    input interruptsEnabled,
	 // 0 runs user mode; 1 runs kernel
    output reg mode
    );
	 
	 // Output of oring exceptions
	 reg isException;
	 
	 always @ (*) begin
		isException = overflow | userInput;
		mode = interruptsEnabled & isException;
	 end


endmodule
