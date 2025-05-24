`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 09:10:01
// Design Name: 
// Module Name: AlessthanB
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


module AlessthanB(
input [5:0] a, b,
output [5:0] x
    );
    //internal wires to padd the 6bit inputs to match the 8bit module
    wire [7:0] a_extended, b_extended;
    wire result;
    //padd the inputs with the inverse of the signed bit to trick the 
    //8bit gtoe module into recognising negative numbers
    assign a_extended = {{2{~a[5]}}, a};
    assign b_extended = {{2{~b[5]}}, b};
    //check whether a is greater than or equal to b, and return the 1bit result in "result"
    _8bit_gtoe AandB (a_extended, b_extended, result);
    
    //assign the result to the least significant bit of x and padd it with 0s
    assign x = {5'b00000, ~result};
   
    
endmodule
