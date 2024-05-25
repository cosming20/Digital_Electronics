`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 02:33:44 PM
// Design Name: 
// Module Name: vowel_checker
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


module vowel_checker(
    input [7:0] data_in,
    output reg is_vowel
    );
    always@(*)begin
        is_vowel = 0;
        if (data_in == "a" || data_in == "e" || data_in == "i" || data_in == "o" || data_in == "u")
            is_vowel = 1;
        
    end
endmodule
