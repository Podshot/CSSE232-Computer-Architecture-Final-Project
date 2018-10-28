`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:21 10/15/2018 
// Design Name: 
// Module Name:    register_component 
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
module register_component(
    input [15:0] in,
    input clock,
    input write,
    output reg [15:0] out
    );
	 
	 always @(posedge clock)
		if (write)
			out <= in;

endmodule
