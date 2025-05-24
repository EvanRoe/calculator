module mult_5bit(
input [5:0] a, b,
output [11:0] x
    );

assign x = a * b;
    
endmodule
