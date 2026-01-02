`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2025 09:21:24 AM
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


module a_(
     input signed [1:0]a, input signed [1:0]b, output signed [2:0] c
    );
    
    assign c =a-b;
    
endmodule
