`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2024 08:15:03 PM
// Design Name: 
// Module Name: tb
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


module tb();

reg clk;
reg reset;
wire out;
    initial begin
        clk = 0;
        reset = 0;
        #5 reset = 1;
        #4 reset = 0;
        forever #1 clk = ~clk;
    end
    pwm DUT(.clk(clk),.reset(reset),.out(out));
endmodule
