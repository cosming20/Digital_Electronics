`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 12:41:03 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clock, reset, en,
    output [7:0] sir,
    output tester
    
    );
    
    
    
    wire [7:0] w0, w1, w2, w5, w6, w7, w8;
    wire [10:0] w3, w4;
    
    reg8b reg8b_0(.en(en), .clock(clock), .reset(reset), .in(w8), .out(w0));
    
    reg8b reg8b_1(.en(en), .clock(clock), .reset(reset), .in(w0), .out(w6));

	
	counter11b counter11b_0(.en(en), .clock(clock), .reset(reset), .out(w3));
	
	subtract subtract_0(.in0(w3), .in1(11'h001), .out(w4));
    
    ram2048x8b ram2048x8b_0(.clock(clock), .en(en), .addr_w(w3), .addr_r(w4), .data_w(w8), .data_r(sir));
	
    compute_behav compute_behav_0(.in0(w0), .in1(w6), .out(w8));
   
    
    compute_structural compute_structural_0(.in0(w0), .in1(w6), .out(w7));
	
	compeq compeq_0(.in0(w7), .in1(w8), .out(tester));
	
	
endmodule
