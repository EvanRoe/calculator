// Listing 1.1
module mystery_module
   // I/O ports
   (
    input wire inp0, inp1,
    output wire out1
   );

   // signal declaration
   wire p0, p1;

   // body
   // sum of two product terms, xnor gate
   assign out1 = p0 | p1;
   // product terms
   assign p0 = ~inp0 & ~inp1;
   assign p1 = inp0 & inp1;

endmodule