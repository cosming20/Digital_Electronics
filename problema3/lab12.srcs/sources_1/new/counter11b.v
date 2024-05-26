`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 11:30:33 AM
// Design Name: 
// Module Name: counter11b
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


module counter11b(
    input clock,
    input en,
    input reset,
    output reg [10:0] out
    );
    always@(posedge clock) begin
        if(reset == 1) begin
            out = 0;
        end
        else begin
            if(en == 1) begin
                out = out + 1;
            end
        end
    end
endmodule
