`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 01:26:58 PM
// Design Name: 
// Module Name: divide_6bit
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


module divide_6bit(
input [5:0] a, b,
output [5:0] x
    );
    
    assign x = a / b;
    
endmodule
