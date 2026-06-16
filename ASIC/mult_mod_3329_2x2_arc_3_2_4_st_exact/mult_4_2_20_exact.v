// Benchmark "mult_4_2_20_exact" written by ABC on Tue Apr 14 16:43:18 2026

module mult_4_2_20_exact ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = (~x0 & x3) | (x0 & ~x3) | (x2 & (~x0 ^ x3)) | (~x2 & (x0 ? x3 : (x1 & ~x3)));
  assign z01 = ~x0 & (x1 ? (~x2 & ~x3) : (x2 | (~x2 & x3)));
  assign z02 = x2 ? (x0 ^ x1) : ((x1 & (x0 ^ x3)) | (x0 & (x3 | (~x1 & ~x3))));
  assign z03 = x2 ? x1 : (x0 ? (~x1 & ~x3) : (x1 & x3));
  assign z04 = (~x0 & (x2 ^ x3)) | (x0 & x2 & ~x3) | (x0 & x3 & (~x1 ^ x2));
  assign z05 = (x3 & (~x0 | (x0 & ~x1))) | (x2 & ~x3 & x0 & x1);
  assign z06 = x1 ? (x0 ? (~x2 & ~x3) : (x2 & x3)) : x0;
  assign z07 = (x0 & ~x1 & x2) | (~x0 & x1 & ~x2) | (~x0 & x2 & (~x1 ^ ~x3)) | (~x2 & ~x3 & x0 & x1);
  assign z08 = x1 ? (x0 ? (x2 ^ ~x3) : (x2 ^ x3)) : (x2 ? (~x0 ^ x3) : x0);
  assign z09 = x1 ? (x2 | (~x2 & ~x3)) : (~x2 & x3);
  assign z10 = (~x0 & (x2 ^ x3)) | (x0 & x2 & ~x3) | (x0 & ~x2 & x3);
  assign z11 = ~x3 & (x0 | (~x0 & x1) | (~x0 & ~x1 & x2));
endmodule


