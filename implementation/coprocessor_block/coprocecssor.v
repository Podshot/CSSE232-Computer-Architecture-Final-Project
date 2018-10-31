`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:34 10/29/2018 
// Design Name: 
// Module Name:    coprocecssor 
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
module coprocecssor(
    input overflow,
    input userInput,
    input interruptsEnabled,
    input mary,
    input shelley,
    input badAddr ,
    output mBack,
    output sBack,
    output epc,
    output cause,
    output mode
    );
	 
	 
	 //TODO: clock
		register_component mBack (
			.in(mary),
			.clock(clock),
			.write(),
			.out(mBack)
		);
		
		register_component sBack (
			.in(shelley),
			.clock(clock),
			.write(),
			.out(sBack)
		);
		
		//TODO: what if both overflow and i/o are happening? How do we decide which to put in cause?
		register_component cause (
			.in(),
			.clock(clock),
			.write(),
			.out(cause)
		);
		
		register_component epc (
			.in(badAddr),
			.clock(clock),
			.write(),
			.out(epc)
		);
 

endmodule
