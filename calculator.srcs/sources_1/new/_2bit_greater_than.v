`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 07:59:50
// Design Name: 
// Module Name: _8bit_greater_than
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


module _2bit_greater_than(
    input wire [1:0] a, b,
    output wire agtb
    );
    

   wire option1, option2, option3; //internal variables
   //following "options" are the three configurations where a is greater than b
   assign option1 = ~a[1] & a[0] & ~b[1] & ~b[0]; //01 & 00
   assign option2 = a[1] & ~b[1]; //the first bit of a is 1 and b's one is 0
   assign option3 = a[1] & a[0] & b[1] & ~b[0];//11 & 10
   assign agtb = option1 | option2 | option3; //any of these options means a > b
   
   
endmodule
