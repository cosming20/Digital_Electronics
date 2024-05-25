`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 02:33:44 PM
// Design Name: 
// Module Name: demux
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


module demux(
    input [7:0] in,
    input  sel,
    output reg[7:0] out0,
    output reg[7:0] out1
    );
    always@(*)begin
        if (sel)begin
            out1 = in;
            out0 = 0;
            end
        else begin
            out0 = in;
            out1 =0;
            end
     end
endmodule
