// Benchmark "table_01_exact" written by ABC on Thu May 14 21:23:53 2026

module mult_6x2_01_exact_aig ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n24, n26, n27, n29, n30, n33, n35, n36, n38, n39, n42, n44,
    n45;
  assign n20 = x0 & x3;
  assign n21 = x1 & x2;
  assign z00 = n20 & n21;
  assign z03 = x1 & x3;
  assign n24 = x0 & x2;
  assign z01 = ~z03 & n24;
  assign n26 = n20 & ~n21;
  assign n27 = ~n20 & n21;
  assign z02 = n26 | n27;
  assign n29 = x0 & x5;
  assign n30 = x1 & x4;
  assign z04 = n29 & n30;
  assign z07 = x1 & x5;
  assign n33 = x0 & x4;
  assign z05 = ~z07 & n33;
  assign n35 = n29 & ~n30;
  assign n36 = ~n29 & n30;
  assign z06 = n35 | n36;
  assign n38 = x0 & x7;
  assign n39 = x1 & x6;
  assign z08 = n38 & n39;
  assign z11 = x1 & x7;
  assign n42 = x0 & x6;
  assign z09 = ~z11 & n42;
  assign n44 = n38 & ~n39;
  assign n45 = ~n38 & n39;
  assign z10 = n44 | n45;
endmodule


