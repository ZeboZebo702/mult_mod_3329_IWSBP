// Benchmark "D:\BF_in_AO\mult_mod_3329\mult_mod_3329_2x2_arc_3\minimization_strong\mult_3_2_18_strong" written by ABC on Wed Mar 25 02:30:39 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3_2_18_strong ( 
    x0, x1, x2,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = ~x1 & (x0 | (~x0 & x2));
  assign z01 = ~x2 & (x0 | (~x0 & x1));
  assign z02 = x1;
  assign z03 = x2 & (~x0 | (x0 & ~x1));
  assign z04 = x0 ? (~x1 ^ x2) : (~x1 & x2);
  assign z05 = x1 ? (~x0 ^ x2) : x0;
  assign z06 = x1 ^ x2;
  assign z07 = x2;
  assign z08 = x0 & x1;
  assign z09 = x0 ? ~x1 : (x1 & x2);
  assign z10 = (~x1 & (x0 | (~x0 & x2))) | (~x0 & x1 & ~x2);
  assign z11 = x0 ? x2 : (x1 & ~x2);
endmodule


