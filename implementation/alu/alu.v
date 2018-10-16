`timescale 1ns / 1ps

module alu(
	input [15:0] A, B,
	input [2:0] AluOp,
	output reg [15:0] AluOut,
	output CarryOut, Overflow
	);
	
	wire [16:0] add; //wire for addition
	assign add = A + B;
	assign CarryOut = add[16];
	
	wire [15:0] sub; //wire for subtraction
	assign sub = A - B;
	
	wire slt; //wire for setlessthan
	assign slt = (sub[15] == 1'b1) ? 1 : 0;
	
	wire seq; //wire for setequalto
	assign seq = (sub == 0) ? 1 : 0;
	
	wire sgt; //wire for setgreaterthan
	assign sgt = (~slt & ~seq);
	
	always @ (A, B, add, slt, sub, seq, sgt, AluOp)
	begin
		case(AluOp)
		3'b000: //and
			AluOut = A & B;
		3'b001: //or
			AluOut = A | B;
		3'b010: //add
			AluOut = add[15:0];
		3'b011: //sub
			AluOut = sub;
		3'b100: //setlessthan
			AluOut = slt;
		3'b101: //setgreaterthan
			AluOut = sgt;
		3'b110: //setequalto
			AluOut = seq;
		endcase
	end
	
endmodule
