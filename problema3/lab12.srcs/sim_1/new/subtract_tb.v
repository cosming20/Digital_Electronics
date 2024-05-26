`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 08:53:03 PM
// Design Name: 
// Module Name: subtract_tb
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


module subtract_tb(
    );
    
    reg [10:0] in0, in1;
    
    wire [10:0] out;
    
    subtract dut(.in0(in0), .in1(in1), .out(out));
    
    initial begin
        in0 = 8'd10;
        in1 = 8'd03;
        #1
        in0 = 8'd05;
        in1 = 8'd07;
        #1
        in0 = 8'd00;
        in1 = 8'd03;
        #1
        $stop();
        
    end
    
endmodule
