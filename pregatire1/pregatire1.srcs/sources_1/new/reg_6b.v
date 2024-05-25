`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 02:33:44 PM
// Design Name: 
// Module Name: reg_6b
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


module reg_6b(
    input [5:0] in,
    input clk,
    input reset,
    output reg [5:0] out
    );
    always@(posedge clk)begin
        if (reset)
            out <= 0;
        else
            out <= in;
    end
endmodule
