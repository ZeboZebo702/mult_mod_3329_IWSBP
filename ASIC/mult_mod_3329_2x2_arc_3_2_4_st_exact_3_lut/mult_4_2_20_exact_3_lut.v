// Benchmark "mult_4_2_20_exact" written by ABC on Tue Apr 14 18:17:06 2026

module mult_4_2_20_exact_3_lut ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n18, n19, n21, n23, n24, n26, n28, n29, n30, n32, n33, n34, n36, n38,
    n39, n40, n41, n43, n44, n48;
  assign z00 = ~n19 | (~x2 & ~n18);
  assign n18 = x0 ? ~x3 : (~x1 | x3);
  assign n19 = ~x2 & (~x0 ^ x3);
  assign z01 = ~x0 & ~n21;
  assign n21 = ~x1 ^ (x2 | x3);
  assign z02 = x2 ? ~n23 : ~n24;
  assign n23 = x0 ^ ~x1;
  assign n24 = ~x0 & (~x1 | ~x3);
  assign z03 = x2 ? x1 : ~n26;
  assign n26 = x0 ? (x1 | x3) : (~x1 | ~x3);
  assign z04 = ~n29 | (n28 & ~n30);
  assign n28 = x0 & x3;
  assign n29 = (~x2 | x3) & (x0 | x2 | ~x3);
  assign n30 = ~x1 ^ ~x2;
  assign z05 = n33 | (n32 & n34);
  assign n32 = x2 & ~x3;
  assign n33 = x3 & (~x0 | ~x1);
  assign n34 = x0 & x1;
  assign z06 = x1 ? ~n36 : x0;
  assign n36 = x0 ? (x2 | x3) : (~x2 | ~x3);
  assign z07 = ~n41 | n38 | n40;
  assign n38 = ~n39 & ~x0 & x2;
  assign n39 = x1 ^ ~x3;
  assign n40 = n34 & ~x2 & ~x3;
  assign n41 = x0 ? (x1 | ~x2) : (~x1 | x2);
  assign z08 = x1 ? ~n43 : ~n44;
  assign n43 = x0 ? (~x2 ^ ~x3) : (x2 ^ ~x3);
  assign n44 = x0 ^ (~x2 | x3);
  assign z09 = x1 ^ (~x2 & x3);
  assign z10 = ~x2 ^ ~x3;
  assign z11 = ~x3 & ~n48;
  assign n48 = ~x2 & ~x0 & ~x1;
endmodule


