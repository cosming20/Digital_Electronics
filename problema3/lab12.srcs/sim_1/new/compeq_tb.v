`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 08:58:48 PM
// Design Name: 
// Module Name: compeq_tb
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


module compeq_tb(

    );
    
    reg [7:0] in0, in1;
    
    wire out;
    
    compeq dut(.in0(in0), .in1(in1), .out(out));
    
    initial begin
    
        in0 = 8'd10;
        in1 = 8'd11;
        
        #1
        
        in1 = 8'd10;
        
        #1
        in0 = 8'd03;
        in1 = 8'd03;
        
        #1
        in0 = 8'd04;
        in1 = 8'd05;
        
        #1
        in1 = 8'd04;
        
        #1
        
        $stop();
    
    end
    
endmodule
