// Benchmark "mult_4_2_12_exact" written by ABC on Tue Apr 14 18:17:49 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_4_2_12_exact_3_lut ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n18, n19, n20, n22, n23, n24, n26, n27, n28, n29, n31, n32, n33, n35,
    n37, n39, n40, n42, n43, n45, n46, n48, n49;
  assign z00 = n19 | (~x0 & ~n18);
  assign n18 = x1 ? (x2 | x3) : (~x2 | ~x3);
  assign n19 = ~n20 & x0 & ~x2;
  assign n20 = ~x1 & x3;
  assign z01 = n23 | (x2 & ~n22);
  assign n22 = x0 ? ~x3 : (~x1 & x3);
  assign n23 = n24 & x0 & x1;
  assign n24 = ~x2 & x3;
  assign z02 = n29 | n26 | n28;
  assign n26 = ~n27 & (~x0 ^ ~x1);
  assign n27 = ~x2 ^ ~x3;
  assign n28 = ~x3 & x0 & x2;
  assign n29 = n24 & ~x0 & ~x1;
  assign z03 = ~n31 | (x1 & ~n27);
  assign n31 = ~n33 & (~n24 | ~n32);
  assign n32 = ~x0 & x1;
  assign n33 = ~x3 & ~x1 & x2;
  assign z04 = n35 | x1 | x2;
  assign n35 = ~x2 & (x0 | x3);
  assign z07 = ~n37 | (~x1 & n35);
  assign n37 = (~x1 & ~x2) | (x0 & x1 & x2);
  assign z08 = n40 | n29 | n39;
  assign n39 = ~x0 & (x1 | x2);
  assign n40 = x2 & x0 & x1;
  assign z09 = x2 ? ~n42 : ~n43;
  assign n42 = x0 ? (~x1 & x3) : x1;
  assign n43 = (x1 & (x0 | x3)) | (~x0 & ~x1 & ~x3);
  assign z10 = x1 ? ~n46 : ~n45;
  assign n45 = x0 ? (x2 ^ x3) : (x2 ^ ~x3);
  assign n46 = ~x0 ^ (~x2 & x3);
  assign z11 = x2 ? ~n48 : ~n49;
  assign n48 = x1 ^ ~x3;
  assign n49 = (x1 & ~x3) | (~x0 & (x1 | ~x3));
  assign z05 = z04;
  assign z06 = z04;
endmodule


