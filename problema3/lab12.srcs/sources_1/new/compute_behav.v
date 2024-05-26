`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 11:57:37 AM
// Design Name: 
// Module Name: compute_behav
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


module compute_behav(
    input [7:0] in0,
    input [7:0] in1,
    output reg [7:0] out
    );
    
    always@(*)begin
    
        if(in0[0]) begin
            out = ((in1 << 1) + in0 - 1);
        end
        else begin
            out = ((in1 << 1) + in0 + 3);
        end
    
    end
    
endmodule
