`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 07:56:46 PM
// Design Name: 
// Module Name: ram_tb
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


module ram_tb(

    );
    reg clock, en;
    reg [10:0] addr_r, addr_w;
    reg [7:0] data_w;
    wire [7:0] data_r;
    ram2048x8b dut(.clock(clock), .en(en), .addr_w(addr_w), .addr_r(addr_r),
        .data_w(data_w), .data_r(data_r));
    initial begin
        clock = 0;
        forever begin
            #1 clock = ~clock;
        end 
    end
    
    initial begin
    
    //writing
    
        en = 1'b1;
        addr_w = 11'h000;
        data_w = 8'h01;
        addr_r = 11'h000;
        #2;
        en = 1'b0;
        addr_w = 11'h000;
        data_w = 8'h02;
        addr_r = 11'h000;
        #2;
        en = 1'b1;
        addr_w = 11'h001;
        data_w = 8'h03;
        addr_r = 11'h001;
        #2;
        en = 1'b0;
        addr_w = 11'h001;
        data_w = 8'h04;
        addr_r = 11'h001;
        
   //reading 
        
        #2;
        addr_r = 11'h000;
        #2
        addr_r = 11'h001;
        
   //second writing part
        #2
        en = 1'b1;
        addr_w = 11'h000;
        data_w = 8'h04;
        addr_r = 11'h000;
        
        
        #2
        addr_w = 11'h001;
        data_w = 8'h05;
        addr_r = 11'h001;
        
        //separate reading
        
        #2
        
        en = 1'b0;
        
        #2
        
        addr_r = 11'h000;
        
        #2
        
        addr_r = 11'h001;
        
        
        #5 $stop();
    end
    
endmodule