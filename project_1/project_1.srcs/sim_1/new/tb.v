`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2024 01:16:51 PM
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

parameter WIDTH_T = 8;
reg reset_n_t, clock_t;
wire [WIDTH_T-1:0] count_t;
	
initial begin
    clock_t = 0;
    forever #1 clock_t = ~clock_t;
end
	
initial begin
        reset_n_t = 0;
    #2 	reset_n_t = 1;
    #500 $stop();	
end

numarator #(.WIDTH(WIDTH_T)) DUT(
    .clk(clock_t),
    .reset(reset_n_t),
    .count(count_t)
);

endmodule
