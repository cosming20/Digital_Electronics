`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 03:13:39 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(

    );
    
    reg en, reset, clock;
    wire [7:0] sir;
    wire tester;
    
    
    top dut(.en(en), .reset(reset), .clock(clock), 
        .sir(sir), .tester(tester));
    
    initial begin
    clock = 0;
        forever begin
            #1 clock = ~clock;
        end
    end
    initial begin
        #1000 $stop();
    end
    initial begin
        en = 1'b1;
        reset = 1'b1;
        #6;
        reset = 1'b0;
    end
endmodule
