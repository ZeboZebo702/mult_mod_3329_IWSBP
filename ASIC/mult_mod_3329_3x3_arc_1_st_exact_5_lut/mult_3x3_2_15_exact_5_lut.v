// Benchmark "mult_3x3_2_15_exact" written by ABC on Tue Apr 14 21:28:41 2026

module mult_3x3_2_15_exact_5_lut ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n23, n24, n25, n27, n28, n29, n30, n31, n33, n34, n35, n37,
    n38, n40, n41, n43, n44, n46, n47, n49, n50, n51, n52, n53, n54, n55,
    n57, n58, n59, n60, n61, n62, n64, n65;
  assign z00 = x0 ? ~n20 : ~n21;
  assign n20 = (~x2 | ((x3 | ((~x1 | (~x4 & ~x5)) & (~x4 | ~x5))) & (x4 | x5 | x1 | ~x3))) & (x1 | x2 | (x3 ? (x4 | ~x5) : (~x4 | x5)));
  assign n21 = (~x2 | ((x1 | x3 | (~x4 ^ x5)) & (~x3 | ~x5 | (~x1 & ~x4)))) & (~x1 | ((x2 | x4 | (~x3 ^ x5)) & (~x3 | ~x4 | ~x5)));
  assign z01 = n25 | (x2 ? ~n24 : ~n23);
  assign n23 = (~x1 | (x0 ? (~x3 | ~x4) : (x3 ? (x4 | ~x5) : (~x4 | x5)))) & (~x0 | x1 | x4 | (~x3 ^ x5));
  assign n24 = x0 ? ((~x1 | ~x3) & (~x4 | x5 | x1 | x3)) : ((x3 | ~x5 | (~x1 & ~x4)) & (x4 | x5 | x1 | ~x3));
  assign n25 = x5 & x4 & x3 & x0 & ~x1;
  assign z02 = n28 | (x4 & ~n27) | ~n29;
  assign n27 = x1 ? ((~x2 ^ x5) | (~x0 ^ x3)) : (~x3 | (~x0 & (~x2 | ~x5)));
  assign n28 = x5 & ((x2 & ~x3 & (~x0 | ~x4)) | (x0 & ~x2 & x3 & ~x4));
  assign n29 = ~n30 & (~x2 | ~x3 | x4 | n31);
  assign n30 = ~x5 & ~x4 & x3 & x0 & ~x2;
  assign n31 = x0 ^ (x1 | ~x5);
  assign z03 = ~n35 | (x3 ? ~n33 : ~n34);
  assign n33 = x4 ? (x0 ? ((~x2 | x5) & (~x1 | x2 | ~x5)) : ((~x2 | ~x5) & (~x1 | x2 | x5))) : ((~x0 | x1 | x2 | ~x5) & (~x1 | ~x2 | x5));
  assign n34 = (~x1 | ((~x2 | ~x4 | ~x5) & (~x0 | (x2 ? ~x5 : (~x4 | x5))))) & (~x0 | x1 | ~x2 | ~x4 | x5);
  assign n35 = (~x0 | x1 | (x2 ? (~x3 | x4) : ~x4)) & (~x3 | x4 | ~x1 | x2);
  assign z04 = n25 | (x2 ? ~n38 : ~n37);
  assign n37 = (x0 & ((~x4 & ~x5) | (x1 & x4 & x5))) | (~x1 & (~x0 | x3)) | (x3 & x4 & x5) | (~x3 & ~x4 & ~x5);
  assign n38 = (x0 & ((~x1 & (x5 ? x3 : ~x4)) | (x4 & (x1 | x5)))) | (~x3 & ~x4 & ~x5) | (x1 & x3 & (x4 | (~x0 & x5)));
  assign z05 = x2 ? ~n41 : ~n40;
  assign n40 = (~x0 | ((~x3 | ((~x4 | ~x5) & (x1 | x4 | x5))) & (~x5 | (~x1 & (x3 | x4))))) & (~x1 | ((~x4 | ~x5) & (x3 | (~x5 & (x0 | ~x4)))));
  assign n41 = x5 ? ((x0 | x4) & (x1 | x3)) : ((x0 | (~x4 & (x1 | ~x3))) & (~x3 | ~x4) & (~x1 | (~x4 & (~x0 | ~x3))));
  assign z06 = x3 ? ~n44 : ~n43;
  assign n43 = (~x4 | ((~x0 | (x1 ? ~x2 : (x2 | x5))) & (~x2 | (~x5 & (x0 | x1))))) & (~x5 | ((~x1 | ~x2) & (x0 | (~x2 & (~x1 | x4)))));
  assign n44 = (x1 & ((x0 & (x2 ? (x4 & x5) : ~x5)) | (~x2 & ~x4 & x5))) | (~x0 & (x2 ? ~x5 : ~x1)) | (~x2 & x4 & ~x5) | (~x1 & ((x2 & ~x4 & x5) | (x4 & ~x5)));
  assign z07 = x0 ? ~n47 : ~n46;
  assign n46 = (~x2 | ((~x3 | ~x4 | ~x5) & (x1 | x4 | (~x3 ^ x5)))) & (~x1 | ((~x3 | ~x4 | ~x5) & (x2 | (x3 ? x4 : (~x4 | x5)))));
  assign n47 = (x1 & (x2 ? (x3 & ~x5) : ~x3)) | (~x1 & (x2 ? x5 : (~x4 & ~x5))) | (~x4 & ((~x3 & ~x5) | (x2 & x3 & x5))) | (~x2 & x4 & x5);
  assign z08 = n50 | n51 | (x1 & ~n49) | ~n53;
  assign n49 = (x2 | ((~x4 | x5) & (x0 | x4 | ~x5))) & (~x0 | ~x2 | ((x4 | ~x5) & (~x3 | (x4 & ~x5))));
  assign n50 = x2 & ((~x1 & (x0 ? (x3 ^ x5) : (x3 & x5))) | (x3 & ~x5 & ~x0 & x1));
  assign n51 = ~n52 & x0 & ~x1;
  assign n52 = (~x2 | x3 | ~x4 | x5) & (~x3 | ~x5);
  assign n53 = ~n54 & ((x3 & x4) | n55 | (~x3 & ~x4));
  assign n54 = x5 & ~x3 & ~x2 & x0 & ~x1;
  assign n55 = (x0 | ~x2 | (~x1 ^ ~x5)) & (~x0 | ~x1 | x2 | ~x5);
  assign z09 = ~n58 | (x0 & ~n57);
  assign n57 = (~x4 | ((~x1 | ~x5 | (x2 ^ x3)) & (x5 | ((~x2 | x3) & (x1 | x2 | ~x3))))) & (~x2 | x4 | ((~x3 | x5) & (~x1 | x3 | ~x5)));
  assign n58 = ~n60 & ~n61 & ~n62 & (x0 | n59);
  assign n59 = (~x5 | ((~x1 | (x2 ? (~x3 | x4) : x3)) & (x1 | ~x2 | x3 | x4))) & (~x2 | ~x4 | x5);
  assign n60 = x3 & ((~x2 & (x0 ? (x1 ^ x5) : (x1 & x5))) | (x2 & x5 & ~x0 & ~x1));
  assign n61 = x5 & ~x3 & x2 & x0 & ~x1;
  assign n62 = x5 & ~x4 & ~x3 & x1 & ~x2;
  assign z10 = x0 ? ~n65 : ~n64;
  assign n64 = (~x2 | ~x5 | ((x3 | x4) & (x1 | (x3 & x4)))) & (~x1 | ~x3 | (x2 & ~x4 & x5));
  assign n65 = (x1 | x4 | (x2 ? ~x5 : (~x3 | x5))) & (~x4 | (~x1 & (x3 | (x2 & x5))));
  assign z11 = z05;
endmodule


