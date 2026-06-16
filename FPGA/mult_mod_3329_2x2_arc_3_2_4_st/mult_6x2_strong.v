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


  assign {z0,z1,z2,z3} = {x0,x1} * {x6,x7};

  assign {z4,z5,z6,z7} = {x2,x3} * {x6,x7};

  assign {z8,z9,z10,z11} = {x4,x5} * {x6,x7};

endmodule


