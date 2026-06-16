// Benchmark "D:\BF_in_AO\mult_mod_3329\Truth_bables\minimization_strong\mult_3_2_9_strong" written by ABC on Tue Mar 10 02:32:27 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3_2_9_strong ( 
    x0, x1, x2,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 & (~x1 | ~x2);
  assign z01 = x1 & (~x2 | (~x0 & x2));
  assign z02 = x2 & (~x1 | (~x0 & x1));
  assign z03 = 1'b0;
  assign z04 = x2 & x0 & x1;
  assign z05 = x2 & x0 & x1;
  assign z06 = x2 & x0 & x1;
  assign z07 = x2 & x0 & x1;
  assign z08 = x2 & x0 & x1;
  assign z09 = x2 & x0 & x1;
  assign z10 = x2 & x0 & x1;
  assign z11 = x2 & x0 & x1;
endmodule


