// Benchmark "D:\BF_in_AO\mult_mod_3329\Truth_bables\minimization_strong\mult_3x3_2_3_strong" written by ABC on Tue Mar 10 02:32:08 2026

module mult_3x3_2_3_st ( 
    x0, x1, x2, x3, x4, x5,
    z0, z1, z2, z3, z4, z5, z6, z7, z8  );
  input  x0, x1, x2, x3, x4, x5;
  output z0, z1, z2, z3, z4, z5, z6, z7, z8;

  assign {z0, z1, z2, z3, z4, z5} = {x0, x1, x2} * {x3, x4, x5};

  assign z6 = 1'b0;
  assign z7 = 1'b0;
  assign z8 = 1'b0;
endmodule


