`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 11:41:28 AM
// Design Name: 
// Module Name: ram2048x8b
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


module ram2048x8b(
    input clock,
    input en,
    input [10:0] addr_w,
    input [10:0] addr_r,
    input [7:0] data_w,
    output [7:0] data_r
    );
    
    reg [7:0] memorie [2048:0];
    
    assign data_r = memorie[addr_r];
    
    always@(posedge clock) begin
        if(en == 1) begin
            memorie[addr_w] = data_w;
        end
    end
    
endmodule
