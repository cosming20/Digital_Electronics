`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2024 07:36:51 PM
// Design Name: 
// Module Name: comparator2
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


module comparator2(
    input [29:0] in0,
    input [29:0] in1,
    output out
    );
    assign out = (in0 > in1)? 1 : 0;
endmodule
