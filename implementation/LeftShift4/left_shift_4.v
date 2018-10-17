`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:35 10/17/2018 
// Design Name: 
// Module Name:    left_shift_4 
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
module left_shift_4(
    input [15:0] in,
    output reg [15:0] out
    );
	 
	always@* begin
		out <= {in[11:0], 4'b00};
	end

endmodule
