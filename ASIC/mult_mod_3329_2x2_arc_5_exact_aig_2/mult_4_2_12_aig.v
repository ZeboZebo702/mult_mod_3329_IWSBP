// Benchmark "mult_4_2_12" written by ABC on Thu May 14 22:22:02 2026

module mult_4_2_12_aig ( 
    x0, x1, x2, x3,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30,
    n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46,
    n47, n48, n51, n52, n54, n55, n57, n58, n59, n60, n62, n63, n64, n66,
    n67;
  assign n16 = ~x1 & x3;
  assign n17 = x0 & ~x2;
  assign n18 = ~n16 & n17;
  assign n19 = x1 & ~x3;
  assign n20 = ~n16 & ~n19;
  assign n21 = ~x2 & x3;
  assign n22 = x2 & ~x3;
  assign n23 = ~n21 & ~n22;
  assign n24 = ~x0 & n23;
  assign n25 = ~n20 & n24;
  assign z00 = n18 | n25;
  assign n27 = ~x1 & ~x2;
  assign n28 = x0 & x3;
  assign n29 = ~x0 & x2;
  assign n30 = ~n16 & n29;
  assign n31 = ~n28 & ~n30;
  assign z01 = ~n27 & ~n31;
  assign n33 = x0 & n22;
  assign n34 = x0 & ~x1;
  assign n35 = ~x0 & ~x2;
  assign n36 = ~x1 & n35;
  assign n37 = x3 & n36;
  assign n38 = ~x0 & x1;
  assign n39 = ~n37 & ~n38;
  assign n40 = ~n34 & n39;
  assign n41 = ~n23 & ~n37;
  assign n42 = ~n40 & ~n41;
  assign z02 = n33 | n42;
  assign n44 = ~x1 & x2;
  assign n45 = ~x3 & n44;
  assign n46 = x1 & ~n22;
  assign n47 = x0 & n21;
  assign n48 = n46 & ~n47;
  assign z03 = n45 | n48;
  assign z04 = x3 | ~n36;
  assign n51 = x1 & x2;
  assign n52 = ~n27 & ~n51;
  assign z07 = ~n40 | n52;
  assign n54 = ~x1 & ~n29;
  assign n55 = ~n17 & ~n54;
  assign z08 = n37 | n55;
  assign n57 = ~n20 & n35;
  assign n58 = x0 & ~n52;
  assign n59 = ~n28 & n44;
  assign n60 = ~n58 & ~n59;
  assign z09 = n57 | ~n60;
  assign n62 = ~n21 & ~n45;
  assign n63 = x0 & n62;
  assign n64 = ~x0 & ~n62;
  assign z10 = n63 | n64;
  assign n66 = ~n17 & n20;
  assign n67 = ~x2 & n19;
  assign z11 = ~n66 & ~n67;
  assign z05 = z04;
  assign z06 = z04;
endmodule


