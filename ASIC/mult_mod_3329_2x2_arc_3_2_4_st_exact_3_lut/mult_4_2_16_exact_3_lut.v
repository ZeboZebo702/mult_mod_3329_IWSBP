// Benchmark "mult_4_2_16_exact" written by ABC on Tue Apr 14 18:17:23 2026

module mult_4_2_16_exact_3_lut ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n18, n19, n21, n23, n24, n25, n27, n28, n29, n31, n32, n33, n35, n36,
    n38, n39, n40, n41, n42, n44, n45, n46, n48, n49, n51, n52, n55, n56;
  assign z00 = x0 ? ~n18 : ~n19;
  assign n18 = x1 ? (x2 | ~x3) : (~x2 | x3);
  assign n19 = x1 ? (x2 ^ x3) : (x2 | ~x3);
  assign z01 = x0 ? ~n21 : ~n18;
  assign n21 = x1 ? (~x2 ^ x3) : (~x2 ^ ~x3);
  assign z02 = n24 | (x0 & ~n23);
  assign n23 = x3 & x1 & ~x2;
  assign n24 = n25 & x2 & x3;
  assign n25 = ~x0 & x1;
  assign z03 = ~n29 | (~n27 & n28);
  assign n27 = x0 ^ ~x2;
  assign n28 = x1 & ~x3;
  assign n29 = x0 ? ~x2 : (~x1 | x2);
  assign z04 = n32 | (x1 & ~n31);
  assign n31 = x0 ? ~x2 : (x2 & x3);
  assign n32 = ~x0 & n33;
  assign n33 = ~x1 & (x2 | x3);
  assign z05 = x0 ? ~n35 : ~n36;
  assign n35 = ~x1 ^ ~x2;
  assign n36 = (~x2 & ~x3) | (x1 & (~x2 | ~x3));
  assign z06 = n41 | n38 | n40;
  assign n38 = ~n39 & (x2 ^ ~x3);
  assign n39 = x0 ^ ~x1;
  assign n40 = ~x3 & x0 & x2;
  assign n41 = n42 & ~x0 & ~x1;
  assign n42 = ~x2 & x3;
  assign z07 = n44 | ~n45;
  assign n44 = x1 & (~x2 ^ x3);
  assign n45 = ~n46 & (~n42 | ~n25);
  assign n46 = ~x3 & ~x1 & x2;
  assign z08 = n48 | ~n49;
  assign n48 = x2 & (x0 | ~x3);
  assign n49 = ~n42 | (x0 & x1);
  assign z09 = x1 ? ~n51 : ~n52;
  assign n51 = x0 ^ ~x3;
  assign n52 = (~x3 & (~x0 | ~x2)) | (x0 & x2 & x3);
  assign z10 = x0 ? (~x1 & ~x2) : x1;
  assign z11 = x1 ? ~n56 : ~n55;
  assign n55 = x0 ? x2 : (~x2 & ~x3);
  assign n56 = (~x2 & ~x3) | (~x0 & (~x2 | ~x3));
endmodule


