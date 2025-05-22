`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 15:38:35
// Design Name: 
// Module Name: comparator
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


module comparator
#(parameter N = 12)
(
input  [N-1:0] a,
input [N-1:0] b,
output reg  [N-1:0] comp_out
 );
 
always@(a,b) begin
    if (a>b) begin
    comp_out <= a;
    end else
    if (a<b) begin
    comp_out <= b;
    end else 
    if (a == b) begin
    comp_out <= a;
    end
end

endmodule
