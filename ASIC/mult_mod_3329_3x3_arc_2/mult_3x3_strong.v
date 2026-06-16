// Benchmark "D:\BF_in_AO\mult_mod_3329\Truth_bables\minimization_strong\mult_3x3_strong" written by ABC on Tue Mar 10 02:32:04 2026

module mult_3x3_strong ( 
    x0, x1, x2, x3, x4, x5,
    z0, z1, z2, z3, z4, z5  );
  input  x0, x1, x2, x3, x4, x5;
  output z0, z1, z2, z3, z4, z5;
  assign z0 = x0 & x3 & ((x1 & (x4 | (x2 & x5))) | (x2 & x4 & x5));
  assign z1 = (x0 & ((x5 & ((x4 & (x1 ? (x2 | (~x2 & ~x3)) : (~x2 & x3))) | (x3 & ~x4 & (~x2 | (~x1 & x2))))) | (x3 & ~x5 & (~x4 | (~x1 & x4))))) | (~x0 & x1 & x2 & x3 & x4);
  assign z2 = x3 ? ((x1 & ((~x0 & (~x2 | ~x4)) | (~x5 & (~x4 | (x0 & x2))) | (~x2 & x5))) | (x0 & ~x1 & ((x4 & (~x5 | (~x2 & x5))) | (x2 & ~x4 & x5)))) : (x4 & ((x0 & (~x5 | (~x1 & x5))) | (x2 & x5 & ~x0 & x1)));
  assign z3 = x5 ? (x0 ? (((~x4 | (~x1 & x4)) & (~x3 | (~x2 & x3))) | (x2 & ~x3)) : ((x2 & x3) | (x1 & ~x2 & x4))) : ((x1 & x4 & (~x3 | (~x2 & x3))) | (x2 & x3 & (~x1 | ~x4)));
  assign z4 = (x4 & ((x1 & ~x2 & x5 & (~x0 | (x0 & ~x3))) | (x2 & (~x1 | ~x5)))) | (x1 & x5 & (~x4 | (~x2 & x3)));
  assign z5 = x2 & x5;
endmodule


