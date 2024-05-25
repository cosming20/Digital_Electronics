`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2024 02:33:44 PM
// Design Name: 
// Module Name: pass_check
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


module pass_check(
    input clk,
    input reset,
    input [7:0] data_in,
    input en,
    output pass_ok
    );
    
localparam idle = 2'b00;
localparam stareaC = 2'b01;
localparam stareaA = 2'b10;
localparam stareaS = 2'b11;
reg [1:0] state, state_next; 
    always@(posedge clk)begin
        if (reset)
            state <= idle;
        else 
            state <= state_next;
    end
    
always@(*)begin
 case(state)
    idle:begin
            if (en == 0)
                state_next <= idle;
            else begin
                if (data_in != "c")
                    state_next <= idle;
                else
                    state_next <= stareaC;
            end
         end
    stareaC:begin
            if (en == 0)
                state_next <= idle;
            else begin
                if (data_in != "a")
                    state_next <= idle;
                else
                    state_next <= stareaA;
            end
         end
    stareaA:begin
            if (en == 0)
                state_next <= stareaA;
            else begin
                if (data_in != "s")
                    state_next <= idle;
                else
                    state_next <= stareaS;
            end
         end
     stareaS:begin
            if (en == 0)
                state_next <= stareaS;
            else begin
                if (data_in != "c")
                    state_next <= idle;
                else
                    state_next <= stareaC;
            end
         end 
        default: state_next = idle;           
  endcase
end
    assign pass_ok = (state == stareaS)? 1 : 0;
endmodule
