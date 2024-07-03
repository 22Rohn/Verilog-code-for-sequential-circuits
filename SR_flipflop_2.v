`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 19:13:05
// Design Name: 
// Module Name: SR_flipflop_2
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


module SR_flipflop_2(q,qbar,s,r,clk );
  input s,r,clk;
  output reg q;
  output qbar;
  always @(posedge clk)  //positive edge triggered flipflop
  begin
    case({s,r})
     2'b00:q=q;
     2'b01:q=1'b0;    
     2'b10:q=1'b1;
     2'b11:q=1'bx;  //indeterminent value 
     endcase
    end
    assign qbar=~q; //complement of q
endmodule
