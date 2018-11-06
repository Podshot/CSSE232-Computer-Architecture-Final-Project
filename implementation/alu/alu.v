`timescale 1ns / 1ps

module alu(
	input [15:0] mary,
	input [15:0] sp,
	input [15:0] shelley,
	input [15:0] zext_imm,
	input [15:0] sext_imm,
	input [15:0] sext_ls_imm,
	input [0:0] SrcA,
	input [1:0] SrcB,
	input [3:0] AluOp,
	input clock,
	output [15:0] out,
	output Overflow,
	input reset
	);
	
	reg [15:0] A; //input to ALU
	reg [15:0] B; //input to ALU
	reg [15:0] AluOut; //output of ALU
	
	register_component AluOutReg(
	.in(AluOut),
	.clock(clock),
	.write(1'b1),
	.out(out),
	.reset(reset)
	);
	
	always @ *
	begin
		//the following case statements simulate muxes
		//and decide which data goes into the ALU as A and B
		case(SrcA)
			1'b0: A = mary;
			1'b1: A = sp;
		endcase
		
		case(SrcB)
			2'b00: B = shelley;
			2'b01: B = zext_imm;
			2'b10: B = sext_imm;
			2'b11: B = sext_ls_imm;
		endcase
	end
	
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
		4'b0000: //and
			AluOut = A & B;
		4'b0001: //or
			AluOut = A | B;
		4'b0010: //add
			AluOut = add[15:0];
		4'b0011: //sub
			AluOut = sub;
		4'b0100: //setlessthan
			AluOut = slt;
		4'b0101: //setgreaterthan
			AluOut = sgt;
		4'b0110: //setequalto
			AluOut = seq;
		4'b0111: //shelley
			AluOut = B;
		4'b1000: //left shift
			AluOut = A << B;
		4'b1001: //right shift
			AluOut = A >> B;
		endcase
	end
	
endmodule
