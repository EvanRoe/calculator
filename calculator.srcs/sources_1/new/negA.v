`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 07:55:47
// Design Name: 
// Module Name: negA
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


module negA(
input [5:0] a, b,
output [5:0] x
    );
    
    assign x = ~a + 1; //calculate the 2s complement of A and set it to the output
endmodule
