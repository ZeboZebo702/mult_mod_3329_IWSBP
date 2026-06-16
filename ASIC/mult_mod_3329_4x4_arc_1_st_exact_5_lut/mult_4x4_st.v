// Benchmark "D:\BF_in_AO\mult_mod_3329\Truth_bables\minimization_strong\mult_4x4_strong" written by ABC on Tue Mar 10 02:32:28 2026

module mult_4x4_st ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z0, z1, z2, z3, z4, z5, z6, z7  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z0, z1, z2, z3, z4, z5, z6, z7;

assign {z0, z1, z2, z3, z4, z5, z6, z7} = {x0, x1, x2, x3} * {x4, x5, x6, x7};


endmodule


