// Benchmark "mult_2_2_12_exact" written by ABC on Tue Apr 14 00:41:34 2026

module mult_2_2_12_exact ( 
    x0, x1,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 & x1;
  assign z01 = x0 & ~x1;
  assign z02 = ~x0 & x1;
  assign z03 = x0 & ~x1;
  assign z04 = (x0 & x1) | (x0 & ~x1) | (~x0 & x1);
  assign z05 = (x0 & x1) | (x0 & ~x1) | (~x0 & x1);
  assign z06 = (x0 & x1) | (x0 & ~x1) | (~x0 & x1);
  assign z07 = (x0 & x1) | (x0 & ~x1) | (~x0 & x1);
  assign z08 = (x0 & x1) | (x0 & ~x1) | (~x0 & x1);
  assign z09 = (x0 & x1) | (x0 & ~x1) | (~x0 & x1);
  assign z10 = ~x0 ^ ~x1;
  assign z11 = x0 ? x1 : x1;
endmodule


