`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:32 10/17/2018 
// Design Name: 
// Module Name:    left_shift_2 
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
module left_shift_2(
    input [15:0] in,
    output reg [15:0] out
    );
	 
	always@* begin
		out <= {in[13:0], 2'b00};
	end
endmodule