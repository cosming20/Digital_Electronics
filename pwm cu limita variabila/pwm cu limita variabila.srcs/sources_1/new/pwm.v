`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2024 07:47:24 PM
// Design Name: 
// Module Name: pwm
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


module pwm(
    input clk,
    input reset,
    output out
    );
    
wire w1=0;
wire w2=0;
wire w3=0;
wire [29:0] w4=0;
wire [29:0] w5=0;
wire w6=0;
wire w7=0;
wire [29:0] w8=0;
wire w9=0;
parameter LIMIT_PERIOD = 8;
parameter LIMIT_REPET = 8;
    sau sau1(.in0(reset),.in1(w6),.out(w1));
    comparator comparator1 (.in0(LIMIT_PERIOD),.in1(w4),.out(w2));
    sau sau2(.in0(reset),.in1(w2),.out(w3));
    counter counter2 (.clk(clk),.reset(w3),.en(1),.out(w4));
    counter counter1 (.clk(clk),.reset(w1),.en(w2),.out(w5));
    comparator comparator2 (.in0(LIMIT_REPET),.in1(w5),.out(w6));
    sau sau3(.in0(reset),.in1(w9),.out(w7));
    counter counter3 (.clk(clk),.reset(w7),.en(w6),.out(w8));
    comparator comparator3 (.in0(LIMIT_PERIOD),.in1(w8),.out(w9));
    comparator2 comparator (.in0(w8),.in1(w4),.out(out));
endmodule
