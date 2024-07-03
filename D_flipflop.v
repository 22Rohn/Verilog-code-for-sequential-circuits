`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 19:40:39
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop(D,clk,en,q,qbar);
 input D,clk,en; // en-enable pin
 output reg q;
 output qbar;
 always @(posedge clk)
 begin
   case({D,en})
    2'b00:q=q;  //enable pin -0 .so it holds previous state
    2'b01:q=1'b0;
    2'b10:q=q;
    2'b11:q=1'b1;
    endcase
  end
  assign qbar=~q;
endmodule
