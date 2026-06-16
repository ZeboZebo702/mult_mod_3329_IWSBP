// Benchmark "mult_3x3_2_15_exact" written by ABC on Tue Apr 14 21:28:10 2026

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module mult_3x3_2_15_exact_3_lut ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
    n34, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
    n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n61, n62, n63,
    n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n76, n77, n78,
    n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
    n93, n94, n95, n96, n98, n99, n100, n101, n102, n103, n104, n105, n106,
    n107, n108, n109, n110, n111, n112, n114, n115, n116, n117, n118, n119,
    n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n131, n132,
    n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
    n145, n146, n147, n148, n149, n151, n152, n153, n154, n155, n156, n157,
    n158, n159, n160, n161, n162, n163, n164, n166, n167, n168, n169, n170,
    n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
    n183, n184, n185, n186, n187, n189, n190, n191, n192, n193, n194, n195,
    n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
    n208, n210, n211, n212, n213, n214, n215, n216, n217, n218;
  assign z00 = x0 ? ~n20 : ~n27;
  assign n20 = ~n24 & (x1 | n21);
  assign n21 = x2 ? n22 : n23;
  assign n22 = x3 ? (x4 | x5) : (~x4 | ~x5);
  assign n23 = x3 ? (x4 | ~x5) : (~x4 | x5);
  assign n24 = ~n25 & n26;
  assign n25 = ~x4 & ~x5;
  assign n26 = ~x3 & x1 & x2;
  assign n27 = x5 ? n33 : n28;
  assign n28 = ~n29 & (~n31 | ~n32);
  assign n29 = n30 & ~x1 & x2;
  assign n30 = ~x3 & x4;
  assign n31 = x1 & ~x2;
  assign n32 = x3 & ~x4;
  assign n33 = ~n36 & (n34 | n35);
  assign n34 = ~x3 ^ ~x4;
  assign n35 = x1 ^ ~x2;
  assign n36 = x3 & x1 & x2;
  assign z01 = n58 | n38 | n48;
  assign n38 = ~x2 & (n39 | n45);
  assign n39 = x1 & (n40 | n42);
  assign n40 = x3 & ~n41;
  assign n41 = x0 ? ~x4 : (x4 | ~x5);
  assign n42 = n43 & n44;
  assign n43 = x4 & ~x5;
  assign n44 = ~x0 & ~x3;
  assign n45 = n47 & ~x4 & ~n46;
  assign n46 = x3 ^ ~x5;
  assign n47 = x0 & ~x1;
  assign n48 = x2 & (n49 | n54);
  assign n49 = ~x0 & (n50 | n52);
  assign n50 = n51 & (x1 | x4);
  assign n51 = ~x3 & x5;
  assign n52 = n53 & ~x4 & ~x5;
  assign n53 = ~x1 & x3;
  assign n54 = x0 & ~n55;
  assign n55 = ~n57 & (~x4 | n56);
  assign n56 = x1 ? ~x3 : (x3 | x5);
  assign n57 = ~x4 & x1 & x3;
  assign n58 = n47 & x3 & n59;
  assign n59 = x4 & x5;
  assign z02 = ~n70 | n61 | n66;
  assign n61 = x4 & (n62 | n64);
  assign n62 = n63 & (~x0 ^ ~x3);
  assign n63 = x1 & (~x2 ^ ~x5);
  assign n64 = n53 & ~n65;
  assign n65 = ~x0 & (~x2 | ~x5);
  assign n66 = x5 & (n67 | n69);
  assign n67 = ~x4 & ~n68;
  assign n68 = (~x2 | x3) & (~x0 | x2 | ~x3);
  assign n69 = n30 & ~x0 & x2;
  assign n70 = ~n71 & (n73 | ~n74);
  assign n71 = n72 & x0 & ~x2;
  assign n72 = ~x5 & x3 & ~x4;
  assign n73 = ~x0 ^ (~x1 & x5);
  assign n74 = ~x4 & x2 & x3;
  assign z03 = ~n92 | n76 | n85;
  assign n76 = x3 & (n77 | n81);
  assign n77 = x0 & ~n78;
  assign n78 = x1 ? n80 : n79;
  assign n79 = x2 ? (~x4 | x5) : (x4 | ~x5);
  assign n80 = x2 ? x5 : (~x4 | ~x5);
  assign n81 = ~x0 & (n82 | n84);
  assign n82 = x2 & ~n83;
  assign n83 = (~x1 | x4 | x5) & (~x4 | ~x5);
  assign n84 = n43 & n31;
  assign n85 = ~x3 & (n86 | n90);
  assign n86 = x0 & (n87 | n89);
  assign n87 = x1 & ~n88;
  assign n88 = x2 ? ~x5 : (~x4 | x5);
  assign n89 = n43 & ~x1 & x2;
  assign n90 = n91 & x2 & n59;
  assign n91 = ~x0 & x1;
  assign n92 = ~n96 & (x2 | n93);
  assign n93 = ~n95 & (~x3 | n94);
  assign n94 = (~x1 | x4) & (~x0 | x1 | ~x4);
  assign n95 = n30 & n47;
  assign n96 = n47 & x2 & n32;
  assign z04 = ~n105 | (~x2 & ~n98);
  assign n98 = n101 & (~x1 | n99);
  assign n99 = x5 ? n100 : ~x4;
  assign n100 = x0 ? x4 : x3;
  assign n101 = ~n104 & ~n95 & ~n102;
  assign n102 = n47 & n103;
  assign n103 = x5 & ~x3 & ~x4;
  assign n104 = n32 & n91;
  assign n105 = ~n58 & (~x2 | n106);
  assign n106 = x4 ? n110 : n107;
  assign n107 = n109 & (~x3 | n108);
  assign n108 = x0 ? ~x1 : (x1 | ~x5);
  assign n109 = (x0 | ~x3 | x5) & (x3 | ~x5);
  assign n110 = ~n111 & (~n44 | n112);
  assign n111 = ~x1 & (~x0 | ~x5);
  assign n112 = ~x1 & x5;
  assign z05 = x2 ? ~n120 : ~n114;
  assign n114 = x5 ? n117 : n115;
  assign n115 = ~n116 & (~n30 | ~n91);
  assign n116 = n32 & n47;
  assign n117 = ~n119 & (~x1 | n118);
  assign n118 = ~x4 & ~x0 & x3;
  assign n119 = ~n34 & n47;
  assign n120 = n125 & (x0 | n121);
  assign n121 = ~n123 & (x4 | n122);
  assign n122 = x1 ? (~x3 | ~x5) : (x3 ^ ~x5);
  assign n123 = n43 & ~n124;
  assign n124 = x1 & x3;
  assign n125 = ~n126 & ~n128;
  assign n126 = ~n127 & (x0 | x4);
  assign n127 = x1 ? (~x3 | x5) : (x3 | ~x5);
  assign n128 = ~n129 & (~x1 ^ ~x3);
  assign n129 = x0 ? (~x4 | x5) : (x4 | ~x5);
  assign z06 = x3 ? ~n138 : ~n131;
  assign n131 = x2 ? n135 : n132;
  assign n132 = ~n134 & (~n133 | ~n91);
  assign n133 = ~x4 & x5;
  assign n134 = n43 & n47;
  assign n135 = ~n136 & (~x5 | n137);
  assign n136 = ~n25 & (x0 ^ ~x1);
  assign n137 = x0 ? (x1 | ~x4) : ~x1;
  assign n138 = x1 ? n139 : n146;
  assign n139 = ~n144 & ~n140 & ~n142;
  assign n140 = x0 & ~n141;
  assign n141 = x2 ? x4 : (~x4 | ~x5);
  assign n142 = ~x5 & ~n143;
  assign n143 = x0 ? (~x2 | ~x4) : (x2 | x4);
  assign n144 = ~n145 & ~x0 & x5;
  assign n145 = ~x2 & ~x4;
  assign n146 = ~n148 & (~x2 | n147);
  assign n147 = x0 ? (x4 | x5) : (~x4 | ~x5);
  assign n148 = x0 & ~n149;
  assign n149 = x4 ? ~x5 : x2;
  assign z07 = x0 ? ~n158 : ~n151;
  assign n151 = x3 ? n154 : n152;
  assign n152 = ~n84 & ~n153;
  assign n153 = n133 & ~x1 & x2;
  assign n154 = ~n156 & (n35 | n155);
  assign n155 = ~x4 ^ ~x5;
  assign n156 = ~n157 & x1 & x5;
  assign n157 = ~x2 ^ ~x4;
  assign n158 = n161 & (~x2 | n159);
  assign n159 = ~n52 & (~x4 | n160);
  assign n160 = ~x1 ^ ~x5;
  assign n161 = ~n162 & (~n72 | ~n31);
  assign n162 = ~n163 & ~n164;
  assign n163 = x4 ^ ~x5;
  assign n164 = (x1 & ~x2 & ~x3) | (x2 & (~x1 | x3));
  assign z08 = ~n177 | n166 | n173;
  assign n166 = x1 & (n167 | n172);
  assign n167 = x0 & (n168 | n170);
  assign n168 = x4 & ~n169;
  assign n169 = x2 ? (~x3 | ~x5) : x5;
  assign n170 = n171 & (x3 | n51);
  assign n171 = x2 & ~x4;
  assign n172 = ~n163 & ~x0 & ~x2;
  assign n173 = x2 & (n174 | n176);
  assign n174 = ~x1 & ~n175;
  assign n175 = x0 ? (x3 ^ ~x5) : (~x3 | ~x5);
  assign n176 = n91 & x3 & ~x5;
  assign n177 = ~n183 & ~n178 & ~n182;
  assign n178 = n47 & (n179 | n180);
  assign n179 = x2 & ~n23;
  assign n180 = ~n181 & x3 & x5;
  assign n181 = x2 & ~x4;
  assign n182 = n47 & ~x2 & n51;
  assign n183 = ~n184 & (n185 | n186);
  assign n184 = x3 ^ ~x4;
  assign n185 = ~n160 & ~x0 & x2;
  assign n186 = n187 & ~x2 & x5;
  assign n187 = x0 & x1;
  assign z09 = ~n202 | n189 | n196;
  assign n189 = x0 & (n190 | n192);
  assign n190 = ~n191 & (~x2 ^ ~x4);
  assign n191 = x1 ? (x3 | ~x5) : (~x3 | x5);
  assign n192 = x2 & (n193 | n195);
  assign n193 = x1 & ~n194;
  assign n194 = x3 ? (~x4 ^ ~x5) : (~x4 | x5);
  assign n195 = n43 & ~x1 & ~x3;
  assign n196 = ~x0 & (n197 | n201);
  assign n197 = x2 & (n198 | ~n199);
  assign n198 = ~x1 & (n43 | n103);
  assign n199 = ~n200 & (~n124 | n163);
  assign n200 = ~x5 & ~x3 & x4;
  assign n201 = n31 & n51;
  assign n202 = n207 & (~x3 | n203);
  assign n203 = ~n205 & (x2 | n204);
  assign n204 = x0 ? (x1 ^ ~x5) : (~x1 | ~x5);
  assign n205 = n206 & ~x0 & ~x1;
  assign n206 = x2 & x5;
  assign n207 = ~n208 & (~n31 | ~n103);
  assign n208 = n47 & x2 & n51;
  assign z10 = x0 ? ~n214 : ~n210;
  assign n210 = n212 & (~n206 | n211);
  assign n211 = x1 ? (~x3 ^ ~x4) : (~x3 | x4);
  assign n212 = ~n213 & (~x2 | n127);
  assign n213 = x3 & x1 & ~x2;
  assign n214 = n218 & (x1 | n215);
  assign n215 = ~n217 & (x2 | n216);
  assign n216 = x3 ? (x4 | x5) : ~x4;
  assign n217 = n43 & x2 & ~x3;
  assign n218 = ~n153 & (~x1 | ~x4);
  assign z11 = x2 ? ~n120 : ~n114;
endmodule


