`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 02:33:44 PM
// Design Name: 
// Module Name: ram_consoane
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


module ram_consoane(
    input [5:0] addr,
    input w_en,
    input clk,
    input [7:0] w_data,
    output [7:0] r_data
    );
    reg [7:0] ram_consoane [0:63];
    always@(posedge clk)begin
        if (w_en)
            ram_consoane[addr] <= w_data;
    end
    assign r_data = ram_consoane[addr];
endmodule
