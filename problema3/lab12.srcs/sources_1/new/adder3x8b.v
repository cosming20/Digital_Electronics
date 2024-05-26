`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 12:14:28 PM
// Design Name: 
// Module Name: adder3x8b
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

module adder3x8b(
    input [7:0] in0, in1, in2,
    output [7:0] out
    );
    assign out = in0 + in1 + in2;
endmodule
