// Benchmark "D:\BF_in_AO\mult_mod_3329\Truth_bables\minimization_strong\mult_4x4_2_4_strong" written by ABC on Tue Mar 10 02:32:31 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_4x4_2_4_st ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;

  assign {z00, z01, z02, z03, z04, z05, z06, z07} = {x0, x1, x2, x3} * {x4, x5, x6, x7};


  assign z08 = 1'b0;
  assign z09 = 1'b0;
  assign z10 = 1'b0;
  assign z11 = 1'b0;

endmodule


