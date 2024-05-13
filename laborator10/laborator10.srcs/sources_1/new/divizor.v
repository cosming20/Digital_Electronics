`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2024 02:02:28 PM
// Design Name: 
// Module Name: divizor
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


module divizor
#(parameter width = 8)(
    input clk,
    input reset,
    output reg [width-1:0] count
    );
  
  always@(posedge clk)begin
  if (reset == 0)
    count <= 0;
  else
    count <= count + 1;
    end
    always@(negedge clk)begin
    if (reset == 0)
    count <= 0;
  else
    count <= count + 1;
  end
endmodule
