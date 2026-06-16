// Benchmark "table_01_exact" written by ABC on Thu May 14 20:18:29 2026

module mult_6x2_01_exact ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 & x1 & x2 & x3;
  assign z01 = x0 & x2 & (~x3 | (~x1 & x3));
  assign z02 = (x0 & x3 & (~x2 | (~x1 & x2))) | (x1 & x2 & (~x0 | ~x3));
  assign z03 = x1 & x3;
  assign z04 = x5 & x0 & x1 & x4;
  assign z05 = x0 & x4 & (~x5 | (~x1 & x5));
  assign z06 = (x0 & x5 & (~x4 | (~x1 & x4))) | (x1 & x4 & (~x0 | ~x5));
  assign z07 = x1 & x5;
  assign z08 = x7 & x0 & x1 & x6;
  assign z09 = x0 & x6 & (~x7 | (~x1 & x7));
  assign z10 = (x0 & x7 & (~x6 | (~x1 & x6))) | (x1 & x6 & (~x0 | ~x7));
  assign z11 = x1 & x7;
endmodule


