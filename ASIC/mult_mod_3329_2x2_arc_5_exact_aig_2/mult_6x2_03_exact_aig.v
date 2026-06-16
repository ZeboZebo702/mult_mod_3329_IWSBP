// Benchmark "table_03_exact" written by ABC on Thu May 14 22:08:32 2026

module mult_6x2_03_exact_aig ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
    n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48, n49,
    n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n61, n62, n63, n64,
    n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n76, n77, n78, n79,
    n80, n81, n82, n83, n84, n85, n86, n87, n89, n90, n91, n92, n93, n94,
    n96, n97, n98, n99, n100, n102, n103, n104, n105, n106, n107, n108,
    n109, n110, n112, n113, n114, n115, n116, n117, n118, n119, n122, n123,
    n125, n126;
  assign n20 = x4 & x5;
  assign n21 = x0 & n20;
  assign n22 = ~x3 & n21;
  assign n23 = x1 & x2;
  assign n24 = x0 & x3;
  assign n25 = ~n23 & ~n24;
  assign n26 = x1 & x4;
  assign n27 = ~x2 & n26;
  assign n28 = ~n25 & ~n27;
  assign z00 = ~n22 & n28;
  assign n30 = ~x2 & ~x4;
  assign n31 = x0 & ~n30;
  assign n32 = x1 & x3;
  assign n33 = ~n31 & n32;
  assign n34 = x1 & x5;
  assign n35 = x0 & ~n34;
  assign n36 = ~x6 & ~x7;
  assign n37 = ~x1 & n36;
  assign n38 = ~n32 & ~n37;
  assign n39 = n35 & n38;
  assign n40 = x4 & n39;
  assign n41 = x0 & ~x1;
  assign n42 = ~n32 & ~n41;
  assign n43 = n20 & ~n42;
  assign n44 = ~n40 & ~n43;
  assign n45 = x2 & ~n44;
  assign z01 = n33 | n45;
  assign n47 = ~x5 & n37;
  assign n48 = x4 & n32;
  assign n49 = ~x5 & n48;
  assign n50 = x3 & ~x5;
  assign n51 = n36 & n50;
  assign n52 = ~x4 & ~n51;
  assign n53 = ~n49 & ~n52;
  assign n54 = ~n47 & n53;
  assign n55 = x2 & ~n54;
  assign n56 = ~x2 & ~x3;
  assign n57 = n34 & n56;
  assign n58 = x4 & n57;
  assign n59 = ~n55 & ~n58;
  assign z02 = x0 & ~n59;
  assign n61 = ~x3 & x5;
  assign n62 = ~n50 & ~n61;
  assign n63 = x1 & ~n62;
  assign n64 = x2 & ~n47;
  assign n65 = x4 & ~n64;
  assign n66 = ~n63 & n65;
  assign n67 = ~x4 & ~n32;
  assign n68 = ~x4 & ~n36;
  assign n69 = ~x5 & ~n68;
  assign n70 = ~n67 & ~n69;
  assign n71 = ~n32 & n69;
  assign n72 = x2 & ~n71;
  assign n73 = ~n70 & n72;
  assign n74 = ~n66 & ~n73;
  assign z03 = x0 & ~n74;
  assign n76 = x2 & n36;
  assign n77 = ~x5 & ~n76;
  assign n78 = x0 & ~n77;
  assign n79 = ~n26 & ~n78;
  assign n80 = x0 & n26;
  assign n81 = ~x1 & x2;
  assign n82 = n36 & n81;
  assign n83 = ~n80 & ~n82;
  assign n84 = x5 & ~n83;
  assign n85 = n36 & n80;
  assign n86 = ~n56 & n85;
  assign n87 = ~n84 & ~n86;
  assign z04 = ~n79 & n87;
  assign n89 = n31 & ~n56;
  assign n90 = n36 & n89;
  assign n91 = n34 & ~n90;
  assign n92 = ~x2 & ~n48;
  assign n93 = n35 & n36;
  assign n94 = ~n92 & n93;
  assign z05 = n91 | n94;
  assign n96 = x1 & x7;
  assign n97 = x6 & ~n96;
  assign n98 = ~x7 & ~n92;
  assign n99 = ~x6 & ~n98;
  assign n100 = x0 & ~n99;
  assign z06 = ~n97 & n100;
  assign n102 = ~n30 & ~n56;
  assign n103 = ~x7 & n102;
  assign n104 = ~n97 & ~n103;
  assign n105 = x2 & ~x7;
  assign n106 = x6 & ~n105;
  assign n107 = x2 & ~x6;
  assign n108 = ~x1 & ~n107;
  assign n109 = ~n106 & n108;
  assign n110 = x0 & ~n109;
  assign z07 = ~n104 & n110;
  assign n112 = x0 & x7;
  assign n113 = x1 & x6;
  assign n114 = ~n112 & n113;
  assign n115 = ~n89 & n114;
  assign n116 = x7 & ~n81;
  assign n117 = ~n98 & ~n116;
  assign n118 = x0 & ~n117;
  assign n119 = ~n113 & n118;
  assign z08 = n115 | n119;
  assign z10 = x0 & ~n92;
  assign n122 = ~n116 & z10;
  assign n123 = ~n89 & n96;
  assign z09 = n122 | n123;
  assign n125 = ~x3 & ~n20;
  assign n126 = n23 & ~n125;
  assign z11 = z10 & ~n126;
endmodule


