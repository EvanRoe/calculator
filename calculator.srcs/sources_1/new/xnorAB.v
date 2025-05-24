`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 08:50:08
// Design Name: 
// Module Name: xnorAB
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


module xnorAB(
input [5:0] a, b,
output [5:0] x
    );
    //compute xnor of each bit of the inputs, and assign each one to its corresponding one in output x
    mystery_module bit0 (a[0], b[0], x[0]);
    mystery_module bit1 (a[1], b[1], x[1]);
    mystery_module bit2 (a[2], b[2], x[2]);
    mystery_module bit3 (a[3], b[3], x[3]);
    mystery_module bit4 (a[4], b[4], x[4]);
    mystery_module bit5 (a[5], b[5], x[5]);
    
endmodule
