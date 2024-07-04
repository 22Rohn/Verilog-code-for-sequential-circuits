`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 18:08:18
// Design Name: 
// Module Name: T_flipflop
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
// Behavourial modelling
// input T, q and next state as output


module T_flipflop(q,clk,T);
 input T,clk; 
 output reg q;
 always @(posedge clk )
 begin
   case(T)
    1'bX:q=0; //for initial condition any value will  give output 0 after which it works properly. To avoid indeterminate state
    1'b0:q=q;
    1'b1:q=~q;
    endcase
   end
endmodule
