`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 20:29:58
// Design Name: 
// Module Name: tb_up_counter_asynch_reset
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


module tb_up_counter_asynch_reset;
 reg clk,reset;
 wire [2:0]p;
 up_counter_3_bit_asynch_reset uut(.clk(clk),.reset(reset),.p(p));
 initial begin
 clk=0;
  forever #40 clk=~clk;
 end
 initial begin
 reset =1;
 #20 reset=0;
 #60 reset =0;
 #100 reset =0;
 end
endmodule
