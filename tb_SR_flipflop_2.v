`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 19:15:31
// Design Name: 
// Module Name: tb_SR_flipflop_2
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


module tb_SR_flipflop_2;
 reg s,r,clk;
 wire q,qbar;
 SR_flipflop_2 uut(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
 initial begin
  clk=0;
   forever #10 clk=~clk; // generating clk 
  end
  initial begin
  #0 s=1'b0;r=1'b0;
  #10 s=1'b0;r=1'b1;
  #10 s=1'b1;r=1'b0;
  #10 s=1'b1;r=1'b1;
  end
 

endmodule
