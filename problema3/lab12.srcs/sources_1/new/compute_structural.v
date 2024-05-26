`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 12:13:39 PM
// Design Name: 
// Module Name: compute_structural
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


module compute_structural(
    input [7:0] in0, in1,
    output [7:0] out
    );
    
    wire [7:0] w0, w1, w2;
    
    shifter8b shifter8b_0(.in0(in1), .in1(8'h01), .out(w0));
    adder3x8b adder3x8b_0(.in0(w0), .in1(in0), .in2(8'd03), .out(w1));
    adder3x8b adder3x8b_1(.in0(w0), .in1(in0), .in2(-1), .out(w2));
    mux2x8b mux2x8b_0(.in0(w1), .in1(w2), .sel(in0[0]), .out(out));
endmodule
