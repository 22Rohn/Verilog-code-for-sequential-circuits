`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 18:32:44
// Design Name: 
// Module Name: up_counter_3_bit
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
//Behavourial modelling 
// truth table is drawn and from it i/p and o/p equations are derived
//A,B,C-INPUT and Y -output

module up_counter_3_bit(Y,A,B,C,clk);
 input A,B,C,clk;
 output reg [2:0]Y;
 always @(posedge clk)
 begin
   case({A,B,C})
    3'b000:Y=3'b001;
    3'b001:Y=3'b010;
    3'b010:Y=3'b011;
    3'b011:Y=3'b100;
    3'b100:Y=3'b101;
    3'b101:Y=3'b110;
    3'b110:Y=3'b111;
    3'b111:Y=3'b000;
    endcase
   end
endmodule
