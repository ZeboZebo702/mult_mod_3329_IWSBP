// Benchmark "mult_3x3_2_18_exact" written by ABC on Tue Apr 14 21:29:44 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3x3_2_18_exact_5_lut ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n25, n26, n27, n28, n30, n31, n33, n34, n36, n37,
    n39, n40, n42, n43, n44, n45, n47, n48, n49, n50, n51, n53, n54, n56,
    n57, n59, n60, n61, n62, n63, n64, n65, n67, n68, n69;
  assign z00 = n21 | (x3 & ~n20) | (~x3 & x4 & ~n23);
  assign n20 = (x0 | ~x1 | (x2 ? (~x4 | ~x5) : x5)) & (x1 | ~x5 | (x2 ? x4 : ~x0));
  assign n21 = ~n22 & ((~x1 & ~x3 & x5) | (x3 & ~x5));
  assign n22 = x2 ? x4 : ~x0;
  assign n23 = (~x1 | (x2 ^ x5)) & (~x0 | x2 | x5);
  assign z01 = ~n28 | (~x5 & ~n25) | (x5 & ~n26 & n27);
  assign n25 = (~x0 & ~x1 & (~x2 | x3)) | (~x2 & (x4 ? x3 : x1)) | (~x4 & (~x3 | (x0 & x2)));
  assign n26 = x2 & (~x3 | ~x4);
  assign n27 = x0 & x1;
  assign n28 = (x0 | ((~x1 | x2 | (~x3 & ~x5)) & (x1 | ~x2 | ~x3 | x5))) & (~x0 | x1 | x2 | x3 | ~x5);
  assign z02 = x2 ? ~n31 : ~n30;
  assign n30 = (~x1 | ((x3 | ~x5 | (x0 & x4)) & (~x0 | ~x3 | x5))) & (~x0 | ~x3 | (x5 ? x1 : ~x4));
  assign n31 = (~x0 | ~x3 | ((x4 | x5) & (~x1 | ~x4 | ~x5))) & (~x5 | (x1 ? (x4 | (x0 & x3)) : (x3 | ~x4))) & (x0 | ~x4 | (x1 & (x3 | x5)));
  assign z03 = x5 ? ~n33 : ~n34;
  assign n33 = (~x0 | (x1 ? (x2 ? (~x3 | x4) : (x3 | ~x4)) : (~x3 | (x2 & ~x4)))) & (~x2 | ((x0 | (x3 & (x1 | x4))) & (x1 | x3 | x4))) & (x2 | ~x3 | x0 | ~x1);
  assign n34 = (~x3 | ((~x1 | (x0 ? x4 : (~x2 | ~x4))) & (~x0 | ((~x2 | x4) & (x1 | x2 | ~x4))))) & (~x0 | ~x2 | x3 | ~x4);
  assign z04 = x0 ? ~n37 : ~n36;
  assign n36 = (~x2 | ((~x3 | ~x4 | ~x5) & (x1 | x4 | (x3 ^ ~x5)))) & (~x1 | ((~x3 | ~x4 | ~x5) & (x2 | (x3 ? x4 : (~x4 | x5)))));
  assign n37 = (x1 & (x2 ? (x3 & ~x5) : ~x3)) | (~x1 & (x2 ? x5 : (~x4 & ~x5))) | (~x4 & ((~x3 & ~x5) | (x2 & x3 & x5))) | (~x2 & x4 & x5);
  assign z05 = x3 ? ~n39 : ~n40;
  assign n39 = (~x4 & ((~x2 & ~x5) | (x0 & x1 & x2 & x5))) | (x4 & ((x0 & x2 & (~x1 ^ ~x5)) | (~x0 & (x1 ^ ~x5)) | (x1 & ~x2 & x5))) | (~x1 & ~x2 & (~x0 | ~x5));
  assign n40 = (x2 | ((~x1 | ((~x4 | x5) & (x0 | x4 | ~x5))) & (~x0 | ~x4 | ~x5))) & (x1 | ~x2 | ~x4 | x5) & (~x0 | ~x5 | (x1 & (~x2 | x4)));
  assign z06 = n43 | ~n44 | (x1 & ~n42);
  assign n42 = (~x0 | (x2 ? (~x3 ^ (x4 & ~x5)) : (x3 ? (~x4 | x5) : ~x5))) & (~x2 | ~x5 | ((~x3 | x4) & (x0 | x3 | ~x4)));
  assign n43 = ~x0 & ((x1 & ~x2 & x5) | (x2 & ((x4 & ~x5) | (~x1 & ~x4 & x5))));
  assign n44 = ~n45 | ((~x2 | x3 | (~x4 & ~x5)) & (~x3 | ~x4 | ~x5));
  assign n45 = x0 & ~x1;
  assign z07 = n48 | ~n49 | (x2 & ~n47);
  assign n47 = x1 ? ((~x3 | ~x4 | x5) & (~x0 | (x4 ^ ~x5))) : ((~x3 | (~x5 & (~x0 | x4))) & (x0 | ~x5));
  assign n48 = ~x2 & n27 & ((x4 & (~x3 | x5)) | (x3 & ~x4 & ~x5));
  assign n49 = x3 ? ((x5 | n51) & (x2 | n50)) : (~x5 | (n51 & (~x2 | n50)));
  assign n50 = x0 ? (x1 | x4) : (~x1 | ~x4);
  assign n51 = (~x2 | x4 | x0 | ~x1) & (x2 | ~x4 | ~x0 | x1);
  assign z08 = x0 ? ~n54 : ~n53;
  assign n53 = (~x4 | ((~x1 | x3 | (~x2 & ~x5)) & (~x2 | ~x3 | (x1 & ~x5)))) & (~x3 | x4 | ~x1 | x2);
  assign n54 = (x3 | (x1 ? (x4 | ~x5) : (~x4 | x5))) & (~x1 | (x2 ? ~x5 : (~x3 | x5))) & (~x3 | ((x1 | x4 | (x2 ^ ~x5)) & (~x4 | (~x2 ^ ~x5))));
  assign z09 = x1 ? ~n56 : ~n57;
  assign n56 = (~x0 | (~x3 & (x2 | ~x4 | ~x5))) & (x0 | x3 | (x2 ? ~x5 : (~x4 | x5))) & (~x3 | (x2 ? (~x4 | x5) : (x4 | ~x5)));
  assign n57 = (~x2 | (x0 ? (~x4 | x5) : (x3 ? x4 : (~x4 | ~x5)))) & (~x0 | (x3 ? (~x4 & (x2 | x5)) : (x4 | ~x5)));
  assign z10 = n60 | n62 | ~n63 | (x3 & ~n59);
  assign n59 = (~x1 | (((~x2 ^ ~x5) | (x0 ^ x4)) & (~x4 | ~x5 | x0 | x2))) & (~x0 | x1 | ~x2 | x5);
  assign n60 = ~n61 & (~x4 ^ ~x5);
  assign n61 = x0 ? (x1 | x2) : (x3 | (~x1 ^ x2));
  assign n62 = x1 & ((x0 & (x2 ? (~x3 & x4) : (x3 & ~x4))) | (x3 & x4 & ~x0 & x2));
  assign n63 = ~n64 & (~x0 | x3 | ~x5 | n65);
  assign n64 = ~x4 & x3 & x2 & ~x0 & ~x1;
  assign n65 = x1 ? (x2 | ~x4) : ~x2;
  assign z11 = (~x0 & ~n68) | (~x5 & ~n67) | (x0 & x5 & ~n69);
  assign n67 = (~x0 | ((x2 | ~x3 | x4) & (x1 | ~x4 | (x2 & x3)))) & (~x3 | ~x4 | ~x1 | ~x2);
  assign n68 = (~x1 | x2 | x4 | (~x3 & ~x5)) & (~x2 | ((~x3 | ~x5) & (~x4 | x5 | x1 | x3)));
  assign n69 = (~x2 | x3) & (~x1 | x2 | ~x4);
endmodule


