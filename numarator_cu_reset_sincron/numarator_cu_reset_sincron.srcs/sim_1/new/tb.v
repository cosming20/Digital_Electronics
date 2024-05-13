`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2024 06:02:50 PM
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
reg enable;
parameter width = 8;
wire [width-1:0] out;
initial begin
    clk = 0;
    forever #1 clk = ~clk;
end

    initial begin
        reset = 0;
        enable = 1;
        #2 reset = 1;
        #10 enable = 0;
        #40 enable = 1;
        #500 $stop();
    end
    
numarator #(.width(width)) DUT (.clk(clk),.reset(reset),.enable(enable),.count(out));
endmodule
