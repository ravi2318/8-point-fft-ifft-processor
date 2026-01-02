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


module bf_1(input clk, reset,en , input signed [15:0] x0,x1,x2,x3, output reg  signed [15:0] y0_re,y0_im,y1_re,y1_im,y2_re,y2_im,y3_re,y3_im,
           output reg en_

    );
    
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
        en_=0;
    end
    else
    begin
       if(en)
       begin
        y0_re=x0+x2;      
        y0_im = 0;  
        y1_re = x1;      
        y1_im = ~x3+1;  
        y2_re = x0 -x2; 
        y2_im =0;
        y3_re = x1;
        y3_im = x3;
        en_=1;
       end 
    end
    end
    
    
endmodule
