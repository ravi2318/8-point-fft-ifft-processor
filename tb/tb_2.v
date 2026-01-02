`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 12:50:21 PM
// Design Name: 
// Module Name: tb_2
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


module tb_2;


reg  clk, reset;
reg signed [15:0] x0,x1,x2,x3,x4,x5,x6,x7;
//reg [15:0] y0_re_1,y0_im_1,y1_re_1, y1_im_1, y2_re_1, y2_im_1, y3_re_1, y3_im_1, y4_re_1, y4_im_1, y5_re_1, y5_im_1, y6_re_1, y6_im_1, y7_re_1, y7_im_1;
wire signed [15:0] y0_re,y0_im,y1_re,y1_im, y2_re, y2_im, y3_re, y3_im, y4_re, y4_im, y5_re, y5_im, y6_re, y6_im, y7_re, y7_im;

top_ du(clk, reset,x0,x1,x2,x3,x4,x5,x6,x7, y0_re,y0_im,y1_re, y1_im, y2_re, y2_im, y3_re, y3_im, y4_re, y4_im, y5_re, y5_im, y6_re, y6_im, y7_re, y7_im);


initial
begin  
clk =0;   
reset =0;
x0 = 4'b1000;  

//x1 =16'h2108;
x1=4'b1000; 
//x1_im = 16'h1208;
//x2 = 16'h1012;
x2=4'b1000;
//x2_im = 16'h1201;
//x3 = 16'h1210;
x3=4'b1000;
//x3_im =16'h1210;

//x4 = 16'h3110;
x4=4'b1000;
//x4_im =16'h1210;

//x5= 16'h1210;
x5=4'b1000;
//x5_im= 16'h2101;
//x6 =16'h1210;
x6=4'b1000;

//x6_im = 16'h2101;

//x7 = 16'h1310;
x7=4'b1000;
//x7_im =16'h2110;

#5
reset =1;
#4
reset =0;
end

always #10 clk = ~clk;



 



endmodule
