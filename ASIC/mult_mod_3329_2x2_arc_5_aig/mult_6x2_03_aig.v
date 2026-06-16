// Benchmark "table_03" written by ABC on Thu May 14 22:08:32 2026

module mult_6x2_03_aig ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
    n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n49,
    n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64,
    n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77, n78, n79,
    n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n94,
    n95, n96, n97, n98, n99, n101, n102, n104, n105, n106, n107, n108,
    n109, n110, n112, n113, n114, n115, n117, n118, n119, n120, n121, n122,
    n123, n124, n125, n126, n128, n129, n130, n131, n133, n134;
  assign n20 = x0 & x5;
  assign n21 = x4 & n20;
  assign n22 = ~x3 & n21;
  assign n23 = x1 & x4;
  assign n24 = ~x2 & n23;
  assign n25 = x1 & x2;
  assign n26 = x0 & x3;
  assign n27 = ~n25 & ~n26;
  assign n28 = ~n24 & ~n27;
  assign z00 = ~n22 & n28;
  assign n30 = ~x2 & ~x4;
  assign n31 = x0 & ~n30;
  assign n32 = x1 & x3;
  assign n33 = ~n31 & n32;
  assign n34 = ~x6 & ~x7;
  assign n35 = ~x5 & n34;
  assign n36 = x0 & ~n35;
  assign n37 = ~x1 & ~n36;
  assign n38 = ~x0 & ~x5;
  assign n39 = x2 & x4;
  assign n40 = ~n38 & n39;
  assign n41 = x3 & x5;
  assign n42 = ~x3 & ~x5;
  assign n43 = x1 & ~n42;
  assign n44 = ~n41 & n43;
  assign n45 = n40 & ~n44;
  assign n46 = ~n37 & n45;
  assign z01 = n33 | n46;
  assign n48 = x3 & x4;
  assign n49 = ~x3 & ~x4;
  assign n50 = ~x4 & ~n34;
  assign n51 = x1 & ~n50;
  assign n52 = ~n49 & n51;
  assign n53 = ~n48 & n52;
  assign n54 = x2 & ~n53;
  assign n55 = ~x5 & ~n54;
  assign n56 = ~x2 & ~x3;
  assign n57 = x5 & ~n56;
  assign n58 = x1 & ~n57;
  assign n59 = x4 & ~n35;
  assign n60 = ~n58 & n59;
  assign n61 = n31 & ~n60;
  assign z02 = ~n55 & n61;
  assign n63 = ~x5 & n32;
  assign n64 = ~n50 & n63;
  assign n65 = ~x4 & ~n32;
  assign n66 = ~n35 & n65;
  assign n67 = ~n64 & ~n66;
  assign n68 = x2 & ~n67;
  assign n69 = ~x1 & n35;
  assign n70 = ~x2 & ~n44;
  assign n71 = ~n69 & ~n70;
  assign n72 = x4 & ~n71;
  assign n73 = ~n68 & ~n72;
  assign z03 = x0 & ~n73;
  assign n75 = x2 & ~x6;
  assign n76 = ~x1 & n75;
  assign n77 = n20 & ~n23;
  assign n78 = ~n76 & n77;
  assign n79 = x2 & ~x7;
  assign n80 = ~x5 & n79;
  assign n81 = ~n23 & n80;
  assign n82 = ~x1 & x2;
  assign n83 = x7 & n82;
  assign n84 = x5 & n83;
  assign n85 = ~n81 & ~n84;
  assign n86 = x0 & ~x6;
  assign n87 = ~n85 & n86;
  assign n88 = n34 & ~n56;
  assign n89 = x0 & n88;
  assign n90 = ~n20 & n23;
  assign n91 = ~n89 & n90;
  assign n92 = ~n87 & ~n91;
  assign z04 = n78 | ~n92;
  assign n94 = n31 & n88;
  assign n95 = x1 & x5;
  assign n96 = ~n94 & n95;
  assign n97 = x5 & ~n82;
  assign n98 = x0 & x2;
  assign n99 = n23 & n26;
  assign z10 = n98 | n99;
  assign n101 = n34 & z10;
  assign n102 = ~n97 & n101;
  assign z05 = n96 | n102;
  assign n104 = ~n30 & ~n56;
  assign n105 = ~x6 & ~n104;
  assign n106 = ~x1 & ~n75;
  assign n107 = ~n105 & ~n106;
  assign n108 = x6 & x7;
  assign n109 = ~n34 & ~n108;
  assign n110 = x0 & ~n109;
  assign z06 = n107 & n110;
  assign n112 = ~x7 & n107;
  assign n113 = x6 & ~n79;
  assign n114 = ~x1 & n113;
  assign n115 = ~n112 & ~n114;
  assign z07 = x0 & ~n115;
  assign n117 = ~x7 & ~n104;
  assign n118 = x0 & ~n117;
  assign n119 = ~x6 & n118;
  assign n120 = x6 & ~n118;
  assign n121 = ~n119 & ~n120;
  assign n122 = x1 & ~n121;
  assign n123 = ~x2 & x7;
  assign n124 = ~n79 & ~n123;
  assign n125 = x0 & ~n124;
  assign n126 = ~x1 & n125;
  assign z08 = n122 | n126;
  assign n128 = x1 & x7;
  assign n129 = n31 & ~n56;
  assign n130 = n128 & ~n129;
  assign n131 = z10 & ~n128;
  assign z09 = n130 | n131;
  assign n133 = x2 & n43;
  assign n134 = ~n49 & n133;
  assign z11 = z10 & ~n134;
endmodule


