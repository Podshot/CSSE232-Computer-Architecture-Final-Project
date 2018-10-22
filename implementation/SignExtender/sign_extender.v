`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:09 10/16/2018 
// Design Name: 
// Module Name:    sign_extender 
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
module sign_extender(
    input [7:0] in,
    output reg [15:0] out
    );
	 
	//assign a = in[7];
	always@* begin
		if (in[7] == 0) 
			out <= {8'b00000000, in}; 
		if (in[7] == 1)
			out <= {8'b11111111, in};
	end 
endmodule
