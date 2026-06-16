// Benchmark "mult_3x3_2_6_exact" written by ABC on Tue Apr 14 23:16:10 2026

module mult_3x3_2_6_exact ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 & x3 & ((x1 & (x4 | (x2 & x5))) | (x2 & x4 & x5));
  assign z01 = (x0 & ((x4 & ((x5 & (x1 ? (x2 | (~x2 & ~x3)) : (~x2 & x3))) | (~x1 & x3 & ~x5))) | (x3 & ~x4 & (~x2 | (x2 & (~x5 | (~x1 & x5))))))) | (~x0 & x1 & x2 & x3 & x4);
  assign z02 = (x1 & ((~x0 & (x2 ? (x3 ? ~x4 : (x4 & x5)) : x3)) | (x3 & (x5 ? ~x2 : ~x4)))) | (x0 & ((x2 & ((~x1 & x3 & ~x4 & x5) | (x4 & ~x5))) | (x4 & ((~x1 & (x3 ? (~x5 | (~x2 & x5)) : x5)) | (~x3 & ~x5)))));
  assign z03 = (x1 & ((~x0 & (x2 ? (x3 & ~x4) : (x4 & x5))) | (x4 & ~x5 & (~x2 | ~x3)))) | (x0 & ((x5 & ((~x1 & x4 & (~x3 | (~x2 & x3))) | (x2 & ~x3) | (~x2 & ~x4))) | (~x4 & ~x5 & x2 & x3))) | (x2 & x3 & (x5 ? ~x0 : ~x1));
  assign z04 = (x4 & ((x1 & ~x2 & x5 & (~x0 | (x0 & ~x3))) | (x2 & (~x1 | ~x5)))) | (x1 & x5 & (~x4 | (~x2 & x3)));
  assign z05 = x2 & x5;
  assign z06 = 1'b0;
  assign z07 = 1'b0;
  assign z08 = 1'b0;
  assign z09 = 1'b0;
  assign z10 = 1'b0;
  assign z11 = 1'b0;
endmodule


