`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 18:15:22
// Design Name: 
// Module Name: tb_T_flipflop
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


module tb_T_flipflop;
 reg T,clk;
 wire q;
 T_flipflop uut(.T(T),.clk(clk),.q(q));
 always begin
 clk=0;
  forever #40 clk=~clk;
 end
 always begin
 #100 T=0;
 #100 T=1; //Toggle
 end
endmodule
