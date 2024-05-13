`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2024 05:44:33 PM
// Design Name: 
// Module Name: numarator
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


module numarator
#(parameter width = 8)(
    input clk,
    input reset,
    input enable,
    output reg [width-1:0] count
    );
    
    always@(posedge clk)begin
        if (reset == 0)
            count <= 0;
        else if (enable == 1)
            count <= count + 1;
        else count <= count;
    end
endmodule
