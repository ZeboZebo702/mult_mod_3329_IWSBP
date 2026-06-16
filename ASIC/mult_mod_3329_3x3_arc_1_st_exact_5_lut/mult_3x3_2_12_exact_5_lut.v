// Benchmark "mult_3x3_2_12_exact" written by ABC on Tue Apr 14 20:46:38 2026

module mult_3x3_2_12_exact_5_lut ( 
    x0, x1, x2, x3, x4, x5,
    z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11  );
  input  x0, x1, x2, x3, x4, x5;
  output z00, z01, z02, z03, z04, z05, z06, z07, z08, z09, z10, z11;
  wire n20, n21, n22, n23, n25, n26, n28, n29, n31, n32, n33, n34, n36, n37,
    n39, n40, n41, n43, n44, n45, n47, n48, n49, n51, n52, n53, n55, n56,
    n58, n59, n60;
  assign z00 = ~n21 | (~x0 & x1 & ~n20);
  assign n20 = (x4 | ((~x2 | x3 | ~x5) & (~x3 | x5))) & (x2 | ~x4 | x5);
  assign n21 = x0 ? (n23 & (x2 | n22)) : (~x2 | n22);
  assign n22 = (x1 | (x3 ? (x4 | x5) : (~x4 | ~x5))) & (~x4 | ~x5 | ~x1 | ~x3);
  assign n23 = (~x5 | (x1 ? (x2 ? (x3 | ~x4) : (~x3 | x4)) : (x4 | (~x2 ^ ~x3)))) & (~x4 | x5 | (~x2 ^ ~x3));
  assign z01 = x5 ? ~n25 : ~n26;
  assign n25 = (x2 | (x0 ? (x1 | ~x3) : (~x1 | x3))) & (~x0 | x3 | (x1 ? x4 : (~x2 | ~x4))) & (x0 | ~x2 | ~x3 | (x1 ^ ~x4));
  assign n26 = (~x2 | (x0 ? (~x3 | x4) : (~x4 | (x1 & x3)))) & (~x0 | ~x3 | (x1 ? x4 : (x2 | ~x4)));
  assign z02 = x0 ? ~n29 : ~n28;
  assign n28 = (~x2 | ((x1 | x4 | (~x3 ^ x5)) & (~x3 | ~x4 | ~x5))) & (~x1 | ((~x3 | ~x4 | ~x5) & (x2 | (x3 ? x4 : (~x4 | x5)))));
  assign n29 = (x1 & (x2 ? (x3 & ~x5) : ~x3)) | (~x1 & (x2 ? x5 : (~x4 & ~x5))) | (~x4 & ((x2 & x3 & x5) | (~x3 & ~x5))) | (~x2 & x4 & x5);
  assign z03 = (~x1 & ~n34) | (x1 & ~n32) | (~n31 & ~n33);
  assign n31 = ~x4 ^ x5;
  assign n32 = (~x2 | ((~x0 | ~x5 | (x3 ^ x4)) & (~x3 | x4 | x5))) & (x3 | ~x4 | ~x0 | x2);
  assign n33 = (~x1 | ((x2 | ~x3) & (x0 | (x2 & ~x3)))) & (~x0 | x1 | ~x2);
  assign n34 = (~x5 | (x0 ? (x2 & (x3 | ~x4)) : (~x2 | ~x3))) & (~x2 | x5 | ((~x3 | x4) & (x0 | x3 | ~x4)));
  assign z04 = ~n37 | (~x3 & ~n36);
  assign n36 = (~x2 & (x4 | (~x0 & ~x1))) | (~x4 & ~x5) | (x0 & x4);
  assign n37 = (~x3 & ~x4) | (~x0 & (x2 ? ~x3 : ~x1));
  assign z06 = ~n41 | (x0 & ~n40) | (~x0 & ~x3 & ~n39);
  assign n39 = (~x4 & ~x5) | (~x2 & (~x1 | x4));
  assign n40 = (x2 | ~x3 | x5 | (x1 ^ ~x4)) & (x3 | x4 | ~x5);
  assign n41 = (~x3 & ~x4) | (~x0 & (x2 ? ~x3 : ~x1)) | (x0 & (x4 ? x3 : x1));
  assign z07 = ~n45 | (x0 ? ~n44 : ~n43);
  assign n43 = (~x1 | (x3 ? (x5 | (~x2 ^ x4)) : (x4 | ~x5))) & (~x2 | x3 | (~x4 & ~x5));
  assign n44 = (x2 | ((~x1 | (x4 ^ ~x5)) & (~x4 | ~x5 | x1 | ~x3))) & (x3 | ((x4 | ~x5) & (~x4 | x5 | x1 | ~x2)));
  assign n45 = (~x0 | ((x1 | x2 | x3 | ~x4) & (~x1 | ~x2 | ~x3 | x4))) & (x0 | (x1 ? (x2 | (x3 ^ ~x4)) : (~x2 | ~x3))) & (~x3 | ~x4 | x1 | ~x2);
  assign z08 = (~x5 & (~n48 | (x2 & ~n49))) | (x5 & ~n47) | (~x2 & ~n48);
  assign n47 = x2 ? ((x1 & x4) | (x0 & x3)) : ((~x0 & ~x1) | ((~x0 | ~x1) & (~x3 ^ ~x4)));
  assign n48 = (~x3 | x4 | ~x0 | x1) & (x3 | ~x4 | x0 | ~x1);
  assign n49 = (~x3 & ~x4) | ((~x3 | ~x4) & (~x0 ^ ~x1));
  assign z09 = x3 ? (~n53 | (~x4 & ~n52)) : (~n51 | (x4 & ~n52));
  assign n51 = x0 ? (x1 | (x2 ? ~x4 : (x4 | ~x5))) : (~x5 | (~x2 & (~x1 | x4)));
  assign n52 = x0 ? (x1 ? ~x2 : (x2 | x5)) : (x5 | (x1 ^ ~x2));
  assign n53 = (~x0 | ~x4 | (~x1 & ~x2 & ~x5)) & (~x1 | ~x5 | (x0 & x2));
  assign z10 = x2 ? ~n55 : ~n56;
  assign n55 = (x3 | ~x4 | (x0 ^ (x1 | x5))) & (~x1 | ~x3 | (x0 & (x4 | x5))) & (x1 | x4 | ~x5);
  assign n56 = (~x4 | (~x0 ^ (x1 & x3))) & (~x1 | x4 | ((~x3 | x5) & (x0 | x3 | ~x5)));
  assign z11 = (~x0 & ~n59) | (x4 & ~n58) | (x0 & ~x4 & ~n60);
  assign n58 = x1 ? ((~x2 | ((x3 | x5) & (~x0 | (x3 & x5)))) & (~x5 | ((x2 | ~x3) & (x0 | (x2 & ~x3))))) : ((~x0 | (x2 ? (~x3 | ~x5) : x5)) & (~x3 | x5 | x0 | ~x2));
  assign n59 = (~x2 | x3 | ~x5) & (~x1 | x2 | ~x3 | x4 | x5);
  assign n60 = (x2 | ~x3 | x5) & (~x1 | ~x5 | (~x2 ^ ~x3));
  assign z05 = z04;
endmodule


