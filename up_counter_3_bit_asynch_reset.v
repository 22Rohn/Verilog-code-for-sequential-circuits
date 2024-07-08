`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 19:26:53
// Design Name: 
// Module Name: up_counter_3_bit_asynch_reset
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
// it has asynchronous pins such as reset .
// It is ripple counter(asynchronous counter)

module up_counter_3_bit_asynch_reset(p,clk,reset);
 input clk,reset;
 output [2:0]p;
 tff tf1(p[0],clk,reset);
 tff tf2(p[1],p[0],reset);
 tff tf3(p[2],p[1],reset);
endmodule

module tff(p,clk,reset);
 input clk,reset;
 output  p;
 wire a; //input to d flipflop
 dff df1(p,a,clk,reset); // t flipflop can be made from d flipflop and not gate
 not n1(a,p);
 endmodule
 
module dff(p,a,clk,reset);
 input a,clk,reset;
 output reg  p;
 always @(negedge clk or negedge reset) // with neg edge of clk , it does upcounting and at posedge of clk it does down counting
 begin
  if(reset==1'b1) // if reset is activated it brings output to zero
    p=1'b0;
   else
    p=a;
  end
 endmodule
 
 