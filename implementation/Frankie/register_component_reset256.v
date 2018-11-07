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
module register_component_reset256(
   input [15:0] in,
   input clock,
   input write,
   output wire [15:0] out,
	input reset
    );
	 
	reg [15:0] internal;
	
	always @(posedge clock)
	begin
		if (reset)
		begin
			internal = 16'b0000000100000000;
		end
		else if (write)
		begin
			internal = in;
		end
	end
	
	assign out = internal;

endmodule
