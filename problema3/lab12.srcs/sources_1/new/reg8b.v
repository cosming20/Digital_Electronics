`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 11:23:05 AM
// Design Name: 
// Module Name: reg8b
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


module reg8b(
    input [7:0] in,
    input en,
    input reset,
    input clock,
    output reg [7:0] out
    );
    
    always@(posedge clock) begin
        
        if(reset == 1) begin
            out = 0;
        end
        else begin
            if(en == 1) begin
                out = in;
            end
        end
        
        
        
    end
    
endmodule
