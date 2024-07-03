`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 19:51:19
// Design Name: 
// Module Name: tb_D_flipflop
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


module tb_D_flipflop;
 reg D,clk,en;
 wire q,qbar;
 D_flipflop uut(.D(D),.clk(clk),.en(en),.q(q),.qbar(qbar));
 initial begin
 clk=0;
  forever #10 clk=~clk;
 end
 initial begin
 D=0;en=0;
 #10 D=0;en=1;
 #10 D=1;en=0;
 #10 D=1;en=1;
 end
endmodule
