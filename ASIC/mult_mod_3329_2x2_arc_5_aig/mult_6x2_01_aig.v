// Benchmark "table_01" written by ABC on Thu May 14 22:08:32 2026

module mult_6x2_01_aig ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n24, n26, n28, n29, n32, n34, n36, n37, n40, n42;
  assign n20 = x0 & x3;
  assign n21 = x1 & x2;
  assign z00 = n20 & n21;
  assign z03 = x1 & x3;
  assign n24 = x0 & ~z03;
  assign z01 = x2 & n24;
  assign n26 = ~n20 & ~n21;
  assign z02 = ~z00 & ~n26;
  assign n28 = x0 & x5;
  assign n29 = x1 & x4;
  assign z04 = n28 & n29;
  assign z07 = x1 & x5;
  assign n32 = x0 & ~z07;
  assign z05 = x4 & n32;
  assign n34 = ~n28 & ~n29;
  assign z06 = ~z04 & ~n34;
  assign n36 = x0 & x7;
  assign n37 = x1 & x6;
  assign z08 = n36 & n37;
  assign z11 = x1 & x7;
  assign n40 = x0 & ~z11;
  assign z09 = x6 & n40;
  assign n42 = ~n36 & ~n37;
  assign z10 = ~z08 & ~n42;
endmodule


