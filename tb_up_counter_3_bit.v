`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 18:46:41
// Design Name: 
// Module Name: tb_up_counter_3_bit
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


module tb_up_counter_3_bit;
 reg A,B,C,clk;
 wire [2:0]Y;
 integer i;
 up_counter_3_bit uut(.A(A),.B(B),.C(C),.clk(clk),.Y(Y));
 initial begin
 clk=0;
  forever #40 clk=~clk;
 end
 initial begin
   for(i=0;i<9;i=i+1)
   begin
    {A,B,C}=i;
    #100;
   end
  end
endmodule
