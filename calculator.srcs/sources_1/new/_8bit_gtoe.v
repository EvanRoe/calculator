`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 08:55:38
// Design Name: 
// Module Name: _8bit_gtoe
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


module _8bit_gtoe(
    input wire [7:0] a, b,
    output wire agtoeb
    );
    
    //internal wires to compare the 8bits, two at a time, using the _2bit_greater_than module
   wire gtbit76;
   _2bit_greater_than uut1 (.a(a[7:6]), .b(b[7:6]), .agtb(gtbit76)); 
   wire gtbit54;
   _2bit_greater_than uut2 (.a(a[5:4]), .b(b[5:4]), .agtb(gtbit54));
   wire gtbit32;
   _2bit_greater_than uut3 (.a(a[3:2]), .b(b[3:2]), .agtb(gtbit32));
   wire gtbit10;
   _2bit_greater_than uut4 (.a(a[1:0]), .b(b[1:0]), .agtb(gtbit10));
   
   //internal wires for comparing each bit one at a time of the 8bits
   wire e0, e1, e2, e3, e4, e5, e6, e7, equalall;
   eq1 eq_bit0_unit (.i0(a[0]), .i1(b[0]), .eq(e0));//using the eq1 module to compare two bits
   eq1 eq_bit1_unit (.eq(e1), .i0(a[1]), .i1(b[1]));
   eq1 eq_bit2_unit (.i0(a[2]), .i1(b[2]), .eq(e2));
   eq1 eq_bit3_unit (.eq(e3), .i0(a[3]), .i1(b[3]));
   eq1 eq_bit4_unit (.i0(a[4]), .i1(b[4]), .eq(e4));
   eq1 eq_bit5_unit (.eq(e5), .i0(a[5]), .i1(b[5]));
   eq1 eq_bit6_unit (.i0(a[6]), .i1(b[6]), .eq(e6));
   eq1 eq_bit7_unit (.eq(e7), .i0(a[7]), .i1(b[7]));
   //if all of the individual bits are equal then the two 8bit numbers are equal
   assign equalall = e0 & e1 & e2 & e3 & e4 & e5 & e6 & e7;
   //either the b is a negative number, or the next bit is larger, or they're equal and then next two are bigger, etc, or they are all equal
   assign agtoeb = gtbit76 | e7 & e6 & gtbit54 | e7 & e6 & e5 & e4 & gtbit32 | e7 & e6 & e5 & e4 & e3 & e2 & gtbit10 | equalall;    
   
endmodule
