`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 12:17:01 PM
// Design Name: 
// Module Name: shifter8b
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


module shifter8b(
    input [7:0] in0,
    input [7:0] in1,
    output [7:0] out
    );
    assign out = in0 << in1;
endmodule
