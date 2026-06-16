// Benchmark "mult_4_2_16_exact" written by ABC on Tue Apr 14 16:42:40 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_4_2_16_exact_5_lut ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  assign z00 = x0 ? (x1 ? (~x2 & x3) : (x2 & ~x3)) : (x1 ? (~x2 ^ x3) : (~x2 & x3));
  assign z01 = x1 ? ((~x2 & x3) | (x0 & x2 & ~x3)) : (x0 ? (~x2 ^ x3) : (x2 & ~x3));
  assign z02 = (x0 & (~x1 | ~x3)) | (x1 & x2 & x3);
  assign z03 = (x1 & (~x3 | (~x0 & ~x2))) | (x0 & x2);
  assign z04 = (~x0 | (x1 & x2)) & (~x2 | ~x3 | x0 | ~x1) & (x1 | x2 | x3);
  assign z05 = (x0 | x3 | (~x1 & x2)) & (~x1 | x2) & (~x0 | x1 | ~x2);
  assign z06 = x0 ? ((x2 & ~x3) | (~x1 & (x2 | ~x3))) : (x1 ? (~x2 ^ x3) : (~x2 & x3));
  assign z07 = (x2 & (~x1 ^ x3)) | (x1 & (x3 ? ~x0 : ~x2));
  assign z08 = (x2 | (x3 & (~x0 | ~x1))) & (x0 | ~x2 | ~x3);
  assign z09 = (x0 & ~x3 & (x1 | x2)) | (x3 & (~x0 | (~x1 & ~x2)));
  assign z10 = x0 ? (~x1 & ~x2) : x1;
  assign z11 = (x0 | ((x2 | x3) & (~x1 | (x2 & x3)))) & (~x0 | x1 | ~x2) & (~x1 | x2 | x3);
endmodule


