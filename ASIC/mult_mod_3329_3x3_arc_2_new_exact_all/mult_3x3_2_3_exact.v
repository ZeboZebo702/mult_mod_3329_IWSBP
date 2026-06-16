// Benchmark "mult_3x3_2_3_exact" written by ABC on Tue Apr 14 23:15:56 2026

module mult_3x3_2_3_exact ( 
    x0, x1, x2, x3, x4, x5,
    z0, z1, z2, z3, z4, z5, z6, z7, z8  );
  input  x0, x1, x2, x3, x4, x5;
  output z0, z1, z2, z3, z4, z5, z6, z7, z8;
  assign z0 = x0 & x3 & ((x1 & (x4 | (x2 & x5))) | (x2 & x4 & x5));
  assign z1 = (x0 & ((x4 & ((x5 & (x1 ? (x2 | (~x2 & ~x3)) : (~x2 & x3))) | (~x1 & x3 & ~x5))) | (x3 & ~x4 & (~x2 | (x2 & (~x5 | (~x1 & x5))))))) | (~x0 & x1 & x2 & x3 & x4);
  assign z2 = (x1 & ((~x0 & (x2 ? (x3 ? ~x4 : (x4 & x5)) : x3)) | (x3 & (x5 ? ~x2 : ~x4)))) | (x0 & ((x2 & ((~x1 & x3 & ~x4 & x5) | (x4 & ~x5))) | (x4 & ((~x1 & (x3 ? (~x5 | (~x2 & x5)) : x5)) | (~x3 & ~x5)))));
  assign z3 = (x1 & ((~x0 & (x2 ? (x3 & ~x4) : (x4 & x5))) | (x4 & ~x5 & (~x2 | ~x3)))) | (x0 & ((x5 & ((~x1 & x4 & (~x3 | (~x2 & x3))) | (x2 & ~x3) | (~x2 & ~x4))) | (~x4 & ~x5 & x2 & x3))) | (x2 & x3 & (x5 ? ~x0 : ~x1));
  assign z4 = (x4 & ((x1 & ~x2 & x5 & (~x0 | (x0 & ~x3))) | (x2 & (~x1 | ~x5)))) | (x1 & x5 & (~x4 | (~x2 & x3)));
  assign z5 = x2 & x5;
  assign z6 = 1'b0;
  assign z7 = 1'b0;
  assign z8 = 1'b0;
endmodule


