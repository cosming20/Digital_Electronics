`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2024 01:06:41 PM
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


module numarator(
    input clock,
    input reset,
    output clkout1,
    output clkout2,
    output clkout4,
    output clkout8,
);

reg [26:0] count;

always@(posedge clock) begin
    if(reset == 1)
        count <= 0;
    else
        count <= count + 1;  
end

assign clkout1 = count[26];
assign clkout2 = count[25];
assign clkout4 = count[24];
assign clkout8 = count[23];
