// Benchmark "D:\BF_in_AO\mult_mod_3329\mult_mod_3329_2x2_arc_3\minimization_strong\mult_3_2_21_strong" written by ABC on Wed Mar 25 02:30:40 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3_2_21_strong ( 
    x0, x1, x2,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 | (~x0 & x1) | (~x0 & ~x1 & x2);
  assign z01 = ~x0 & (x1 ^ x2);
  assign z02 = x1 ? (x0 ^ x2) : x0;
  assign z03 = x0 ? (~x1 ^ x2) : (x1 & x2);
  assign z04 = x2;
  assign z05 = x2 & x0 & x1;
  assign z06 = x0 & (~x1 | (x1 & ~x2));
  assign z07 = x0 ? (x1 ^ x2) : x1;
  assign z08 = x0 ^ x2;
  assign z09 = x1;
  assign z10 = x2;
  assign z11 = x0 | (~x0 & x1) | (~x0 & ~x1 & x2);
endmodule


