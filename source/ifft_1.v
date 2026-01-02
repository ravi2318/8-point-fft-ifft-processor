`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 11:42:58 AM
// Design Name: 
// Module Name: a_1
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


module ifft_1(input clk, reset,en , input signed [15:0] x0,x0_im,x1,x1_im,x2,x2_im,x3,x3_im, output reg signed [15:0] y0_re,y0_im,y1_re,y1_im,y2_re,y2_im,y3_re,y3_im,
           output reg en_

    );
    
    reg signed [15:0] y3_re_,y3_im_;
    always @ (posedge clk, posedge reset)
    begin
    if(reset)
    begin
        y0_re=0;   
        y0_im=0;
        y1_re=0;
        y1_im=0;
        y2_re=0;
        y2_im=0;
        y3_re=0;
        y3_im=0;
        en_=1;
    end
    else
    begin
       if(en)
       begin
        y0_re=x0+x2;
        y0_im = x0_im+x2_im;  
        y1_re = x1+x3; 
        y1_im = x1_im+x3_im; 
        y2_re = x0 -x2;
        y2_im = x0_im -x2_im;
        y3_re_ = x1 - x3;
        y3_im_ = x3_im -x1_im;
        y3_re = y3_im_;
        y3_im = y3_re_;
        
        en_=1;
       end 
    end
    end
    
    
endmodule

