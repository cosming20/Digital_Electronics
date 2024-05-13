`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2024 02:08:09 PM
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
parameter width = 16;
reg clk;
reg reset;
wire [width-1:0] count;
initial begin
    clk = 0;
    forever #1 clk = ~clk;
end

initial begin
    reset = 0;
    #5 reset = 1;
    
    #500 $stop();


end

divizor #(.width(width)) DUT (.reset(reset),.clk(clk),.count(count));
endmodule
