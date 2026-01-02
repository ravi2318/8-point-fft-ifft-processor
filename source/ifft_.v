`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 01:22:33 PM
// Design Name: 
// Module Name: a_2
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


module ifft_(input clk, reset, en, input signed [15:0] x0_re,x0_im,x1_re,x1_im,x2_re,x2_im,x3_re,x3_im,x4_re,x4_im,x5_re,x5_im,x6_re,x6_im,x7_re,x7_im,
      output reg signed [15:0] y0_re,y0_im,y1_re, y1_im, y2_re, y2_im, y3_re, y3_im, y4_re, y4_im, y5_re, y5_im, y6_re, y6_im, y7_re, y7_im,
      output reg en_
    );
    wire signed [15:0] w8_1_re, w8_1_im;
    wire signed [15:0] w8_3_re, w8_3_im;
    
    assign w8_1_re =  16'h5A82; 
    assign w8_1_im =  16'h5A82; 
    assign w8_3_re = -16'h5A82; 
    assign w8_3_im =  16'h5A82;
    
    wire [31:0] a,a_;
    wire [31:0] b,b_;
    wire [31:0] c,c_;
    wire [31:0] d,d_;
    wire en__;
    reg en_1;
   
    
    reg signed [15:0] y5_re_ , y5_im_, y6_re_, y6_im_, y7_re_, y7_im_;
    reg signed [31:0] x1_5_re, x1_5_im, x3_7_re, x3_7_im;
    reg signed [15:0] x1_5_re_, x1_5_im_, x3_7_re_, x3_7_im_;
    mult_ du__9(y5_re_,w8_1_re,a,clk,reset,en__,en_1);
    mult_ du__10(y5_im_,w8_1_im,a_,clk,reset,,en_1);
    mult_ du__11(y5_re_,w8_1_im,b,clk,reset,,en_1);
    mult_ du__12(y5_im_,w8_1_re,b_,clk,reset,,en_1);
    mult_ du__13(y7_re_,w8_3_re,c,clk,reset,,en_1);
    mult_ du__14(y7_im_,w8_3_im,c_,clk,reset,,en_1);
    mult_ du__15(y7_re_,w8_3_im,d,clk,reset,,en_1);
    mult_ du__16(y7_im_,w8_3_re,d_,clk,reset,,en_1);
    
   // assign x1_5_re = x5_re * w8_1_re - x5_im * w8_1_im;
   // assign x1_5_im = x5_re * w8_1_im + x5_im * w8_1_re;
   // assign x3_7_re = x7_re * w8_3_re - x7_im * w8_3_im;    
   // assign x3_7_im = x7_re * w8_3_im + x7_im * w8_3_re;
    
   // assign x1_5_re_ = x1_5_re >>> 15;
   // assign x1_5_im_ = x1_5_im >>> 15;
   // assign x3_7_re_ = x3_7_re >>> 15;
   // assign x3_7_im_ = x3_7_im >>> 15;
    
    always@(posedge clk, posedge reset)
    begin
    if(reset)
    begin
       y0_re <= 16'b0;	y0_im <= 16'b0;
	   y1_re <= 16'b0;	y1_im <= 16'b0;
	   y2_re <= 16'b0;	y2_im <= 16'b0;
	   y3_re <= 16'b0;	y3_im <= 16'b0;
	   y4_re <= 16'b0;	y4_im <= 16'b0;
	   y5_re <= 16'b0;	y5_im <= 16'b0;
	   y6_re <= 16'b0;	y6_im <= 16'b0;
	   y7_re <= 16'b0;	y7_im <= 16'b0;
	   en_=0;
	   en_1=0;
	end
	else
	begin
	 if (en)
	   begin
	   y0_re = x0_re + x4_re;	y0_im = x0_im + x4_im;
	   y1_re = x1_re + x5_re;	
       y1_im = x1_im + x5_im;
       y2_re = x2_re + x6_re;		y2_im = x2_im + x6_im;
       y3_re = x3_re + x7_re;
       y3_im = x3_im + x7_im;	
       y4_re = x0_re - x4_re;	 y4_im = x0_im - x4_im;	
       y5_re_ = x1_re - x5_re;
       y5_im_ = x1_im - x5_im;
       y6_re_ = x2_re - x6_re;	 y6_im_ = x6_im - x2_im;
       y7_re_ = x3_re - x7_re;
       y7_im_ = x3_im - x7_im;
       en_1=1;
       if (en__)
       begin
       x1_5_re = a - a_;
       x1_5_im = b + b_;
       x3_7_re = c - c_; 
       x3_7_im = d + d_;
       end	
       if(x1_5_re >=0)
       begin
       y5_re = (x1_5_re +32'sd16384 ) >>> 15;
       end
       else
       begin
       y5_re = (x1_5_re +32'sd16384 ) >>> 15;
       end
       if(x1_5_im >=0)
       begin
       y5_im = (x1_5_im +32'sd16384 ) >>> 15;
       end
       else
       begin
       y5_im = (x1_5_im +32'sd16384) >>> 15 ;
       end
       if(x3_7_re >=0)
       begin
       y7_re = (x3_7_re +32'sd16384) >>> 15;
       end
       else
       begin
       y7_re = (x3_7_re +32'sd16384) >>> 15;
       end
       
       if(x3_7_im >=0)
       begin
       y7_im = (x3_7_im +32'sd16384) >>> 15;
       end
       else
       begin
       y7_im = (x3_7_im +32'sd16384) >>> 15 ;
       end
       
       y6_re = y6_im_;
       y6_im = y6_re_;
       en_=1;
       
       
       end
    end
    

 end
 endmodule
    
    
    
   
    