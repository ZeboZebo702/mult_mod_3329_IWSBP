// Benchmark "mult_3_2_12_exact" written by ABC on Tue Apr 14 20:43:08 2026

module mult_3_2_12_exact_3_lut ( 
    x0, x1, x2,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 ? (~x1 & ~x2) : (x1 & x2);
  assign z01 = x1 & (x0 | ~x2);
  assign z02 = x0 ? (x1 ^ ~x2) : (~x1 & x2);
  assign z03 = ~x0 ^ (~x1 | x2);
  assign z04 = x2 | x0 | x1;
  assign z09 = ~x0 ^ (~x1 & ~x2);
  assign z10 = (~x1 & x2) | (~x0 & x1 & ~x2);
  assign z11 = x0 ? (x1 & ~x2) : x2;
  assign z05 = x2 | x0 | x1;
  assign z06 = x2 | x0 | x1;
  assign z07 = x2 | x0 | x1;
  assign z08 = x2 | x0 | x1;
endmodule


