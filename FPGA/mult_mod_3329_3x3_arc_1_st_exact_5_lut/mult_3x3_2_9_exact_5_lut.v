// Benchmark "mult_3x3_2_9_exact" written by ABC on Tue Apr 14 20:47:29 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3x3_2_9_exact_5_lut ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n24, n25, n26, n28, n29, n30, n31, n32, n34, n35, n37,
    n38, n40, n42, n43, n45, n46;
  assign z00 = n22 | (~x5 & ~n21) | (~x3 & ~n20);
  assign n20 = (~x0 | ~x5 | (x2 & (x1 | x4))) & (~x1 | x2 | ~x4);
  assign n21 = (~x3 | (x0 ? (x2 | (~x1 ^ x4)) : ~x2)) & (x0 | ~x1 | ~x4);
  assign n22 = x5 & ~x4 & x3 & ~x1 & x2;
  assign z01 = (x2 & ~n26) | (~x1 & ~n25) | (x1 & ~n24);
  assign n24 = (~x5 | ((x2 | x4) & (x0 | x3))) & (~x0 | ~x3 | ~x4);
  assign n25 = (~x0 | ~x3 | (x2 ? ~x4 : (x4 | x5))) & (~x2 | ~x4 | x5);
  assign n26 = (x0 | x3 | ~x4) & (~x0 | ~x1 | ~x3 | x4 | ~x5);
  assign z02 = ~n29 | (x3 & ~n28);
  assign n28 = x1 ? (x0 ? (x4 | (~x2 ^ x5)) : (x2 ? (~x4 | ~x5) : x5)) : ((~x2 | x4 | ~x5) & (~x0 | ~x4 | (~x2 ^ x5)));
  assign n29 = ~n31 & ((n30 & (~x2 | ~x5)) | (x2 & x5 & n32));
  assign n30 = (x0 | ~x1 | ~x3 | x4) & (x3 | ~x4 | ~x0 | x1);
  assign n31 = x0 & x1 & x4 & (x2 ^ ~x5);
  assign n32 = (x0 | x4) & (x1 | x3);
  assign z03 = (x3 & ~n34) | (x0 & x4 & ~n35);
  assign n34 = (~x1 | (((~x2 ^ x5) | (~x0 ^ x4)) & (x0 | ~x2 | x4 | ~x5))) & (~x0 | x1 | (x2 ? (~x4 | x5) : (~x4 ^ ~x5)));
  assign n35 = (~x1 | (x2 ^ ~x5)) & (x3 | ~x5 | x1 | ~x2);
  assign z04 = x0 ? ~n37 : ~n38;
  assign n37 = ~x3 & ~x4 & (~x1 | ~x2 | ~x5);
  assign n38 = (~x1 | (~x3 & (~x2 | ~x4 | ~x5))) & (~x4 | ~x5 | ~x2 | ~x3);
  assign z09 = x0 ? ~n40 : ~n38;
  assign n40 = x3 ? ((x2 & x4 & x5) | (x1 & (x4 | (x2 & x5)))) : (~x4 & (~x1 | ~x2 | ~x5));
  assign z10 = x1 ? ~n42 : ~n43;
  assign n42 = (x2 & x4 & x5 & (x0 | x3)) | ((~x2 | ~x5) & (x0 ? ~x4 : ~x3)) | (~x0 & ~x3 & ~x4);
  assign n43 = (~x4 | ~x5 | ~x2 | ~x3) & (~x0 | ((x3 | ~x4) & (x4 | x5 | x2 | ~x3)));
  assign z11 = x1 ? ~n45 : ~n46;
  assign n45 = (~x0 | (x2 ? ~x5 : (~x4 | x5))) & (~x2 | ~x4 | ~x5) & (~x3 | ((x0 | x4 | (x2 & x5)) & (x2 | x5)));
  assign n46 = (~x3 | ((~x2 | ~x4 | ~x5) & (~x0 | x4 | (~x2 & ~x5)))) & (~x0 | ~x4 | ((x3 | x5) & (x2 | (x3 & x5))));
  assign z05 = z04;
  assign z06 = z04;
  assign z07 = z04;
  assign z08 = z04;
endmodule


