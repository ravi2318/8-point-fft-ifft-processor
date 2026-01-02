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


module bf_0( input clk, reset, input signed [15:0] x0,x1, 
           output reg signed [15:0]y0,y1, output reg en

    );
    
    always @(posedge clk, posedge reset)
    begin
    if (reset)
    begin
        y0=0;
        y1=0;
    end
    else 
    begin
        y0=x0+x1;
        y1=x0-x1;
        en=1;
    
    end
    end
    
   
    
    
endmodule
