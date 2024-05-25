`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 05:27:38 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input reset,
    input en,
    input [7:0] data_in,
    output [7:0] data_read,
    output [7:0] consonants,
    output [7:0] vowels,
    output [7:0] data_read2,
    output check
    );
    wire [5:0] wire_counter;
    wire [5:0] wire_reg;
    wire wire_checker;
    
    pass_check pass_checker (.en(en),.data_in(data_in),.clk(clk),.reset(reset),.pass_ok(check));
    counter_6b counter (.clk(clk),.reset(reset),.en(en),.count(wire_counter));
    reg_6b registru (.clk(clk),.reset(reset),.in(wire_counter),.out(wire_reg));
    vowel_checker vo_checker (.data_in(data_in),.is_vowel(wire_checker));
    ram_consoane ram_cons (.addr(wire_reg),.w_en(((~wire_checker)&en)),.w_data(data_in),.r_data(data_read));
    ram_vocale ram_voc (.addr(wire_reg),.w_en(((wire_checker)&en)),.w_data(data_in),.r_data(data_read2));
    demux demux (.in(data_in),.sel(wire_checker),.out0(consonants),.out1(vowels));
    
endmodule
