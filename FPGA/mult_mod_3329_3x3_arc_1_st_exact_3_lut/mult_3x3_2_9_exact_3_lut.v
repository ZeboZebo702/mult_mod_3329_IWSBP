// Benchmark "mult_3x3_2_9_exact" written by ABC on Tue Apr 14 20:47:15 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3x3_2_9_exact_3_lut ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34,
    n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n49,
    n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
    n64, n65, n66, n68, n69, n70, n71, n72, n73, n74, n75, n76, n78, n79,
    n80, n81, n82, n83, n84, n85, n86, n87, n88, n90, n91, n92, n94, n95,
    n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
    n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119;
  assign z00 = ~n25 | (~x3 & ~n20);
  assign n20 = ~n23 & (x2 | n21);
  assign n21 = (~x1 & (~x4 | ~n22)) | (~x4 & ~n22);
  assign n22 = x0 & x5;
  assign n23 = n24 & x0 & ~x1;
  assign n24 = ~x4 & x5;
  assign n25 = ~n30 & (x5 | n26);
  assign n26 = ~n29 & (~x3 | n27);
  assign n27 = x0 ? (x2 | n28) : ~x2;
  assign n28 = x1 ^ ~x4;
  assign n29 = x4 & ~x0 & x1;
  assign n30 = n31 & n32;
  assign n31 = ~x1 & x2;
  assign n32 = x5 & x3 & ~x4;
  assign z01 = ~n39 | (x1 & ~n34);
  assign n34 = ~n38 & (~x5 | n35);
  assign n35 = ~n37 & (x2 | ~n36);
  assign n36 = ~x4 & (x0 | x3);
  assign n37 = ~x0 & ~x3;
  assign n38 = x4 & x0 & x3;
  assign n39 = ~n44 & (x1 | n40);
  assign n40 = ~n43 & (~n41 | n42);
  assign n41 = x0 & x3;
  assign n42 = x2 ? (~x4 | ~x5) : (x4 | x5);
  assign n43 = ~x5 & x2 & x4;
  assign n44 = x2 & (n45 | n46);
  assign n45 = x4 & ~x0 & ~x3;
  assign n46 = n32 & x0 & x1;
  assign z02 = ~n55 | (x3 & ~n48);
  assign n48 = x1 ? n49 : n53;
  assign n49 = ~n50 & (x0 | n52);
  assign n50 = ~n51 & x0 & ~x4;
  assign n51 = x2 ^ ~x5;
  assign n52 = x2 ? (~x4 | ~x5) : x5;
  assign n53 = ~n54 & (~x2 | ~n24);
  assign n54 = ~n51 & x0 & x4;
  assign n55 = ~n64 & ~n56 & ~n62;
  assign n56 = ~n57 & (n58 | n60);
  assign n57 = x2 & x5;
  assign n58 = n59 & x0 & ~x1;
  assign n59 = ~x3 & x4;
  assign n60 = n61 & ~x0 & x1;
  assign n61 = x3 & ~x4;
  assign n62 = n63 & (x2 ^ ~x5);
  assign n63 = x4 & x0 & x1;
  assign n64 = ~n65 & x2 & x5;
  assign n65 = ~n66 & (x1 | x3);
  assign n66 = ~x0 & ~x4;
  assign z03 = n74 | (x3 & ~n68);
  assign n68 = ~n72 & (~x1 | n69);
  assign n69 = ~n71 & (~n24 | ~n70);
  assign n70 = ~x0 & x2;
  assign n71 = ~n51 & (~x0 ^ ~x4);
  assign n72 = ~n73 & x0 & ~x1;
  assign n73 = x2 ? (~x4 | x5) : (x4 ^ x5);
  assign n74 = ~n75 & x0 & x4;
  assign n75 = ~n76 & (~x1 | n51);
  assign n76 = n31 & ~x3 & x5;
  assign z04 = n78 | n82;
  assign n78 = x0 & (n79 | n81);
  assign n79 = ~x3 & (x4 | n80);
  assign n80 = n24 & x1 & x2;
  assign n81 = x3;
  assign n82 = ~x0 & (n83 | n88);
  assign n83 = x1 & (n84 | n86);
  assign n84 = x3 & ~n85;
  assign n85 = 1'b0;
  assign n86 = n87 & x2 & ~x3;
  assign n87 = x4 & x5;
  assign n88 = n87 & x3 & n31;
  assign z09 = n82 | (x0 & ~n90);
  assign n90 = ~n79 & (~x3 | n91);
  assign n91 = (x4 & n92) | (x1 & (x4 | n92));
  assign n92 = x2 & x5;
  assign z10 = x1 ? ~n94 : ~n102;
  assign n94 = x5 ? n95 : n98;
  assign n95 = x2 ? n96 : n97;
  assign n96 = (x4 & (x0 | x3)) | (~x0 & ~x3 & ~x4);
  assign n97 = x0 ? ~x4 : ~x3;
  assign n98 = ~n100 & (~x4 | n99);
  assign n99 = ~x0 & (~x2 | ~x3);
  assign n100 = ~n101 & ~x0 & x3;
  assign n101 = x2 & x4;
  assign n102 = ~n107 & (~x0 | n103);
  assign n103 = ~n105 & (~x4 | n104);
  assign n104 = x3 & (~x2 | ~x5);
  assign n105 = n106 & ~x4 & ~x5;
  assign n106 = ~x2 & x3;
  assign n107 = n87 & x3 & n70;
  assign z11 = x1 ? ~n109 : ~n116;
  assign n109 = x5 ? n110 : n113;
  assign n110 = ~n111 & (~n61 | ~n112);
  assign n111 = x2 & (x0 | x4);
  assign n112 = ~x0 & ~x2;
  assign n113 = ~n115 & (x2 | n114);
  assign n114 = ~x3 & (~x0 | ~x4);
  assign n115 = ~x4 & ~x0 & x3;
  assign n116 = ~n107 & (~x0 | n117);
  assign n117 = ~n119 & (~x3 | n118);
  assign n118 = x2 ? (x4 & ~x5) : (~x4 ^ x5);
  assign n119 = n59 & ~n57;
  assign z05 = n78 | n82;
  assign z06 = n78 | n82;
  assign z07 = n78 | n82;
  assign z08 = n78 | n82;
endmodule


