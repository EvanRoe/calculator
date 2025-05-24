`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 07:47:16
// Design Name: 
// Module Name: top_ass1
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


module top_calc(
input [5:0] a, b, input [2:0] fxn,
output reg [5:0] outreg
    );

wire [5:0] fxn000, fxn001, fxn010, fxn011, fxn100, fxn101, fxn110, fxn111;

//A fxn 000
returnA case1 (a, b, fxn000);
        //B fxn 001
returnB case2 (a, b, fxn001);
        //-A fxn 010
negA case3 (a, b, fxn010);
        //-B fxn 011
negB case4 (a, b, fxn011);
        //A<B fxn 100
AlessthanB case5 (a, b, fxn100);
        //XNOR fxn 101
xnorAB case6 (a, b, fxn101);
        //A+B fxn 110
_6bit_ripple_adder case7 (a, b, 1'b0, , , fxn110);
        //A-B fxn 111
_6bit_ripple_adder case8 (a, b, 1'b1, , , fxn111);



always @(*) begin
    case(fxn)
        //A fxn 000
        3'b000: outreg = fxn000;
        //B fxn 001
        3'b001: outreg = fxn001;
        //-A fxn 010
        3'b010: outreg = fxn010;
        //-B fxn 011
        3'b011: outreg = fxn011;
        //A<B fxn 100
        3'b100: outreg = fxn100;
        //XNOR fxn 101
        3'b101: outreg = fxn101;
        //A+B fxn 110
        3'b110: outreg = fxn110;
        //A-B fxn 111
        3'b111: outreg = fxn111;
    endcase
end
endmodule
