`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 15:18:07
// Design Name: 
// Module Name: tb
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


//module tb();
    
//    reg ck;
//    reg clk = 0;
//    reg reset;
//    reg set;
//    reg [2:0] enable;
    
//    wire  zk;

//encoder uut(
    
//    .ck(ck),
//    .clk(clk),
//    .reset(reset),
//    .set(set),
//    .enable(enable),   
//    .zk(zk)
//    );
   
//   always #10 clk = ~clk;
   
//   initial begin
//   reset = 1;
//   #50 reset = 0;
//   #10
//   // for S0
//   enable = 3'b000;
//   set = 1;
//   #50
//   set = 0;
//   ck = 0 ;
   
//   #20
//   ck = 1;
   
//   // For S1
//   #10
//   enable = 3'b001;
//   set = 1;
//   #50
//   set = 0;
//   ck = 0 ;
   
//   #50
//   ck = 1;
   
//   //For S2
   
//   #10
//   enable = 3'b010;
//   set = 1;
//   #50
//   set = 0;
//   ck = 0 ;
   
//   #50
//   ck = 1;
   
   
   
   
   
//   end 
    

//endmodule


//module new_alpha_tb ();
//parameter N = 12;
// reg clk = 0;
// reg rst;
// reg start;
//  reg [N-1:0] alpha_0;
// reg [N-1:0] alpha_1;
// reg [N-1:0] alpha_2 ;
// reg [N-1:0] alpha_3 ;
// reg [N-1:0] alpha_4 ;
// reg [N-1:0] alpha_5 ;
// reg [N-1:0] alpha_6 ;
// reg [N-1:0] alpha_7 ;
// wire [N-1 : 0] b_0;
//wire [N-1 : 0] b_1;
//wire [N-1 : 0] b_2;
//wire [N-1 : 0] b_3;
//wire [N-1 : 0] b_4;
//wire [N-1 : 0] b_5;
//wire [N-1 : 0] b_6;
//wire [N-1 : 0] b_7; 

//new_alpha uut
//(
//clk,
//rst,
//start,
//alpha_0,
//alpha_1,
//alpha_2,
//alpha_3,
//alpha_4,
//alpha_5,
//alpha_6,
//alpha_7,

//b_0,
//b_1,
//b_2,
//b_3,
//b_4,
//b_5,
//b_6,
//b_7 

// );
 
// always #5 clk = ~clk;
 
// initial begin
//    rst = 1;
//    #10
//    rst = 0;
//    start = 0;
//  alpha_0 = 12'b000000000001;
// alpha_1 = 12'b000000000010;
// alpha_2 = 12'b000000000011;
// alpha_3 = 12'b000000000100;
// alpha_4 = 12'b000000000101;
// alpha_5 = 12'b000000000110;
// alpha_6 = 12'b000000000111;
// alpha_7 = 12'b000000001000;
    
//    #20
    
//    start = 1;
  
//  #145
//  $finish;
   
// end
 
 
// endmodule


//module comparator_tb ();
//parameter N = 12;
//reg [N-1:0] a;
//reg [N-1:0] b;
//wire [N-1:0] comp_out;


//comparator tut
//(
//a,
//b,
//comp_out
// );

//initial begin
//    a = 'd16;
//    b = 'd16;
//    #5
//    a = 'd18;
//    b = 'd18;
    
//    #5
//    a = 'd19;
//    b = 'd16;
    
//    #5
//    a = 'd13;
//    b = 'd13;
    
//    #5
//    a = 'd16;
//    b = 'd16;
    
//end

//endmodule



module dash_beta_tb ();
parameter N = 12;
 reg clk = 0;
 reg rst;
 reg start;
 reg en;
 reg [N-1:0] alpha_0;
 reg [N-1:0] alpha_1;
 reg [N-1:0] alpha_2 ;
 reg [N-1:0] alpha_3 ;
 reg [N-1:0] alpha_4 ;
 reg [N-1:0] alpha_5 ;
 reg [N-1:0] alpha_6 ;
 reg [N-1:0] alpha_7 ;

BETA_DASH uut
(
 clk,
 rst,
 start,
 en,
alpha_0,
alpha_1,
alpha_2,
alpha_3,
alpha_4,
alpha_5,
alpha_6,
alpha_7
 

 );
 
 always #5 clk = ~clk;
 
 initial begin
    rst = 1;
    #10
    rst = 0;
    start = 0;
     alpha_0 = 12'b000000000001;
 alpha_1 = 12'b000000000010;
 alpha_2 = 12'b000000000011;
 alpha_3 = 12'b000000000100;
 alpha_4 = 12'b000000000101;
 alpha_5 = 12'b000000000110;
 alpha_6 = 12'b000000000111;
 alpha_7 = 12'b000000001000;
    
    #25
    
    start = 1;
    
  
  #145
  en = 0; 
  
  #25
  en =1;
  
  #75
  $finish;
   
 end
 
 
 endmodule
