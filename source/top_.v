`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 03:25:18 PM
// Design Name: 
// Module Name: a_3
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


module top_(input clk, reset, input signed [15:0] x0,x1,x2,x3,x4,x5,x6,x7,   
           output signed [15:0] y0_re,y0_im,y1_re, y1_im, y2_re, y2_im, y3_re, y3_im, y4_re, y4_im, y5_re, y5_im, y6_re, y6_im, y7_re, y7_im

    );
    //wire [15:0] x0,x1,x2,x3,x4,x5,x6,x7;
    
    wire signed [15:0] y0,y1, y2, y3, y4, y5, y6, y7;
    wire en;
    wire en_;
    wire en_1;
    wire en_2;
    wire en__;
    wire signed [15:0] y0_re_,y0_im_,y1_re_, y1_im_, y2_re_, y2_im_, y3_re_, y3_im_, y4_re_, y4_im_, y5_re_, y5_im_, y6_re_, y6_im_, y7_re_, y7_im_;
    wire signed [15:0] y0_re_1,y0_im_1,y1_re_1, y1_im_1, y2_re_1, y2_im_1, y3_re_1, y3_im_1, y4_re_1, y4_im_1, y5_re_1, y5_im_1, y6_re_1, y6_im_1, y7_re_1, y7_im_1;
    wire signed [15:0] y0_re_2,y0_im_2,y1_re_2, y1_im_2, y2_re_2, y2_im_2, y3_re_2, y3_im_2, y4_re_2, y4_im_2, y5_re_2, y5_im_2, y6_re_2, y6_im_2, y7_re_2, y7_im_2;
    wire signed [15:0] y0_re_3,y0_im_3,y1_re_3, y1_im_3, y2_re_3, y2_im_3, y3_re_3, y3_im_3, y4_re_3, y4_im_3, y5_re_3, y5_im_3, y6_re_3, y6_im_3, y7_re_3, y7_im_3;
    
    bf_0 du (
         .clk(clk),
         .reset(reset),
         .x0(x0),                        
         .x1(x4),
         .y0(y0),
         .y1(y1),
         .en()
         );
       
     bf_0 du_ (
         .clk(clk),
         .reset(reset),
         .x0(x2),
         .x1(x6),
         .y0(y2),
         .y1(y3),
         .en(en)
         );   
      
      bf_0 du_1 (
         .clk(clk),
         .reset(reset),
         .x0(x1),
         .x1(x5),
         .y0(y4),
         .y1(y5),
         .en()
         );
         
      bf_0 du_2 (
         .clk(clk),
         .reset(reset),
         .x0(x3),
         .x1(x7),
         .y0(y6),
         .y1(y7),
         .en()
         ); 
            
      bf_1 du_3(
          .clk(clk),
          .reset(reset),
          .en(en),
          .x0(y0),
          .x1(y1),
          .x2(y2),
          .x3(y3),
          .y0_re(y0_re_),
          .y0_im(y0_im_),
          .y1_re(y1_re_),
          .y1_im(y1_im_),
          .y2_re(y2_re_),
          .y2_im(y2_im_),
          .y3_re(y3_re_),
          .y3_im(y3_im_),
          .en_(en_)
          );

         bf_1 du_4(
          .clk(clk),
          .reset(reset),
          .en(en),
          .x0(y4),
          .x1(y5),
          .x2(y6),
          .x3(y7),
          .y0_re(y4_re_),
          .y0_im(y4_im_),
          .y1_re(y5_re_),
          .y1_im(y5_im_),
          .y2_re(y6_re_),
          .y2_im(y6_im_),
          .y3_re(y7_re_),
          .y3_im(y7_im_),
          .en_()
          );
          
         bf_2 du_5(
             .clk(clk),
             .reset(reset),
             .en(en_),
             .x0_re(y0_re_),
             .x0_im(y0_im_),
             .x1_re(y1_re_),
             .x1_im(y1_im_),
             .x2_re(y2_re_),
             .x2_im(y2_im_),
             .x3_re(y3_re_),
             .x3_im(y3_im_),
             .x4_re(y4_re_),
             .x4_im(y4_im_),
             .x5_re(y5_re_),
             .x5_im(y5_im_),
             .x6_re(y6_re_),
             .x6_im(y6_im_),
             .x7_re(y7_re_),
             .x7_im(y7_im_),
             .y0_re(y0_re_1),
             .y0_im(y0_im_1),
             .y1_re(y1_re_1),
             .y1_im(y1_im_1), 
             .y2_re(y2_re_1), 
             .y2_im(y2_im_1), 
             .y3_re(y3_re_1),
             .y3_im(y3_im_1),
             .y4_re(y4_re_1), 
             .y4_im(y4_im_1), 
             .y5_re(y5_re_1), 
             .y5_im(y5_im_1), 
             .y6_re(y6_re_1), 
             .y6_im(y6_im_1),
             .y7_re(y7_re_1), 
             .y7_im(y7_im_1),
             .en_(en__)         
             );
              
          ifft_ du__(
             .clk(clk),
             .reset(reset),  
             .en(en__),
             .x0_re(y0_re_1),
             .x0_im(y0_im_1),
             .x1_re(y1_re_1),
             .x1_im(y1_im_1),
             .x2_re(y2_re_1),
             .x2_im(y2_im_1),
             .x3_re(y3_re_1),
             .x3_im(y3_im_1),
             .x4_re(y4_re_1),
             .x4_im(y4_im_1),
             .x5_re(y5_re_1),
             .x5_im(y5_im_1),
             .x6_re(y6_re_1),
             .x6_im(y6_im_1),
             .x7_re(y7_re_1),
             .x7_im(y7_im_1),
             .y0_re(y0_re_2),
             .y0_im(y0_im_2),
             .y1_re(y1_re_2),
             .y1_im(y1_im_2), 
             .y2_re(y2_re_2), 
             .y2_im(y2_im_2), 
             .y3_re(y3_re_2),
             .y3_im(y3_im_2),
             .y4_re(y4_re_2), 
             .y4_im(y4_im_2), 
             .y5_re(y5_re_2), 
             .y5_im(y5_im_2), 
             .y6_re(y6_re_2), 
             .y6_im(y6_im_2),
             .y7_re(y7_re_2), 
             .y7_im(y7_im_2),
             .en_(en_1)
             );
             
             
         ifft_1 du__1(
          .clk(clk),
          .reset(reset),
          .en(en_1),
          .x0(y0_re_2),
          .x0_im(y0_im_2),
          .x1(y1_re_2),
          .x1_im(y1_im_2),
          .x2(y2_re_2),
          .x2_im(y2_im_2),
          .x3(y3_re_2),
          .x3_im(y3_im_2),
          .y0_re(y0_re_3),
          .y0_im(y0_im_3),
          .y1_re(y1_re_3),
          .y1_im(y1_im_3),
          .y2_re(y2_re_3),
          .y2_im(y2_im_3),
          .y3_re(y3_re_3),
          .y3_im(y3_im_3),
          .en_(en_2)
          );    
             
        ifft_1 du__2(
          .clk(clk),
          .reset(reset),
          .en(en_1),
          .x0(y4_re_2),
          .x0_im(y4_im_2),
          .x1(y5_re_2),
          .x1_im(y5_im_2),
          .x2(y6_re_2),
          .x2_im(y6_im_2),
          .x3(y7_re_2),
          .x3_im(y7_im_2),
          .y0_re(y4_re_3),
          .y0_im(y4_im_3),
          .y1_re(y5_re_3),
          .y1_im(y5_im_3),
          .y2_re(y6_re_3),
          .y2_im(y6_im_3),
          .y3_re(y7_re_3),
          .y3_im(y7_im_3),
          .en_() 
          );    
             
         ifft_2 du__3 (
         .clk(clk),
         .reset(reset),
         .en(en_2),
         .x0(y0_re_3),
         .x0_im(y0_im_3),
         .x1(y1_re_3),
         .x1_im(y1_im_3),
         .y0(y0_re),
         .y0_im(y0_im),
         .y1(y1_re),
         .y1_im(y1_im)
         );   
         
       ifft_2 du__4 (
         .clk(clk),
         .reset(reset),
         .en(en_2),
         .x0(y2_re_3),
         .x0_im(y2_im_3),
         .x1(y3_re_3),
         .x1_im(y3_im_3),
         .y0(y2_re),
         .y0_im(y2_im),
         .y1(y3_re),
         .y1_im(y3_im)
         );  
         
        ifft_2 du__5 (
         .clk(clk),
         .reset(reset),
         .en(en_2),
         .x0(y4_re_3),
         .x0_im(y4_im_3),
         .x1(y5_re_3),
         .x1_im(y5_im_3),
         .y0(y4_re),
         .y0_im(y4_im),
         .y1(y5_re),
         .y1_im(y5_im)
         );  
         
        ifft_2 du___ (
         .clk(clk),
         .reset(reset),
         .en(en_2),
         .x0(y6_re_3),
         .x0_im(y6_im_3),
         .x1(y7_re_3),
         .x1_im(y7_im_3),
         .y0(y6_re),
         .y0_im(y6_im),
         .y1(y7_re),
         .y1_im(y7_im)
         );         
            
          
          
         
         
         
      
         
         
    
    
endmodule
