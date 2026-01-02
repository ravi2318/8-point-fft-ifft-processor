`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 08:52:15 AM
// Design Name: 
// Module Name: a_
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


module ifft_2( input clk, reset,en, input signed [15:0] x0,x0_im,x1,x1_im, 
           output reg signed [15:0]y0,y0_im,y1,y1_im

    );
    reg signed [15:0] y0_,y0_im_, y1_, y1_im_;
    always @(posedge clk, posedge reset)
    begin
    if (reset)
    begin
        y0=0;
        y0_im =1'b0;
        y1=0;
        y1_im =1'b0;
    end
    else 
    begin
       if (en)
       begin
        y0_=x0+x1;         
        y0_im_=x0_im+x1_im;
        y1_=x0-x1;
        y1_im_=x0_im-x1_im;
        y0=y0_>>>3;
        y0_im = y0_im_ >>>3;
        y1 = y1_ >>>3;
        y1_im = y1_im_ >>>3;
        
        
       end 
    
    end
    end
    
   
    
    
endmodule
