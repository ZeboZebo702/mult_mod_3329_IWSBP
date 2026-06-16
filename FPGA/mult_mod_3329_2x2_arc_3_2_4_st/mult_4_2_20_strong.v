// Benchmark "D:\BF_in_AO\mult_mod_3329\mult_mod_3329_2x2_arc_3\minimization_strong\mult_4_2_20_strong" written by ABC on Wed Mar 25 02:30:43 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_4_2_20_strong ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = (~x1 & x3) | (x1 & ~x3) | (x2 & (~x1 ^ x3)) | (~x2 & ((x1 & x3) | (x0 & ~x1 & ~x3)));
  assign z01 = ~x0 & (x1 ? (~x2 & ~x3) : (x2 | (~x2 & x3)));
  assign z02 = (x0 & ~x1) | (~x0 & x1 & x2) | (x1 & ~x2 & (x3 | (x0 & ~x3)));
  assign z03 = x2 ? x1 : (x0 ? (~x1 & ~x3) : (x1 & x3));
  assign z04 = (~x0 & (x2 ^ x3)) | (x0 & x2 & ~x3) | (x0 & x3 & (~x1 ^ x2));
  assign z05 = (x3 & (~x0 | (x0 & ~x1))) | (x2 & ~x3 & x0 & x1);
  assign z06 = x1 ? (x0 ? (~x2 & ~x3) : (x2 & x3)) : x0;
  assign z07 = (x0 & ~x1 & x2) | (~x0 & x1 & ~x2) | (~x0 & x2 & (x1 ^ x3)) | (~x2 & ~x3 & x0 & x1);
  assign z08 = x1 ? (x0 ? (x2 ^ ~x3) : (x2 ^ x3)) : (x2 ? (~x0 ^ x3) : x0);
  assign z09 = x1 ? (x2 | (~x2 & ~x3)) : (~x2 & x3);
  assign z10 = (~x1 & (x2 ^ x3)) | (x1 & x2 & ~x3) | (x1 & ~x2 & x3);
  assign z11 = ~x3 & (x0 | (~x0 & x1) | (~x0 & ~x1 & x2));
endmodule


