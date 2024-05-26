`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 12:34:26 PM
// Design Name: 
// Module Name: mux2x8b
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


module mux2x8b(
    input [7:0] in0,
    input [7:0] in1,
    input sel,
    output reg [7:0] out
    );
    
    always@(*)begin
        case(sel)
            1'b0: out = in0;
            1'b1: out = in1;
        endcase
    end
    
endmodule
