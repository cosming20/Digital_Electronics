`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 03:53:35 PM
// Design Name: 
// Module Name: reg_tb
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


module reg_tb(

    );
    
    reg clock, en, reset;
    reg [7:0] in;
    wire [7:0] out;
    
    
    reg8b dut(.clock(clock), .en(en),
        .reset(reset), .in(in), .out(out));
    
    initial begin
        en = 1'b0;
        clock = 1'b0;
        reset = 1'b0;
        forever begin
            #1 clock = ~clock;
        end     
    end
    
    initial begin
    
    
    reset = 1'b1;
    #1 reset = 1'b0;
    en = 1'b1;
    #3 in = 8'h02;
    #2 in = 8'h04;
    
    #3 $stop();
       
        
    end
endmodule
