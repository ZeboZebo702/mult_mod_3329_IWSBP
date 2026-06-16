// Benchmark "D:\BF_in_AO\mult_mod_3329\mult_mod_3329_2x2_arc_3\minimization_strong\mult_2x2_strong" written by ABC on Wed Mar 25 15:40:50 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_6x2_strong ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z0, z1, z2, z3, z4, z5, z6, z7,z8, z9, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z0, z1, z2, z3, z4, z5, z6, z7,z8, z9, z10, z11;

  assign z0 = x0 & x1 & x6 & x7;
  assign z1 = x0 & x6 & (~x7 | (~x1 & x7));
  assign z2 = (x0 & x7 & (~x6 | (~x1 & x6))) | (x1 & x6 & (~x0 | ~x7));
  assign z3 = x1 & x7;

  assign z4 = x2 & x3 & x6 & x7;
  assign z5 = x2 & x6 & (~x7 | (~x3 & x7));
  assign z6 = (x2 & x7 & (~x6 | (~x3 & x6))) | (x3 & x6 & (~x2 | ~x7));
  assign z7 = x3 & x7;

  assign z8 = x4 & x5 & x6 & x7;
  assign z9 = x4 & x6 & (~x7 | (~x5 & x7));
  assign z10 = (x4 & x7 & (~x6 | (~x5 & x6))) | (x5 & x6 & (~x4 | ~x7));
  assign z11 = x5 & x7;

endmodule


