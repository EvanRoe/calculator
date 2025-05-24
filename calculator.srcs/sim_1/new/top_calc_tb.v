`timescale 1ns / 1ps

module top_calc_tb;
reg [5:0] test_a, test_b, test_mula, test_mulb, test_diva, test_divb;
reg [2:0] test_fxn;
wire [5:0] test_x, test_divx;
wire [11:0] test_mulx;

//specify the module to test, and assign the correct variables to the test ones
top_calc uut (.a(test_a), .b(test_b), .fxn(test_fxn), .outreg(test_x));
mult_5bit mul_test (test_mula, test_mulb, test_mulx);
divide_6bit div_test (test_diva, test_divb, test_divx);
    
    initial begin
        //test for multiplying two 6 signed bit numbers
        test_mula = 6'b100000;
        test_mulb = 6'b011111;
        #100
        //test for dividing a by b
        test_diva = 6'b001010;
        test_divb = 6'b000100;
        #100
        
        
        
        //test for fxn000, both numbers, A is the last six digits of my board number (85, 1010101)
        test_a = 6'b010101;
        test_b = 6'b010101;
        test_fxn = 3'b000;
        #100
        //test for fxn000, both 0
        test_a = 6'b000000;
        test_b = 6'b000000;
        test_fxn = 3'b000;
        #100
        
        
        //test for fxn001, both binary numbers
        test_a = 6'b100010;
        test_b = 6'b011100;
        test_fxn = 3'b001;
        #100
        
        
        //test for fxn010, both zero
        test_a = 6'b000000;
        test_b = 6'b000000;
        test_fxn = 3'b010;
        #100
        //test for fxn010, A positive, B something
        test_a = 6'b010110;
        test_b = 6'b110010;
        test_fxn = 3'b010;
        #100
        //test for fxn010, A negative, B something
        test_a = 6'b100110;
        test_b = 6'b000111;
        test_fxn = 3'b010;
        #100
        
        
        //test for fxn011, B, A something
        test_a = 6'b010111;
        test_b = 6'b010011;
        test_fxn = 3'b011;
        #100
        
        
        //test for fxn100, both zero
        test_a = 6'b000000;
        test_b = 6'b000000;
        test_fxn = 3'b100;
        #100
        //test for fxn100, A less than B
        test_a = 6'b000010;
        test_b = 6'b000100;
        test_fxn = 3'b100;
        #100
        //test for fxn100, A greater than B
        test_a = 6'b001001;
        test_b = 6'b001000;
        test_fxn = 3'b100;
        #100
        //test for fxn100, A equals B
        test_a = 6'b111001;
        test_b = 6'b001001;
        test_fxn = 3'b100;
        #100
        
        
        //test for fxn101, both zero
        test_a = 6'b000000;
        test_b = 6'b000000;
        test_fxn = 3'b101;
        #100
        //test for fxn101, A equals B
        test_a = 6'b001110;
        test_b = 6'b001110;
        test_fxn = 3'b101;
        #100
        //test for fxn101, A does not equal B, but some bits are the same
        test_a = 6'b011000;
        test_b = 6'b101110;
        test_fxn = 3'b101;
        #100
        //test for fxn101, A does not equal B, no bits the same
        test_a = 6'b101100;
        test_b = 6'b010011;
        test_fxn = 3'b101;
        #100
        
        
        //test for fxn110, both zero
        test_a = 6'b000000;
        test_b = 6'b000000;
        test_fxn = 3'b110;
        #100
        //test for fxn110, A and B low positive
        test_a = 6'b001100;
        test_b = 6'b000011;
        test_fxn = 3'b110;
        #100
        //test for fxn110, A negative B positive, A > B
        test_a = 6'b100011;
        test_b = 6'b000111;
        test_fxn = 3'b110;
        #100
        //test for fxn110, A and B high positive, overflow
        test_a = 6'b011101;
        test_b = 6'b001111;
        test_fxn = 3'b110;
        #100
        
        
        //test for fxn111, both zero
        test_a = 6'b000000;
        test_b = 6'b000000;
        test_fxn = 3'b111;
        #100
        //test for fxn111, A and B low positive
        test_a = 6'b001000;
        test_b = 6'b000110;
        test_fxn = 3'b111;
        #100
        //test for fxn111, A positive B negative, positive outcome
        test_a = 6'b001110;
        test_b = 6'b110011;
        test_fxn = 3'b111;
        #100
        //test for fxn111, A negative B positive, negative overflow
        test_a = 6'b100001;
        test_b = 6'b000111;
        test_fxn = 3'b111;
        #100
        
    $finish;
    end
endmodule
