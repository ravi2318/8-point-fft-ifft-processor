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


module bf_2(input clk, reset, en, input signed [15:0] x0_re,x0_im,x1_re,x1_im,x2_re,x2_im,x3_re,x3_im,x4_re,x4_im,x5_re,x5_im,x6_re,x6_im,x7_re,x7_im,
      output reg signed [15:0] y0_re,y0_im,y1_re, y1_im, y2_re, y2_im, y3_re, y3_im, y4_re, y4_im, y5_re, y5_im, y6_re, y6_im, y7_re, y7_im,
      output reg en_

    );
    wire signed [15:0] w8_1_re, w8_1_im; 
    wire signed [15:0] w8_3_re, w8_3_im;
    
    assign w8_1_re =  16'h5A82;           
    assign w8_1_im = -16'h5A82; 
    assign w8_3_re = -16'h5A82; 
    assign w8_3_im = -16'h5A82; 
    
    wire signed [31:0] x1_5_re, x1_5_im, x3_7_re, x3_7_im;
    wire signed [15:0] x1_5_re_, x1_5_im_, x3_7_re_, x3_7_im_;
    wire [31:0] a,a_;
    wire [31:0] b,b_;
    wire [31:0] c,c_;
    wire [31:0] d,d_;
    mult_ du__1(x5_re,w8_1_re,a,clk,reset,, 1'b1);
    mult_ du__2(x5_im,w8_1_im,a_,clk,reset,,1'b1);
    mult_ du__3(x5_re,w8_1_im,b,clk,reset,,1'b1);
    mult_ du__4(x5_im,w8_1_re,b_,clk,reset,,1'b1);
    mult_ du__5(x7_re,w8_3_re,c,clk,reset,,1'b1);
    mult_ du__6(x7_im,w8_3_im,c_,clk,reset,,1'b1);
    mult_ du__7(x7_re,w8_3_im,d,clk,reset,,1'b1);
    mult_ du__8(x7_im,w8_3_re,d_,clk,reset,,1'b1);
    assign x1_5_re = a - a_;
    assign x1_5_im = b + b_;
    assign x3_7_re = c - c_;    
    assign x3_7_im = d + d_;
    
    assign x1_5_re_ = (x1_5_re +32'sd16384) >>> 15;  
    assign x1_5_im_ = (x1_5_im + 32'sd16384) >>> 15;
    assign x3_7_re_ = (x3_7_re + 32'sd16384) >>> 15;
    assign x3_7_im_ = (x3_7_im +32'sd16384)  >>> 15;
    
    //assign x1_5_re_ = (x1_5_re >= 0) ? (x1_5_re >>> 15) : (x1_5_re >>> 15);
    //assign x1_5_im_ = (x1_5_im >= 0) ? (x1_5_im >>> 15) : (x1_5_im >>> 15);
    //assign x3_7_re_ = (x3_7_re >= 0) ? (x3_7_re >>> 15) : (x3_7_re >>> 15);
    //assign x3_7_im_ = (x3_7_im >= 0) ? (x3_7_im  >>> 15) : (x3_7_im >>> 15);
    
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
	end
	else
	begin
	 if (en)
	   begin
	   y0_re <= x0_re + x4_re;	y0_im <= 0;
	   y1_re <= x1_re + x1_5_re_;	
       y1_im <= x1_im + x1_5_im_;
       y2_re <= x2_re ;		y2_im <= - x6_re;
       y3_re <= x3_re + x3_7_re_;    
       y3_im <= x3_im + x3_7_im_;	
       y4_re <= x0_re - x4_re;	y4_im <= 0;	
       y5_re <= x1_re - x1_5_re_;
       y5_im <= x1_im   - x1_5_im_;
       y6_re <= x2_re;		y6_im <= x6_re;
       y7_re <= x3_re - x3_7_re_;
       y7_im <= x3_im - x3_7_im_;
       en_=1;	
       end
    end
    
    end
    
    
    
   
    
    
    
    
endmodule
