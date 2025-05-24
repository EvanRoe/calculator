module full_adder(x, y, sel, c_out, sum);
  // 3C7 LabD 2010
  // a and b are the bits to add
  // cin is carry in
  input wire x, y, sel;
  
  // s is the sum of a and b. cout is any carry out bit
  // wires since just using assign here
  output wire sum, c_out;

  // logic for sum and carry
  assign sum = sel ^ x ^ y;
  assign c_out = (y & sel) | (x & sel) | (x & y); 
  
endmodule

