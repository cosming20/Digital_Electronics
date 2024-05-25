`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 02:33:44 PM
// Design Name: 
// Module Name: counter_6b
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


module counter_6b(
    input en,
    input clk,
    input reset,
    output reg [5:0] count
    );
    always@(posedge clk)begin
        if (reset == 1)
            count <= 0;
        else if (en == 1)
            count <= count + 1;
    
    end
    
endmodule
