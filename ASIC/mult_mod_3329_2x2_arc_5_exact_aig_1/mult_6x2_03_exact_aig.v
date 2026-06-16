// Benchmark "table_03_exact" written by ABC on Thu May 14 21:35:52 2026

module mult_6x2_03_exact_aig ( 
    x0, x1, x2, x3, x4, x5, x6, x7,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5, x6, x7;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33, n34,
    n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n49,
    n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64,
    n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
    n79, n80, n81, n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n93,
    n94, n95, n96, n97, n98, n99, n100, n102, n103, n104, n105, n106, n107,
    n108, n109, n110, n111, n112, n114, n115, n116, n117, n118, n120, n121,
    n122, n123, n124, n125, n126, n128, n129, n130, n131, n132, n133, n134,
    n135, n136, n138, n139, n140, n141, n144, n145, n146;
  assign n20 = x1 & x4;
  assign n21 = x3 & ~n20;
  assign n22 = ~x2 & ~n21;
  assign n23 = x4 & x5;
  assign n24 = x1 & ~n23;
  assign n25 = ~x3 & ~n24;
  assign n26 = ~n22 & ~n25;
  assign n27 = x0 & n26;
  assign n28 = ~x0 & x1;
  assign n29 = x2 & n28;
  assign z00 = n27 | n29;
  assign n31 = x3 & x5;
  assign n32 = ~x3 & ~x5;
  assign n33 = x0 & n32;
  assign n34 = ~n31 & ~n33;
  assign n35 = x1 & ~n34;
  assign n36 = ~x6 & ~x7;
  assign n37 = ~x5 & n36;
  assign n38 = ~x1 & ~n37;
  assign n39 = x0 & n38;
  assign n40 = ~n35 & ~n39;
  assign n41 = x4 & ~n40;
  assign n42 = x2 & n41;
  assign n43 = ~x2 & ~x4;
  assign n44 = x0 & ~n43;
  assign n45 = x1 & x3;
  assign n46 = ~n44 & n45;
  assign z01 = n42 | n46;
  assign n48 = x1 & ~x2;
  assign n49 = ~x3 & n23;
  assign n50 = n48 & n49;
  assign n51 = ~x1 & ~n36;
  assign n52 = ~x5 & ~n51;
  assign n53 = x4 & ~n52;
  assign n54 = x2 & ~n53;
  assign n55 = x3 & n37;
  assign n56 = ~x4 & ~n55;
  assign n57 = x3 & x4;
  assign n58 = x1 & ~n57;
  assign n59 = ~n56 & n58;
  assign n60 = n54 & ~n59;
  assign n61 = ~n50 & ~n60;
  assign z02 = x0 & ~n61;
  assign n63 = ~x4 & ~n36;
  assign n64 = x2 & ~x5;
  assign n65 = ~n63 & n64;
  assign n66 = x3 & n65;
  assign n67 = x2 & x6;
  assign n68 = ~x7 & n67;
  assign n69 = ~x4 & n68;
  assign n70 = ~x3 & n69;
  assign n71 = ~n66 & ~n70;
  assign n72 = x1 & ~n71;
  assign n73 = ~x5 & ~x7;
  assign n74 = ~n45 & ~n73;
  assign n75 = ~x1 & x6;
  assign n76 = ~n74 & ~n75;
  assign n77 = ~x4 & ~n76;
  assign n78 = x2 & n77;
  assign n79 = x2 & ~n37;
  assign n80 = ~x1 & ~n79;
  assign n81 = ~n31 & ~n32;
  assign n82 = ~x2 & ~n81;
  assign n83 = ~n80 & ~n82;
  assign n84 = x4 & ~n83;
  assign n85 = ~n78 & ~n84;
  assign n86 = ~n72 & n85;
  assign z03 = x0 & ~n86;
  assign n88 = x2 & n36;
  assign n89 = ~x5 & ~n88;
  assign n90 = x0 & ~n89;
  assign n91 = ~n20 & ~n90;
  assign n92 = x0 & n20;
  assign n93 = ~x1 & x2;
  assign n94 = n36 & n93;
  assign n95 = ~n92 & ~n94;
  assign n96 = x5 & ~n95;
  assign n97 = ~x2 & ~x3;
  assign n98 = n36 & ~n97;
  assign n99 = n92 & n98;
  assign n100 = ~n96 & ~n99;
  assign z04 = ~n91 & n100;
  assign n102 = x1 & n57;
  assign n103 = ~x2 & ~n102;
  assign n104 = ~x5 & ~n103;
  assign n105 = ~n93 & ~n104;
  assign n106 = n36 & ~n105;
  assign n107 = x0 & n106;
  assign n108 = ~x2 & ~n57;
  assign n109 = x0 & ~n108;
  assign n110 = n36 & n109;
  assign n111 = x1 & ~n110;
  assign n112 = x5 & n111;
  assign z05 = n107 | n112;
  assign n114 = x6 & x7;
  assign n115 = n36 & n57;
  assign n116 = ~n114 & ~n115;
  assign n117 = x1 & ~n116;
  assign n118 = ~n88 & ~n117;
  assign z06 = x0 & ~n118;
  assign n120 = x7 & ~n75;
  assign n121 = ~x2 & ~x6;
  assign n122 = ~n68 & ~n121;
  assign n123 = ~x1 & ~n122;
  assign n124 = ~x6 & n108;
  assign n125 = ~n123 & ~n124;
  assign n126 = ~n120 & n125;
  assign z07 = x0 & n126;
  assign n128 = x1 & x6;
  assign n129 = ~x7 & ~n103;
  assign n130 = x7 & ~n93;
  assign n131 = ~n129 & ~n130;
  assign n132 = ~n128 & ~n131;
  assign n133 = x0 & n132;
  assign n134 = ~x7 & n108;
  assign n135 = x0 & ~n134;
  assign n136 = n128 & ~n135;
  assign z08 = n133 | n136;
  assign n138 = ~n93 & ~n129;
  assign n139 = x0 & ~n138;
  assign n140 = x7 & ~n109;
  assign n141 = x1 & n140;
  assign z09 = n139 | n141;
  assign z10 = x0 & ~n103;
  assign n144 = ~x3 & ~n23;
  assign n145 = x1 & ~n144;
  assign n146 = x2 & n145;
  assign z11 = z10 & ~n146;
endmodule


