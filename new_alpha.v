`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT MANDI
// Engineer: Anurag Sharma
// 
// Create Date: 07.05.2024 15:37:32
// Design Name: 
// Module Name: alpha_dash
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

// FORWARD TRACING

module new_alpha  
#(parameter N = 12)
(
input clk,
input rst,
input start,
input [N-1:0] alpha_0,
input [N-1:0] alpha_1,
input [N-1:0] alpha_2,
input [N-1:0] alpha_3,
input [N-1:0] alpha_4,
input [N-1:0] alpha_5,
input [N-1:0] alpha_6,
input [N-1:0] alpha_7,

output [N-1 : 0] b_0,
output [N-1 : 0] b_1,
output [N-1 : 0] b_2,
output [N-1 : 0] b_3,
output [N-1 : 0] b_4,
output [N-1 : 0] b_5,
output [N-1 : 0] b_6,
output [N-1 : 0] b_7 

 );




 wire [N-1:0] alpha_0_d;
 wire [N-1:0] alpha_1_d;
 wire  [N-1:0] alpha_2_d;
 wire  [N-1:0] alpha_3_d;
 wire  [N-1:0] alpha_4_d;
 wire  [N-1:0] alpha_5_d;
 wire  [N-1:0] alpha_6_d;
 wire [N-1:0] alpha_7_d;


// new_alpha_values from MUX after start = 1
    reg [N-1:0] new_alpha_0;
    reg [N-1:0] new_alpha_1;
    reg [N-1:0] new_alpha_2;
    reg [N-1:0] new_alpha_3;
    reg [N-1:0] new_alpha_4;
    reg [N-1:0] new_alpha_5;
    reg [N-1:0] new_alpha_6;
    reg [N-1:0] new_alpha_7;



    // for ALPHA CALCULATION
 reg [N-1:0] alpha_0_out1 ;
 reg [N-1:0] alpha_0_out2;
 reg [N-1:0] alpha_1_out1;
 reg [N-1:0] alpha_1_out2;
 reg [N-1:0] alpha_2_out1;
 reg [N-1:0] alpha_2_out2;
 reg [N-1:0] alpha_3_out1;
 reg [N-1:0] alpha_3_out2;
 reg [N-1:0] alpha_4_out1;
 reg [N-1:0] alpha_4_out2;
 reg [N-1:0] alpha_5_out1;
 reg [N-1:0] alpha_5_out2;
 reg [N-1:0] alpha_6_out1;
 reg [N-1:0] alpha_6_out2;
 reg [N-1:0] alpha_7_out1;
 reg [N-1:0] alpha_7_out2;
 /////////////////////////
 

 
// reg [N-1:0] alpha_0 = 12'b000000000001;
// reg [N-1:0] alpha_1 = 12'b000000000010;
// reg [N-1:0] alpha_2 = 12'b000000000011;
// reg [N-1:0] alpha_3 = 12'b000000000100;
// reg [N-1:0] alpha_4 = 12'b000000000101;
// reg [N-1:0] alpha_5 = 12'b000000000110;
// reg [N-1:0] alpha_6 = 12'b000000000111;
// reg [N-1:0] alpha_7 = 12'b000000001000;
    
 reg [1:0] gama = 2'b10; 
 reg [N-1:0] mem_0 [0:13];
 reg [N-1:0] mem_1 [0:13];
 reg [N-1:0] mem_2 [0:13];
 reg [N-1:0] mem_3 [0:13];
 reg [N-1:0] mem_4 [0:13];
 reg [N-1:0] mem_5 [0:13];
 reg [N-1:0] mem_6 [0:13];
 reg [N-1:0] mem_7 [0:13];
 
 reg [3:0] addr;
 
 
 wire [N-1:0] mux0;
 wire [N-1:0] mux1;
 wire [N-1:0] mux2;
 wire [N-1:0] mux3;
 wire [N-1:0] mux4;
 wire [N-1:0] mux5;
 wire [N-1:0] mux6;
 wire [N-1:0] mux7;
 
//wire [N-1 : 0] b_0;
   
    
 assign mux0 = start ? new_alpha_0 : alpha_0;
 assign mux1 = start ? new_alpha_1 : alpha_1;
 assign mux2 = start ? new_alpha_2 : alpha_2;
 assign mux3 = start ? new_alpha_3 : alpha_3;
 assign mux4 = start ? new_alpha_4 : alpha_4;
 assign mux5 = start ? new_alpha_5 : alpha_5;
 assign mux6 = start ? new_alpha_6 : alpha_6;
 assign mux7 = start ? new_alpha_7 : alpha_7;
    
    
    
    
    always @(posedge clk) begin
        alpha_0_out1 <= mux0 + gama;
        alpha_0_out2 <= mux4 + gama;
        alpha_1_out1 <= mux0 + gama;
        alpha_1_out2 <= mux4 + gama;
        alpha_2_out1 <= mux1 + gama;
        alpha_2_out2 <= mux5 + gama;
        alpha_3_out1 <= mux1 + gama;
        alpha_3_out2 <= mux5 + gama;
        alpha_4_out1 <= mux2 + gama;
        alpha_4_out2 <= mux6 + gama;
        alpha_5_out1 <= mux2 + gama;
        alpha_5_out2 <= mux6 + gama;
        alpha_6_out1 <= mux3 + gama;
        alpha_6_out2 <= mux7 + gama;
        alpha_7_out1 <= mux3 + gama;
        alpha_7_out2 <= mux7 + gama;
    end
    
// Comparator Block
comparator comp_0
(
.a(alpha_0_out1),
.b(alpha_0_out2),
.comp_out(alpha_0_d)
 );
 
 comparator comp_1 
(
.a(alpha_1_out1),
.b(alpha_1_out2),
.comp_out(alpha_1_d)
 );
 
 comparator comp_2 
(
.a(alpha_2_out1),
.b(alpha_2_out2),
.comp_out(alpha_2_d)
 );
 
 comparator comp_3 
(
.a(alpha_3_out1),
.b(alpha_3_out2),
.comp_out(alpha_3_d)
 );
 
 comparator comp_4 
(
.a(alpha_4_out1),
.b(alpha_4_out2),
.comp_out(alpha_4_d)
 );
 
 comparator comp_5 
(
.a(alpha_5_out1),
.b(alpha_5_out2),
.comp_out(alpha_5_d)
 );
 
 comparator comp_6 
(
.a(alpha_6_out1),
.b(alpha_6_out2),
.comp_out(alpha_6_d)
 );
 
 comparator comp_7 
(
.a(alpha_7_out1),
.b(alpha_7_out2),
.comp_out(alpha_7_d)
 );
 
 
 always@(posedge clk) begin
 
    new_alpha_0 <= alpha_0_d;
    new_alpha_1 <= alpha_1_d;
    new_alpha_2 <= alpha_2_d;
    new_alpha_3 <= alpha_3_d;
    new_alpha_4 <= alpha_4_d;
    new_alpha_5 <= alpha_5_d;
    new_alpha_6 <= alpha_6_d;
    new_alpha_7 <= alpha_7_d;
       
 end
 
 always@(posedge clk) begin
    if (!rst) begin
        mem_0[addr] <= alpha_0_d;
        mem_1[addr] <= alpha_1_d;
        mem_2[addr] <= alpha_2_d;
        mem_3[addr] <= alpha_3_d;
        mem_4[addr] <= alpha_4_d;
        mem_5[addr] <= alpha_5_d;
        mem_6[addr] <= alpha_6_d;
        mem_7[addr] <= alpha_7_d;
    end
 end
 
 always@(posedge clk) begin
     if (rst) begin
        addr <= 0;
     end else
     if (start) begin
        addr <= addr + 1;
     end
 end
 

assign b_0 = mem_0[13];
assign b_1 = mem_1[13];
assign b_2 = mem_2[13];
assign b_3 = mem_3[13];
assign b_4 = mem_4[13];
assign b_5 = mem_5[13];
assign b_6 = mem_6[13];
assign b_7 = mem_7[13];
 
endmodule

