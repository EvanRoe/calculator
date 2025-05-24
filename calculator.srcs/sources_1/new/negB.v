`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 07:57:16
// Design Name: 
// Module Name: negB
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


module negB(
input [5:0] a, b,
output [5:0] x
    );
    
    assign x = ~b + 1; //calculate the 2s complement of B and set it to the output
endmodule
