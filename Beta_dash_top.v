`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Mandi
// Engineer: Anurag Sharma
// 
// Create Date: 07.05.2024 17:31:38
// Design Name: 
// Module Name: BETA_DASH
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


module BETA_DASH
#(parameter N = 12)
(
input clk,
input rst,
input start,
input en,
input [N-1:0] alpha_0,
input [N-1:0] alpha_1,
input [N-1:0] alpha_2,
input [N-1:0] alpha_3,
input [N-1:0] alpha_4,
input [N-1:0] alpha_5,
input [N-1:0] alpha_6,
input [N-1:0] alpha_7,
output [N-1:0] b_8_0,
output [N-1:0] b_8_1,
output [N-1:0] b_8_2,
output [N-1:0] b_8_3,
output [N-1:0] b_8_4,
output [N-1:0] b_8_5,
output [N-1:0] b_8_6,
output [N-1:0] b_8_7,
output [N-1:0] b_1_0
 );



 

 wire [N-1:0] beta_0;
 wire [N-1:0] beta_1;
 wire [N-1:0] beta_2; 
 wire [N-1:0] beta_3;
 wire [N-1:0] beta_4;
 wire [N-1:0] beta_5;
 wire [N-1:0] beta_6; 
 wire [N-1:0] beta_7;

new_alpha  for_beta
(
.clk(clk),
.rst(rst),
.start(start),
.alpha_0(alpha_0),
.alpha_1(alpha_1),
.alpha_2(alpha_2),
.alpha_3(alpha_3),
.alpha_4(alpha_4),
.alpha_5(alpha_5),
.alpha_6(alpha_6),
.alpha_7(alpha_7),
.b_0(beta_0),
.b_1(beta_1),
.b_2(beta_2),
.b_3(beta_3),
.b_4(beta_4),
.b_5(beta_5),
.b_6(beta_6),
.b_7(beta_7) 
 );

 wire [N-1:0] beta_0_d;
 wire [N-1:0] beta_1_d;
 wire  [N-1:0] beta_2_d;
 wire  [N-1:0] beta_3_d;
 wire  [N-1:0] beta_4_d;
 wire  [N-1:0] beta_5_d;
 wire  [N-1:0] beta_6_d;
 wire [N-1:0] beta_7_d;


// new_beta_values from MUX after start = 1
    reg [N-1:0] new_beta_0;
    reg [N-1:0] new_beta_1;
    reg [N-1:0] new_beta_2;
    reg [N-1:0] new_beta_3;
    reg [N-1:0] new_beta_4;
    reg [N-1:0] new_beta_5;
    reg [N-1:0] new_beta_6;
    reg [N-1:0] new_beta_7;


// //////
 reg [N-1:0] mem_b0 [0:7];
 reg [N-1:0] mem_b1 [0:7];
 reg [N-1:0] mem_b2 [0:7];
 reg [N-1:0] mem_b3 [0:7];
 reg [N-1:0] mem_b4 [0:7];
 reg [N-1:0] mem_b5 [0:7];
 reg [N-1:0] mem_b6 [0:7];
 reg [N-1:0] mem_b7 [0:7];
 

 reg [N-1:0] beta_0_out1 ;
 reg [N-1:0] beta_0_out2;
 reg [N-1:0] beta_1_out1;
 reg [N-1:0] beta_1_out2;
 reg [N-1:0] beta_2_out1;
 reg [N-1:0] beta_2_out2;
 reg [N-1:0] beta_3_out1;
 reg [N-1:0] beta_3_out2;
 reg [N-1:0] beta_4_out1;
 reg [N-1:0] beta_4_out2;
 reg [N-1:0] beta_5_out1;
 reg [N-1:0] beta_5_out2;
 reg [N-1:0] beta_6_out1;
 reg [N-1:0] beta_6_out2;
 reg [N-1:0] beta_7_out1;
 reg [N-1:0] beta_7_out2;
 reg [2:0] addr;
    
 reg [1:0] gama = 'd2; 
 
 wire [N-1:0] mux0;
 wire [N-1:0] mux1;
 wire [N-1:0] mux2;
 wire [N-1:0] mux3;
 wire [N-1:0] mux4;
 wire [N-1:0] mux5;
 wire [N-1:0] mux6;
 wire [N-1:0] mux7;
    
    
 assign mux0 = en ? new_beta_0 : beta_0;
 assign mux1 = en ? new_beta_1 : beta_1;
 assign mux2 = en ? new_beta_2 : beta_2;
 assign mux3 = en ? new_beta_3 : beta_3;
 assign mux4 = en ? new_beta_4 : beta_4;
 assign mux5 = en ? new_beta_5 : beta_5;
 assign mux6 = en ? new_beta_6 : beta_6;
 assign mux7 = en ? new_beta_7 : beta_7;
    
    
    
    
    always @(posedge clk) begin
        beta_0_out1 <= mux0 + gama;
        beta_0_out2 <= mux1 + gama;
        beta_1_out1 <= mux2 + gama;
        beta_1_out2 <= mux3 + gama;
        beta_2_out1 <= mux4 + gama;
        beta_2_out2 <= mux5 + gama;
        beta_3_out1 <= mux6 + gama;
        beta_3_out2 <= mux7 + gama;
        beta_4_out1 <= mux0 + gama;
        beta_4_out2 <= mux1 + gama;
        beta_5_out1 <= mux2 + gama;
        beta_5_out2 <= mux3 + gama;
        beta_6_out1 <= mux4 + gama;
        beta_6_out2 <= mux5 + gama;
        beta_7_out1 <= mux6 + gama;
        beta_7_out2 <= mux7 + gama;
    end
    
// Comparator Block
comparator comp_0
(
.a(beta_0_out1),
.b(beta_0_out2),
.comp_out(beta_0_d)
 );
 
 comparator comp_1 
(
.a(beta_1_out1),
.b(beta_1_out2),
.comp_out(beta_1_d)
 );
 
 comparator comp_2 
(
.a(beta_2_out1),
.b(beta_2_out2),
.comp_out(beta_2_d)
 );
 
 comparator comp_3 
(
.a(beta_3_out1),
.b(beta_3_out2),
.comp_out(beta_3_d)
 );
 
 comparator comp_4 
(
.a(beta_4_out1),
.b(beta_4_out2),
.comp_out(beta_4_d)
 );
 
 comparator comp_5 
(
.a(beta_5_out1),
.b(beta_5_out2),
.comp_out(beta_5_d)
 );
 
 comparator comp_6 
(
.a(beta_6_out1),
.b(beta_6_out2),
.comp_out(beta_6_d)
 );
 
 comparator comp_7 
(
.a(beta_7_out1),
.b(beta_7_out2),
.comp_out(beta_7_d)
 );
 
 
 always@(beta_7_d) begin
 
    new_beta_0 <= beta_0_d;
    new_beta_1 <= beta_1_d;
    new_beta_2 <= beta_2_d;
    new_beta_3 <= beta_3_d;
    new_beta_4 <= beta_4_d;
    new_beta_5 <= beta_5_d;
    new_beta_6 <= beta_6_d;
    new_beta_7 <= beta_7_d;
 end

always@(posedge clk) begin
    if (!rst) begin
        mem_b0[addr] <= beta_0_d;
        mem_b1[addr] <= beta_1_d;
        mem_b2[addr] <= beta_2_d;
        mem_b3[addr] <= beta_3_d;
        mem_b4[addr] <= beta_4_d;
        mem_b5[addr] <= beta_5_d;
        mem_b6[addr] <= beta_6_d;
        mem_b7[addr] <= beta_7_d;
    end
 end
 
 always@(posedge clk) begin
     if (rst) begin
        addr <= 0;
     end else
     if (en) begin
        addr <= addr + 1;
     end
 end

// beta_1dash values;
assign b_1_0 = mem_b0[0];
//assign b_1_1 = mem_b1[7];
//assign b_1_2 = mem_b2[7];
//assign b_1_3 = mem_b3[7];
//assign b_1_4 = mem_b4[7];
//assign b_1_5 = mem_b5[7];
//assign b_1_6 = mem_b6[7];
//assign b_1_7 = mem_b7[7];

// beta_8dash values
assign b_8_0 = mem_b0[7];
assign b_8_1 = mem_b1[7];
assign b_8_2 = mem_b2[7];
assign b_8_3 = mem_b3[7];
assign b_8_4 = mem_b4[7];
assign b_8_5 = mem_b5[7];
assign b_8_6 = mem_b6[7];
assign b_8_7 = mem_b7[7];
   
    
endmodule
