`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 04:33:21 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
    
    reg clock, reset, en;
    wire [10:0] out;
    counter11b dut(.clock(clock),
        .reset(reset), .en(en), .out(out));
    
    initial begin
        clock = 0;
        forever begin
            #1 clock = ~clock;
        end
    end
    
    initial begin
        reset = 1'b1;
        en = 1'b1;
        #2 reset = 1'b0;
        #20 
        reset = 1'b1;
        #2 reset = 1'b0;
        #20;
        $stop();
    end
    
endmodule
