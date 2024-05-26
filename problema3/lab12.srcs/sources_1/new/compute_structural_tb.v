`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 09:09:17 PM
// Design Name: 
// Module Name: compute_behav_tb
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


module compute_structural_tb(

    );
    
    reg [7:0] in0, in1;
    
    wire [7:0] out;
    
    compute_structural dut(.in0(in0), .in1(in1), .out(out));
    
    initial begin
    
        in0 = 8'd10;
        in1 = 8'd12;
    
    #1
        in0 = 8'd07;
        in1 = 8'd03;
        
    #1
        in0 = 8'd8;
        in1 = 8'd10;
        
    #1
        in0 = 8'd05;
        in1 = 8'd06;   
    
    #1
    
        $stop();
    
    end
    
    
    
endmodule
