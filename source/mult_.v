`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2025 10:24:01 AM
// Design Name: 
// Module Name: a__
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


module mult_ ( input signed [15:0] a, input signed [15:0] b, output reg signed [31:0] c, input clk,reset,output reg en, input en_

    );
    
    reg [4:0]a_2;
    reg [1:0] a__;
    reg signed [31:0]a__1;
    wire [15:0] a_1;
    wire [15:0] b_1;
    wire si;
    assign si =a[15]^b[15];
    assign a_1 = a[15] ? (~a+1):a;
    assign b_1 = b[15] ? (~b+1):b;
    always @(posedge clk,posedge reset)
    begin
    if(reset)
    begin
    a_2=0;
    a__1=b_1;
    c=0; 
    en=0;
    end
    else if(a_2<=4'b1111 && en_)
    begin
    if(a_1[a_2] ==0)
    a__=0;
    else
    begin
    c=c+a__1;
    end
    a_2=a_2+1;
    a__1=a__1<<<1;
    end
    else if(en_)
    begin
    if (si)
    begin
    c=~c+1;
    en=1;
    end
    else
    begin
    c=c;
    en=1;
    end
    end
    
    end
    
    
endmodule
