`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 11:20:21
// Design Name: 
// Module Name: 6bit_ripple_adder
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


module _6bit_ripple_adder
( input [5:0] x, y, input sel, 
output overflow, output c_out, output [5:0] sum);

//initialise internal wires that connect the full adders, 
//as well as the ones for y that go into the xor gates for subtraction
wire c1, c2, c3, c4, c5, c6;
wire [5:0] y2;

//xor gates for the subtraction mode that takes to sel, and when sel = 1 it computes 2s complement of y
xor(y2[0], sel, y[0]);
xor(y2[1], sel, y[1]);
xor(y2[2], sel, y[2]);
xor(y2[3], sel, y[3]);
xor(y2[4], sel, y[4]);
xor(y2[5], sel, y[5]);

//designing the hardware of a ripple adder with each full adder, 
//taking x and y as inputs, and outputting the sum and pushing the carry to the next adder
full_adder bit0 (x[0], y2[0], sel, c1, sum[0]);
full_adder bit1 (x[1], y2[1], c1, c2, sum[1]);
full_adder bit2 (x[2], y2[2], c2, c3, sum[2]);
full_adder bit3 (x[3], y2[3], c3, c4, sum[3]);
full_adder bit4 (x[4], y2[4], c4, c5, sum[4]);
full_adder bit5 (x[5], y2[5], c5, c6, sum[5]);

//xor gate for the overflow, and c_out is the last carry from the last adders
xor (overflow, c5, c6);
assign c_out = c6;

endmodule
