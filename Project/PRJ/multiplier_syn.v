/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Jun 29 17:40:37 2018
/////////////////////////////////////////////////////////////


module BoothRadix4_DW01_inc_0 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:3] carry;

  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(A[1]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(SUM[1]) );
  XOR2X1 U2 ( .A(carry[16]), .B(A[16]), .Y(SUM[16]) );
endmodule


module BoothRadix4_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  XOR2X1 U1 ( .A(carry[16]), .B(A[16]), .Y(SUM[16]) );
endmodule


module BoothRadix4 ( Sign, PP7, PP6, PP5, PP4, PP3, PP2, PP1, PP0, InputA, 
        InputB );
  output [15:0] Sign;
  output [16:0] PP7;
  output [16:0] PP6;
  output [16:0] PP5;
  output [16:0] PP4;
  output [16:0] PP3;
  output [16:0] PP2;
  output [16:0] PP1;
  output [16:0] PP0;
  input [15:0] InputA;
  input [15:0] InputB;
  wire   n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n232,
         n233, n234, n235, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n99, n121, n143,
         n165, n187, n209, n231, n236, n237, n238, n239, n241,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [16:1] n_A;
  wire   [16:1] n_A2;

  BoothRadix4_DW01_inc_0 add_49 ( .A({n49, n51, n53, n55, n57, n59, n61, n63, 
        n65, n67, n69, n71, n73, n75, n77, n241, 1'b1}), .SUM({n_A2, 
        SYNOPSYS_UNCONNECTED_1}) );
  BoothRadix4_DW01_inc_1 add_48 ( .A({n49, n49, n51, n53, n55, n57, n59, n61, 
        n63, n65, n67, n69, n71, n73, n75, n77, n241}), .SUM({n_A, 
        SYNOPSYS_UNCONNECTED_2}) );
  CLKINVX1 U3 ( .A(1'b1), .Y(Sign[14]) );
  CLKINVX1 U5 ( .A(1'b1), .Y(Sign[12]) );
  CLKINVX1 U7 ( .A(1'b1), .Y(Sign[10]) );
  CLKINVX1 U9 ( .A(1'b1), .Y(Sign[8]) );
  CLKINVX1 U11 ( .A(1'b1), .Y(Sign[6]) );
  CLKINVX1 U13 ( .A(1'b1), .Y(Sign[4]) );
  CLKINVX1 U15 ( .A(1'b1), .Y(Sign[2]) );
  CLKINVX1 U17 ( .A(1'b1), .Y(Sign[0]) );
  OAI222XL U19 ( .A0(n32), .A1(n233), .B0(n47), .B1(n234), .C0(n49), .C1(n235), 
        .Y(Sign[1]) );
  CLKINVX1 U20 ( .A(n_A[15]), .Y(n48) );
  OAI221XL U21 ( .A0(n32), .A1(n167), .B0(n49), .B1(n168), .C0(n180), .Y(
        Sign[7]) );
  OA22X1 U22 ( .A0(n49), .A1(n170), .B0(n47), .B1(n171), .Y(n180) );
  OAI221XL U23 ( .A0(n32), .A1(n211), .B0(n49), .B1(n212), .C0(n224), .Y(
        Sign[3]) );
  OA22X1 U24 ( .A0(n49), .A1(n214), .B0(n47), .B1(n215), .Y(n224) );
  OAI221XL U25 ( .A0(n32), .A1(n145), .B0(n49), .B1(n146), .C0(n158), .Y(
        Sign[9]) );
  OA22X1 U26 ( .A0(n49), .A1(n148), .B0(n47), .B1(n149), .Y(n158) );
  OAI221XL U27 ( .A0(n32), .A1(n189), .B0(n49), .B1(n190), .C0(n202), .Y(
        Sign[5]) );
  OA22X1 U28 ( .A0(n49), .A1(n192), .B0(n47), .B1(n193), .Y(n202) );
  OAI221XL U29 ( .A0(n32), .A1(n123), .B0(n49), .B1(n124), .C0(n136), .Y(
        Sign[11]) );
  OA22X1 U30 ( .A0(n49), .A1(n126), .B0(n47), .B1(n127), .Y(n136) );
  OAI221XL U31 ( .A0(n32), .A1(n101), .B0(n49), .B1(n102), .C0(n114), .Y(
        Sign[13]) );
  OA22X1 U32 ( .A0(n49), .A1(n104), .B0(n47), .B1(n105), .Y(n114) );
  OAI221XL U33 ( .A0(n49), .A1(n79), .B0(n80), .B1(n47), .C0(n92), .Y(Sign[15]) );
  AOI2BB2X1 U34 ( .B0(n_A2[16]), .B1(n31), .A0N(n49), .A1N(n83), .Y(n92) );
  NAND2X1 U35 ( .A(n210), .B(n209), .Y(n192) );
  NAND2X1 U36 ( .A(n232), .B(n231), .Y(n214) );
  NAND2X1 U37 ( .A(n188), .B(n187), .Y(n170) );
  NAND2X1 U38 ( .A(n166), .B(n165), .Y(n148) );
  NAND2X1 U39 ( .A(n144), .B(n143), .Y(n126) );
  NAND2X1 U40 ( .A(n122), .B(n121), .Y(n104) );
  OAI222XL U41 ( .A0(n241), .A1(n233), .B0(n76), .B1(n234), .C0(n77), .C1(n235), .Y(PP0[1]) );
  CLKINVX1 U42 ( .A(n_A2[16]), .Y(n32) );
  CLKINVX1 U43 ( .A(n_A[16]), .Y(n47) );
  NAND2X1 U44 ( .A(n100), .B(n78), .Y(n79) );
  OAI222XL U45 ( .A0(n44), .A1(n233), .B0(n70), .B1(n234), .C0(n71), .C1(n235), 
        .Y(PP0[4]) );
  OAI222XL U46 ( .A0(n43), .A1(n233), .B0(n68), .B1(n234), .C0(n69), .C1(n235), 
        .Y(PP0[5]) );
  OAI222XL U47 ( .A0(n46), .A1(n233), .B0(n74), .B1(n234), .C0(n75), .C1(n235), 
        .Y(PP0[2]) );
  OAI222XL U48 ( .A0(n45), .A1(n233), .B0(n72), .B1(n234), .C0(n73), .C1(n235), 
        .Y(PP0[3]) );
  OAI222XL U49 ( .A0(n42), .A1(n233), .B0(n66), .B1(n234), .C0(n67), .C1(n235), 
        .Y(PP0[6]) );
  OAI222XL U50 ( .A0(n40), .A1(n233), .B0(n62), .B1(n234), .C0(n63), .C1(n235), 
        .Y(PP0[8]) );
  OAI222XL U51 ( .A0(n41), .A1(n233), .B0(n64), .B1(n234), .C0(n65), .C1(n235), 
        .Y(PP0[7]) );
  OAI222XL U52 ( .A0(n39), .A1(n233), .B0(n60), .B1(n234), .C0(n61), .C1(n235), 
        .Y(PP0[9]) );
  OAI222XL U53 ( .A0(n38), .A1(n233), .B0(n58), .B1(n234), .C0(n59), .C1(n235), 
        .Y(PP0[10]) );
  OAI222XL U54 ( .A0(n37), .A1(n233), .B0(n56), .B1(n234), .C0(n57), .C1(n235), 
        .Y(PP0[11]) );
  OAI222XL U55 ( .A0(n35), .A1(n233), .B0(n52), .B1(n234), .C0(n53), .C1(n235), 
        .Y(PP0[13]) );
  OAI222XL U56 ( .A0(n34), .A1(n233), .B0(n50), .B1(n234), .C0(n51), .C1(n235), 
        .Y(PP0[14]) );
  OAI222XL U57 ( .A0(n33), .A1(n233), .B0(n48), .B1(n234), .C0(n49), .C1(n235), 
        .Y(PP0[15]) );
  OAI222XL U58 ( .A0(n36), .A1(n233), .B0(n54), .B1(n234), .C0(n55), .C1(n235), 
        .Y(PP0[12]) );
  OAI221XL U59 ( .A0(n46), .A1(n211), .B0(n77), .B1(n212), .C0(n222), .Y(
        PP1[2]) );
  OA22X1 U60 ( .A0(n75), .A1(n214), .B0(n74), .B1(n215), .Y(n222) );
  OAI221XL U61 ( .A0(n45), .A1(n211), .B0(n75), .B1(n212), .C0(n221), .Y(
        PP1[3]) );
  OA22X1 U62 ( .A0(n73), .A1(n214), .B0(n72), .B1(n215), .Y(n221) );
  OAI221XL U63 ( .A0(n241), .A1(n189), .B0(n241), .B1(n190), .C0(n201), .Y(
        PP2[1]) );
  OA22X1 U64 ( .A0(n77), .A1(n192), .B0(n76), .B1(n193), .Y(n201) );
  OAI221XL U65 ( .A0(n241), .A1(n211), .B0(n241), .B1(n212), .C0(n223), .Y(
        PP1[1]) );
  OA22X1 U66 ( .A0(n77), .A1(n214), .B0(n76), .B1(n215), .Y(n223) );
  OAI221XL U67 ( .A0(n44), .A1(n211), .B0(n73), .B1(n212), .C0(n220), .Y(
        PP1[4]) );
  OA22X1 U68 ( .A0(n71), .A1(n214), .B0(n70), .B1(n215), .Y(n220) );
  OAI221XL U69 ( .A0(n46), .A1(n189), .B0(n77), .B1(n190), .C0(n200), .Y(
        PP2[2]) );
  OA22X1 U70 ( .A0(n75), .A1(n192), .B0(n74), .B1(n193), .Y(n200) );
  OAI221XL U71 ( .A0(n42), .A1(n211), .B0(n69), .B1(n212), .C0(n218), .Y(
        PP1[6]) );
  OA22X1 U72 ( .A0(n67), .A1(n214), .B0(n66), .B1(n215), .Y(n218) );
  OAI221XL U73 ( .A0(n43), .A1(n211), .B0(n71), .B1(n212), .C0(n219), .Y(
        PP1[5]) );
  OA22X1 U74 ( .A0(n69), .A1(n214), .B0(n68), .B1(n215), .Y(n219) );
  OAI221XL U75 ( .A0(n41), .A1(n211), .B0(n67), .B1(n212), .C0(n217), .Y(
        PP1[7]) );
  OA22X1 U76 ( .A0(n65), .A1(n214), .B0(n64), .B1(n215), .Y(n217) );
  OAI221XL U77 ( .A0(n44), .A1(n189), .B0(n73), .B1(n190), .C0(n198), .Y(
        PP2[4]) );
  OA22X1 U78 ( .A0(n71), .A1(n192), .B0(n70), .B1(n193), .Y(n198) );
  OAI221XL U79 ( .A0(n45), .A1(n189), .B0(n75), .B1(n190), .C0(n199), .Y(
        PP2[3]) );
  OA22X1 U80 ( .A0(n73), .A1(n192), .B0(n72), .B1(n193), .Y(n199) );
  OAI221XL U81 ( .A0(n40), .A1(n211), .B0(n65), .B1(n212), .C0(n216), .Y(
        PP1[8]) );
  OA22X1 U82 ( .A0(n63), .A1(n214), .B0(n62), .B1(n215), .Y(n216) );
  OAI221XL U83 ( .A0(n43), .A1(n189), .B0(n71), .B1(n190), .C0(n197), .Y(
        PP2[5]) );
  OA22X1 U84 ( .A0(n69), .A1(n192), .B0(n68), .B1(n193), .Y(n197) );
  OAI221XL U85 ( .A0(n39), .A1(n211), .B0(n63), .B1(n212), .C0(n213), .Y(
        PP1[9]) );
  OA22X1 U86 ( .A0(n61), .A1(n214), .B0(n60), .B1(n215), .Y(n213) );
  OAI221XL U87 ( .A0(n46), .A1(n145), .B0(n77), .B1(n146), .C0(n156), .Y(
        PP4[2]) );
  OA22X1 U88 ( .A0(n75), .A1(n148), .B0(n74), .B1(n149), .Y(n156) );
  OAI221XL U89 ( .A0(n42), .A1(n189), .B0(n69), .B1(n190), .C0(n196), .Y(
        PP2[6]) );
  OA22X1 U90 ( .A0(n67), .A1(n192), .B0(n66), .B1(n193), .Y(n196) );
  OAI221XL U91 ( .A0(n241), .A1(n145), .B0(n241), .B1(n146), .C0(n157), .Y(
        PP4[1]) );
  OA22X1 U92 ( .A0(n77), .A1(n148), .B0(n76), .B1(n149), .Y(n157) );
  OAI221XL U93 ( .A0(n37), .A1(n211), .B0(n59), .B1(n212), .C0(n229), .Y(
        PP1[11]) );
  OA22X1 U94 ( .A0(n57), .A1(n214), .B0(n56), .B1(n215), .Y(n229) );
  OAI221XL U95 ( .A0(n45), .A1(n145), .B0(n75), .B1(n146), .C0(n155), .Y(
        PP4[3]) );
  OA22X1 U96 ( .A0(n73), .A1(n148), .B0(n72), .B1(n149), .Y(n155) );
  OAI221XL U97 ( .A0(n41), .A1(n189), .B0(n67), .B1(n190), .C0(n195), .Y(
        PP2[7]) );
  OA22X1 U98 ( .A0(n65), .A1(n192), .B0(n64), .B1(n193), .Y(n195) );
  OAI221XL U99 ( .A0(n36), .A1(n211), .B0(n57), .B1(n212), .C0(n228), .Y(
        PP1[12]) );
  OA22X1 U100 ( .A0(n55), .A1(n214), .B0(n54), .B1(n215), .Y(n228) );
  OAI221XL U101 ( .A0(n39), .A1(n189), .B0(n63), .B1(n190), .C0(n191), .Y(
        PP2[9]) );
  OA22X1 U102 ( .A0(n61), .A1(n192), .B0(n60), .B1(n193), .Y(n191) );
  OAI221XL U103 ( .A0(n241), .A1(n123), .B0(n241), .B1(n124), .C0(n135), .Y(
        PP5[1]) );
  OA22X1 U104 ( .A0(n77), .A1(n126), .B0(n76), .B1(n127), .Y(n135) );
  OAI221XL U105 ( .A0(n35), .A1(n211), .B0(n55), .B1(n212), .C0(n227), .Y(
        PP1[13]) );
  OA22X1 U106 ( .A0(n53), .A1(n214), .B0(n52), .B1(n215), .Y(n227) );
  OAI221XL U107 ( .A0(n42), .A1(n145), .B0(n69), .B1(n146), .C0(n152), .Y(
        PP4[6]) );
  OA22X1 U108 ( .A0(n67), .A1(n148), .B0(n66), .B1(n149), .Y(n152) );
  OAI221XL U109 ( .A0(n38), .A1(n189), .B0(n61), .B1(n190), .C0(n208), .Y(
        PP2[10]) );
  OA22X1 U110 ( .A0(n59), .A1(n192), .B0(n58), .B1(n193), .Y(n208) );
  OAI221XL U111 ( .A0(n34), .A1(n211), .B0(n53), .B1(n212), .C0(n226), .Y(
        PP1[14]) );
  OA22X1 U112 ( .A0(n51), .A1(n214), .B0(n50), .B1(n215), .Y(n226) );
  OAI221XL U113 ( .A0(n41), .A1(n145), .B0(n67), .B1(n146), .C0(n151), .Y(
        PP4[7]) );
  OA22X1 U114 ( .A0(n65), .A1(n148), .B0(n64), .B1(n149), .Y(n151) );
  OAI221XL U115 ( .A0(n37), .A1(n189), .B0(n59), .B1(n190), .C0(n207), .Y(
        PP2[11]) );
  OA22X1 U116 ( .A0(n57), .A1(n192), .B0(n56), .B1(n193), .Y(n207) );
  OAI221XL U117 ( .A0(n44), .A1(n123), .B0(n73), .B1(n124), .C0(n132), .Y(
        PP5[4]) );
  OA22X1 U118 ( .A0(n71), .A1(n126), .B0(n70), .B1(n127), .Y(n132) );
  OAI221XL U119 ( .A0(n40), .A1(n145), .B0(n65), .B1(n146), .C0(n150), .Y(
        PP4[8]) );
  OA22X1 U120 ( .A0(n63), .A1(n148), .B0(n62), .B1(n149), .Y(n150) );
  OAI221XL U121 ( .A0(n36), .A1(n189), .B0(n57), .B1(n190), .C0(n206), .Y(
        PP2[12]) );
  OA22X1 U122 ( .A0(n55), .A1(n192), .B0(n54), .B1(n193), .Y(n206) );
  OAI221XL U123 ( .A0(n43), .A1(n123), .B0(n71), .B1(n124), .C0(n131), .Y(
        PP5[5]) );
  OA22X1 U124 ( .A0(n69), .A1(n126), .B0(n68), .B1(n127), .Y(n131) );
  OAI221XL U125 ( .A0(n39), .A1(n145), .B0(n63), .B1(n146), .C0(n147), .Y(
        PP4[9]) );
  OA22X1 U126 ( .A0(n61), .A1(n148), .B0(n60), .B1(n149), .Y(n147) );
  OAI221XL U127 ( .A0(n35), .A1(n189), .B0(n55), .B1(n190), .C0(n205), .Y(
        PP2[13]) );
  OA22X1 U128 ( .A0(n53), .A1(n192), .B0(n52), .B1(n193), .Y(n205) );
  OAI221XL U129 ( .A0(n42), .A1(n123), .B0(n69), .B1(n124), .C0(n130), .Y(
        PP5[6]) );
  OA22X1 U130 ( .A0(n67), .A1(n126), .B0(n66), .B1(n127), .Y(n130) );
  OAI221XL U131 ( .A0(n45), .A1(n101), .B0(n75), .B1(n102), .C0(n111), .Y(
        PP6[3]) );
  OA22X1 U132 ( .A0(n73), .A1(n104), .B0(n72), .B1(n105), .Y(n111) );
  OAI221XL U133 ( .A0(n41), .A1(n123), .B0(n67), .B1(n124), .C0(n129), .Y(
        PP5[7]) );
  OA22X1 U134 ( .A0(n65), .A1(n126), .B0(n64), .B1(n127), .Y(n129) );
  OAI221XL U135 ( .A0(n44), .A1(n101), .B0(n73), .B1(n102), .C0(n110), .Y(
        PP6[4]) );
  OA22X1 U136 ( .A0(n71), .A1(n104), .B0(n70), .B1(n105), .Y(n110) );
  OAI221XL U137 ( .A0(n43), .A1(n101), .B0(n71), .B1(n102), .C0(n109), .Y(
        PP6[5]) );
  OA22X1 U138 ( .A0(n69), .A1(n104), .B0(n68), .B1(n105), .Y(n109) );
  OAI221XL U139 ( .A0(n34), .A1(n145), .B0(n53), .B1(n146), .C0(n160), .Y(
        PP4[14]) );
  OA22X1 U140 ( .A0(n51), .A1(n148), .B0(n50), .B1(n149), .Y(n160) );
  OAI221XL U141 ( .A0(n35), .A1(n145), .B0(n55), .B1(n146), .C0(n161), .Y(
        PP4[13]) );
  OA22X1 U142 ( .A0(n53), .A1(n148), .B0(n52), .B1(n149), .Y(n161) );
  OAI221XL U143 ( .A0(n38), .A1(n211), .B0(n61), .B1(n212), .C0(n230), .Y(
        PP1[10]) );
  OA22X1 U144 ( .A0(n59), .A1(n214), .B0(n58), .B1(n215), .Y(n230) );
  OAI221XL U145 ( .A0(n36), .A1(n123), .B0(n57), .B1(n124), .C0(n140), .Y(
        PP5[12]) );
  OA22X1 U146 ( .A0(n55), .A1(n126), .B0(n54), .B1(n127), .Y(n140) );
  OAI221XL U147 ( .A0(n37), .A1(n123), .B0(n59), .B1(n124), .C0(n141), .Y(
        PP5[11]) );
  OA22X1 U148 ( .A0(n57), .A1(n126), .B0(n56), .B1(n127), .Y(n141) );
  OAI221XL U149 ( .A0(n44), .A1(n145), .B0(n73), .B1(n146), .C0(n154), .Y(
        PP4[4]) );
  OA22X1 U150 ( .A0(n71), .A1(n148), .B0(n70), .B1(n149), .Y(n154) );
  OAI221XL U151 ( .A0(n40), .A1(n189), .B0(n65), .B1(n190), .C0(n194), .Y(
        PP2[8]) );
  OA22X1 U152 ( .A0(n63), .A1(n192), .B0(n62), .B1(n193), .Y(n194) );
  OAI221XL U153 ( .A0(n46), .A1(n123), .B0(n77), .B1(n124), .C0(n134), .Y(
        PP5[2]) );
  OA22X1 U154 ( .A0(n75), .A1(n126), .B0(n74), .B1(n127), .Y(n134) );
  OAI221XL U155 ( .A0(n43), .A1(n145), .B0(n71), .B1(n146), .C0(n153), .Y(
        PP4[5]) );
  OA22X1 U156 ( .A0(n69), .A1(n148), .B0(n68), .B1(n149), .Y(n153) );
  OAI221XL U157 ( .A0(n38), .A1(n145), .B0(n61), .B1(n146), .C0(n164), .Y(
        PP4[10]) );
  OA22X1 U158 ( .A0(n59), .A1(n148), .B0(n58), .B1(n149), .Y(n164) );
  OAI221XL U159 ( .A0(n36), .A1(n145), .B0(n57), .B1(n146), .C0(n162), .Y(
        PP4[12]) );
  OA22X1 U160 ( .A0(n55), .A1(n148), .B0(n54), .B1(n149), .Y(n162) );
  OAI221XL U161 ( .A0(n37), .A1(n145), .B0(n59), .B1(n146), .C0(n163), .Y(
        PP4[11]) );
  OA22X1 U162 ( .A0(n57), .A1(n148), .B0(n56), .B1(n149), .Y(n163) );
  OAI221XL U163 ( .A0(n34), .A1(n189), .B0(n53), .B1(n190), .C0(n204), .Y(
        PP2[14]) );
  OA22X1 U164 ( .A0(n51), .A1(n192), .B0(n50), .B1(n193), .Y(n204) );
  OAI221XL U165 ( .A0(n37), .A1(n101), .B0(n59), .B1(n102), .C0(n119), .Y(
        PP6[11]) );
  OA22X1 U166 ( .A0(n57), .A1(n104), .B0(n56), .B1(n105), .Y(n119) );
  OAI221XL U167 ( .A0(n38), .A1(n101), .B0(n61), .B1(n102), .C0(n120), .Y(
        PP6[10]) );
  OA22X1 U168 ( .A0(n59), .A1(n104), .B0(n58), .B1(n105), .Y(n120) );
  OAI221XL U169 ( .A0(n241), .A1(n167), .B0(n241), .B1(n168), .C0(n179), .Y(
        PP3[1]) );
  OA22X1 U170 ( .A0(n77), .A1(n170), .B0(n76), .B1(n171), .Y(n179) );
  OAI221XL U171 ( .A0(n45), .A1(n123), .B0(n75), .B1(n124), .C0(n133), .Y(
        PP5[3]) );
  OA22X1 U172 ( .A0(n73), .A1(n126), .B0(n72), .B1(n127), .Y(n133) );
  OAI221XL U173 ( .A0(n40), .A1(n123), .B0(n65), .B1(n124), .C0(n128), .Y(
        PP5[8]) );
  OA22X1 U174 ( .A0(n63), .A1(n126), .B0(n62), .B1(n127), .Y(n128) );
  OAI221XL U175 ( .A0(n38), .A1(n123), .B0(n61), .B1(n124), .C0(n142), .Y(
        PP5[10]) );
  OA22X1 U176 ( .A0(n59), .A1(n126), .B0(n58), .B1(n127), .Y(n142) );
  OAI221XL U177 ( .A0(n39), .A1(n123), .B0(n63), .B1(n124), .C0(n125), .Y(
        PP5[9]) );
  OA22X1 U178 ( .A0(n61), .A1(n126), .B0(n60), .B1(n127), .Y(n125) );
  OAI221XL U179 ( .A0(n35), .A1(n123), .B0(n55), .B1(n124), .C0(n139), .Y(
        PP5[13]) );
  OA22X1 U180 ( .A0(n53), .A1(n126), .B0(n52), .B1(n127), .Y(n139) );
  OAI221XL U181 ( .A0(n34), .A1(n123), .B0(n53), .B1(n124), .C0(n138), .Y(
        PP5[14]) );
  OA22X1 U182 ( .A0(n51), .A1(n126), .B0(n50), .B1(n127), .Y(n138) );
  OAI221XL U183 ( .A0(n42), .A1(n101), .B0(n69), .B1(n102), .C0(n108), .Y(
        PP6[6]) );
  OA22X1 U184 ( .A0(n67), .A1(n104), .B0(n66), .B1(n105), .Y(n108) );
  OAI221XL U185 ( .A0(n41), .A1(n101), .B0(n67), .B1(n102), .C0(n107), .Y(
        PP6[7]) );
  OA22X1 U186 ( .A0(n65), .A1(n104), .B0(n64), .B1(n105), .Y(n107) );
  OAI221XL U187 ( .A0(n36), .A1(n101), .B0(n57), .B1(n102), .C0(n118), .Y(
        PP6[12]) );
  OA22X1 U188 ( .A0(n55), .A1(n104), .B0(n54), .B1(n105), .Y(n118) );
  OAI221XL U189 ( .A0(n35), .A1(n101), .B0(n55), .B1(n102), .C0(n117), .Y(
        PP6[13]) );
  OA22X1 U190 ( .A0(n53), .A1(n104), .B0(n52), .B1(n105), .Y(n117) );
  OAI221XL U191 ( .A0(n46), .A1(n101), .B0(n77), .B1(n102), .C0(n112), .Y(
        PP6[2]) );
  OA22X1 U192 ( .A0(n75), .A1(n104), .B0(n74), .B1(n105), .Y(n112) );
  OAI221XL U193 ( .A0(n241), .A1(n101), .B0(n241), .B1(n102), .C0(n113), .Y(
        PP6[1]) );
  OA22X1 U194 ( .A0(n77), .A1(n104), .B0(n76), .B1(n105), .Y(n113) );
  OAI221XL U195 ( .A0(n40), .A1(n101), .B0(n65), .B1(n102), .C0(n106), .Y(
        PP6[8]) );
  OA22X1 U196 ( .A0(n63), .A1(n104), .B0(n62), .B1(n105), .Y(n106) );
  OAI221XL U197 ( .A0(n39), .A1(n101), .B0(n63), .B1(n102), .C0(n103), .Y(
        PP6[9]) );
  OA22X1 U198 ( .A0(n61), .A1(n104), .B0(n60), .B1(n105), .Y(n103) );
  OAI221XL U199 ( .A0(n77), .A1(n79), .B0(n80), .B1(n76), .C0(n91), .Y(PP7[1])
         );
  AOI2BB2X1 U200 ( .B0(n_A2[1]), .B1(n31), .A0N(n241), .A1N(n83), .Y(n91) );
  OAI221XL U201 ( .A0(n75), .A1(n79), .B0(n80), .B1(n74), .C0(n90), .Y(PP7[2])
         );
  AOI2BB2X1 U202 ( .B0(n_A2[2]), .B1(n31), .A0N(n77), .A1N(n83), .Y(n90) );
  OAI221XL U203 ( .A0(n73), .A1(n79), .B0(n80), .B1(n72), .C0(n89), .Y(PP7[3])
         );
  AOI2BB2X1 U204 ( .B0(n_A2[3]), .B1(n31), .A0N(n75), .A1N(n83), .Y(n89) );
  OAI221XL U205 ( .A0(n61), .A1(n79), .B0(n80), .B1(n60), .C0(n81), .Y(PP7[9])
         );
  AOI2BB2X1 U206 ( .B0(n_A2[9]), .B1(n31), .A0N(n63), .A1N(n83), .Y(n81) );
  OAI221XL U207 ( .A0(n63), .A1(n79), .B0(n80), .B1(n62), .C0(n84), .Y(PP7[8])
         );
  AOI2BB2X1 U208 ( .B0(n_A2[8]), .B1(n31), .A0N(n65), .A1N(n83), .Y(n84) );
  OAI221XL U209 ( .A0(n71), .A1(n79), .B0(n80), .B1(n70), .C0(n88), .Y(PP7[4])
         );
  AOI2BB2X1 U210 ( .B0(n_A2[4]), .B1(n31), .A0N(n73), .A1N(n83), .Y(n88) );
  OAI221XL U211 ( .A0(n69), .A1(n79), .B0(n80), .B1(n68), .C0(n87), .Y(PP7[5])
         );
  AOI2BB2X1 U212 ( .B0(n_A2[5]), .B1(n31), .A0N(n71), .A1N(n83), .Y(n87) );
  OAI221XL U213 ( .A0(n59), .A1(n79), .B0(n80), .B1(n58), .C0(n98), .Y(PP7[10]) );
  AOI2BB2X1 U214 ( .B0(n_A2[10]), .B1(n31), .A0N(n61), .A1N(n83), .Y(n98) );
  OAI221XL U215 ( .A0(n55), .A1(n79), .B0(n80), .B1(n54), .C0(n96), .Y(PP7[12]) );
  AOI2BB2X1 U216 ( .B0(n_A2[12]), .B1(n31), .A0N(n57), .A1N(n83), .Y(n96) );
  OAI221XL U217 ( .A0(n57), .A1(n79), .B0(n80), .B1(n56), .C0(n97), .Y(PP7[11]) );
  AOI2BB2X1 U218 ( .B0(n_A2[11]), .B1(n31), .A0N(n59), .A1N(n83), .Y(n97) );
  OAI221XL U219 ( .A0(n67), .A1(n79), .B0(n80), .B1(n66), .C0(n86), .Y(PP7[6])
         );
  AOI2BB2X1 U220 ( .B0(n_A2[6]), .B1(n31), .A0N(n69), .A1N(n83), .Y(n86) );
  OAI221XL U221 ( .A0(n65), .A1(n79), .B0(n80), .B1(n64), .C0(n85), .Y(PP7[7])
         );
  AOI2BB2X1 U222 ( .B0(n_A2[7]), .B1(n31), .A0N(n67), .A1N(n83), .Y(n85) );
  OAI221XL U223 ( .A0(n53), .A1(n79), .B0(n80), .B1(n52), .C0(n95), .Y(PP7[13]) );
  AOI2BB2X1 U224 ( .B0(n_A2[13]), .B1(n31), .A0N(n55), .A1N(n83), .Y(n95) );
  OAI221XL U225 ( .A0(n51), .A1(n79), .B0(n80), .B1(n50), .C0(n94), .Y(PP7[14]) );
  AOI2BB2X1 U226 ( .B0(n_A2[14]), .B1(n31), .A0N(n53), .A1N(n83), .Y(n94) );
  OAI221XL U227 ( .A0(n44), .A1(n167), .B0(n73), .B1(n168), .C0(n176), .Y(
        PP3[4]) );
  OA22X1 U228 ( .A0(n71), .A1(n170), .B0(n70), .B1(n171), .Y(n176) );
  OAI221XL U229 ( .A0(n45), .A1(n167), .B0(n75), .B1(n168), .C0(n177), .Y(
        PP3[3]) );
  OA22X1 U230 ( .A0(n73), .A1(n170), .B0(n72), .B1(n171), .Y(n177) );
  OAI221XL U231 ( .A0(n46), .A1(n167), .B0(n77), .B1(n168), .C0(n178), .Y(
        PP3[2]) );
  OA22X1 U232 ( .A0(n75), .A1(n170), .B0(n74), .B1(n171), .Y(n178) );
  OAI221XL U233 ( .A0(n43), .A1(n167), .B0(n71), .B1(n168), .C0(n175), .Y(
        PP3[5]) );
  OA22X1 U234 ( .A0(n69), .A1(n170), .B0(n68), .B1(n171), .Y(n175) );
  OAI221XL U235 ( .A0(n40), .A1(n167), .B0(n65), .B1(n168), .C0(n172), .Y(
        PP3[8]) );
  OA22X1 U236 ( .A0(n63), .A1(n170), .B0(n62), .B1(n171), .Y(n172) );
  OAI221XL U237 ( .A0(n39), .A1(n167), .B0(n63), .B1(n168), .C0(n169), .Y(
        PP3[9]) );
  OA22X1 U238 ( .A0(n61), .A1(n170), .B0(n60), .B1(n171), .Y(n169) );
  OAI221XL U239 ( .A0(n38), .A1(n167), .B0(n61), .B1(n168), .C0(n186), .Y(
        PP3[10]) );
  OA22X1 U240 ( .A0(n59), .A1(n170), .B0(n58), .B1(n171), .Y(n186) );
  OAI221XL U241 ( .A0(n37), .A1(n167), .B0(n59), .B1(n168), .C0(n185), .Y(
        PP3[11]) );
  OA22X1 U242 ( .A0(n57), .A1(n170), .B0(n56), .B1(n171), .Y(n185) );
  OAI221XL U243 ( .A0(n33), .A1(n211), .B0(n51), .B1(n212), .C0(n225), .Y(
        PP1[15]) );
  OA22X1 U244 ( .A0(n49), .A1(n214), .B0(n48), .B1(n215), .Y(n225) );
  OAI221XL U245 ( .A0(n33), .A1(n167), .B0(n51), .B1(n168), .C0(n181), .Y(
        PP3[15]) );
  OA22X1 U246 ( .A0(n49), .A1(n170), .B0(n48), .B1(n171), .Y(n181) );
  OAI221XL U247 ( .A0(n42), .A1(n167), .B0(n69), .B1(n168), .C0(n174), .Y(
        PP3[6]) );
  OA22X1 U248 ( .A0(n67), .A1(n170), .B0(n66), .B1(n171), .Y(n174) );
  OAI221XL U249 ( .A0(n41), .A1(n167), .B0(n67), .B1(n168), .C0(n173), .Y(
        PP3[7]) );
  OA22X1 U250 ( .A0(n65), .A1(n170), .B0(n64), .B1(n171), .Y(n173) );
  OAI221XL U251 ( .A0(n36), .A1(n167), .B0(n57), .B1(n168), .C0(n184), .Y(
        PP3[12]) );
  OA22X1 U252 ( .A0(n55), .A1(n170), .B0(n54), .B1(n171), .Y(n184) );
  OAI221XL U253 ( .A0(n34), .A1(n167), .B0(n53), .B1(n168), .C0(n182), .Y(
        PP3[14]) );
  OA22X1 U254 ( .A0(n51), .A1(n170), .B0(n50), .B1(n171), .Y(n182) );
  OAI221XL U255 ( .A0(n35), .A1(n167), .B0(n55), .B1(n168), .C0(n183), .Y(
        PP3[13]) );
  OA22X1 U256 ( .A0(n53), .A1(n170), .B0(n52), .B1(n171), .Y(n183) );
  OAI221XL U257 ( .A0(n33), .A1(n189), .B0(n51), .B1(n190), .C0(n203), .Y(
        PP2[15]) );
  OA22X1 U258 ( .A0(n49), .A1(n192), .B0(n48), .B1(n193), .Y(n203) );
  OAI221XL U259 ( .A0(n33), .A1(n145), .B0(n51), .B1(n146), .C0(n159), .Y(
        PP4[15]) );
  OA22X1 U260 ( .A0(n49), .A1(n148), .B0(n48), .B1(n149), .Y(n159) );
  OAI221XL U261 ( .A0(n34), .A1(n101), .B0(n53), .B1(n102), .C0(n116), .Y(
        PP6[14]) );
  OA22X1 U262 ( .A0(n51), .A1(n104), .B0(n50), .B1(n105), .Y(n116) );
  OAI221XL U263 ( .A0(n33), .A1(n123), .B0(n51), .B1(n124), .C0(n137), .Y(
        PP5[15]) );
  OA22X1 U264 ( .A0(n49), .A1(n126), .B0(n48), .B1(n127), .Y(n137) );
  OAI221XL U265 ( .A0(n33), .A1(n101), .B0(n51), .B1(n102), .C0(n115), .Y(
        PP6[15]) );
  OA22X1 U266 ( .A0(n49), .A1(n104), .B0(n48), .B1(n105), .Y(n115) );
  OAI221XL U267 ( .A0(n49), .A1(n79), .B0(n80), .B1(n48), .C0(n93), .Y(PP7[15]) );
  AOI2BB2X1 U268 ( .B0(n_A2[15]), .B1(n31), .A0N(n51), .A1N(n83), .Y(n93) );
  CLKINVX1 U269 ( .A(n_A[1]), .Y(n76) );
  CLKINVX1 U270 ( .A(n_A[2]), .Y(n74) );
  CLKINVX1 U271 ( .A(n_A[3]), .Y(n72) );
  CLKINVX1 U272 ( .A(n_A[4]), .Y(n70) );
  CLKINVX1 U273 ( .A(n_A[5]), .Y(n68) );
  CLKINVX1 U274 ( .A(n_A[6]), .Y(n66) );
  CLKINVX1 U275 ( .A(n_A[8]), .Y(n62) );
  CLKINVX1 U276 ( .A(n_A[7]), .Y(n64) );
  CLKINVX1 U277 ( .A(n_A[9]), .Y(n60) );
  CLKINVX1 U278 ( .A(n_A[10]), .Y(n58) );
  CLKINVX1 U279 ( .A(n_A[11]), .Y(n56) );
  CLKINVX1 U280 ( .A(n_A[13]), .Y(n52) );
  CLKINVX1 U281 ( .A(n_A[14]), .Y(n50) );
  CLKINVX1 U282 ( .A(n_A[12]), .Y(n54) );
  OAI22XL U283 ( .A0(n241), .A1(n192), .B0(n241), .B1(n193), .Y(PP2[0]) );
  OAI22XL U284 ( .A0(n241), .A1(n214), .B0(n241), .B1(n215), .Y(PP1[0]) );
  OAI22XL U285 ( .A0(n241), .A1(n170), .B0(n241), .B1(n171), .Y(PP3[0]) );
  OAI22XL U286 ( .A0(n241), .A1(n148), .B0(n241), .B1(n149), .Y(PP4[0]) );
  OAI22XL U287 ( .A0(n241), .A1(n126), .B0(n241), .B1(n127), .Y(PP5[0]) );
  OAI22XL U288 ( .A0(n241), .A1(n104), .B0(n241), .B1(n105), .Y(PP6[0]) );
  CLKINVX1 U289 ( .A(n_A2[2]), .Y(n46) );
  CLKINVX1 U290 ( .A(n_A2[4]), .Y(n44) );
  CLKINVX1 U291 ( .A(n_A2[5]), .Y(n43) );
  CLKINVX1 U292 ( .A(n_A2[3]), .Y(n45) );
  CLKINVX1 U293 ( .A(n_A2[6]), .Y(n42) );
  CLKINVX1 U294 ( .A(n_A2[8]), .Y(n40) );
  CLKINVX1 U295 ( .A(n_A2[7]), .Y(n41) );
  CLKINVX1 U296 ( .A(n_A2[9]), .Y(n39) );
  CLKINVX1 U297 ( .A(n_A2[10]), .Y(n38) );
  CLKINVX1 U298 ( .A(n_A2[11]), .Y(n37) );
  CLKINVX1 U299 ( .A(n_A2[13]), .Y(n35) );
  CLKINVX1 U300 ( .A(n_A2[14]), .Y(n34) );
  CLKINVX1 U301 ( .A(n_A2[15]), .Y(n33) );
  CLKINVX1 U302 ( .A(n_A2[12]), .Y(n36) );
  OAI21XL U303 ( .A0(n241), .A1(n234), .B0(n238), .Y(PP0[0]) );
  NAND2X1 U304 ( .A(n236), .B(InputA[0]), .Y(n238) );
  CLKINVX1 U305 ( .A(n235), .Y(n236) );
  NAND3X1 U306 ( .A(InputB[14]), .B(n78), .C(InputB[13]), .Y(n83) );
  NAND3BX1 U307 ( .AN(InputB[6]), .B(n209), .C(InputB[7]), .Y(n167) );
  NAND3BX1 U308 ( .AN(InputB[2]), .B(n237), .C(InputB[3]), .Y(n211) );
  NAND3BX1 U309 ( .AN(InputB[8]), .B(n187), .C(InputB[9]), .Y(n145) );
  NAND3BX1 U310 ( .AN(InputB[4]), .B(n231), .C(InputB[5]), .Y(n189) );
  NAND3BX1 U311 ( .AN(InputB[10]), .B(n165), .C(InputB[11]), .Y(n123) );
  NAND3BX1 U312 ( .AN(InputB[12]), .B(n143), .C(InputB[13]), .Y(n101) );
  OAI21XL U313 ( .A0(n241), .A1(n79), .B0(n239), .Y(PP7[0]) );
  NAND2X1 U314 ( .A(InputA[0]), .B(n99), .Y(n239) );
  CLKINVX1 U315 ( .A(n80), .Y(n99) );
  NAND2X1 U316 ( .A(InputB[5]), .B(n210), .Y(n193) );
  NAND2X1 U317 ( .A(InputB[3]), .B(n232), .Y(n215) );
  NAND2X1 U318 ( .A(InputB[7]), .B(n188), .Y(n171) );
  NAND2X1 U319 ( .A(InputB[9]), .B(n166), .Y(n149) );
  NAND2X1 U320 ( .A(InputB[11]), .B(n144), .Y(n127) );
  NAND2X1 U321 ( .A(InputB[13]), .B(n122), .Y(n105) );
  NAND2X1 U322 ( .A(InputB[0]), .B(n237), .Y(n235) );
  NAND2X1 U323 ( .A(InputB[15]), .B(n100), .Y(n80) );
  NAND3X1 U324 ( .A(InputB[6]), .B(n187), .C(InputB[5]), .Y(n168) );
  NAND3X1 U325 ( .A(InputB[2]), .B(n231), .C(InputB[1]), .Y(n212) );
  NAND3X1 U326 ( .A(InputB[8]), .B(n165), .C(InputB[7]), .Y(n146) );
  NAND3X1 U327 ( .A(InputB[4]), .B(n209), .C(InputB[3]), .Y(n190) );
  NAND3X1 U328 ( .A(InputB[9]), .B(n143), .C(InputB[10]), .Y(n124) );
  NAND3X1 U329 ( .A(InputB[12]), .B(n121), .C(InputB[11]), .Y(n102) );
  NAND2X1 U330 ( .A(InputB[0]), .B(InputB[1]), .Y(n234) );
  XOR2X1 U331 ( .A(InputB[4]), .B(InputB[3]), .Y(n210) );
  XOR2X1 U332 ( .A(InputB[2]), .B(InputB[1]), .Y(n232) );
  XOR2X1 U333 ( .A(InputB[6]), .B(InputB[5]), .Y(n188) );
  XOR2X1 U334 ( .A(InputB[8]), .B(InputB[7]), .Y(n166) );
  XOR2X1 U335 ( .A(InputB[9]), .B(InputB[10]), .Y(n144) );
  XOR2X1 U336 ( .A(InputB[12]), .B(InputB[11]), .Y(n122) );
  XOR2X1 U337 ( .A(InputB[14]), .B(InputB[13]), .Y(n100) );
  CLKBUFX3 U338 ( .A(n82), .Y(n31) );
  NOR3X1 U339 ( .A(InputB[13]), .B(InputB[14]), .C(n78), .Y(n82) );
  OR2X1 U340 ( .A(InputB[0]), .B(n237), .Y(n233) );
  CLKINVX1 U341 ( .A(InputB[15]), .Y(n78) );
  CLKINVX1 U342 ( .A(InputB[3]), .Y(n231) );
  CLKINVX1 U343 ( .A(InputB[7]), .Y(n187) );
  CLKINVX1 U344 ( .A(InputB[9]), .Y(n165) );
  CLKINVX1 U345 ( .A(InputB[11]), .Y(n143) );
  CLKINVX1 U346 ( .A(InputB[5]), .Y(n209) );
  CLKINVX1 U347 ( .A(InputB[13]), .Y(n121) );
  CLKINVX1 U348 ( .A(InputA[0]), .Y(n241) );
  CLKINVX1 U349 ( .A(InputB[1]), .Y(n237) );
  CLKINVX1 U350 ( .A(InputA[2]), .Y(n75) );
  CLKINVX1 U351 ( .A(InputA[3]), .Y(n73) );
  CLKINVX1 U352 ( .A(InputA[4]), .Y(n71) );
  CLKINVX1 U353 ( .A(InputA[5]), .Y(n69) );
  CLKINVX1 U354 ( .A(InputA[1]), .Y(n77) );
  CLKINVX1 U355 ( .A(InputA[6]), .Y(n67) );
  CLKINVX1 U356 ( .A(InputA[8]), .Y(n63) );
  CLKINVX1 U357 ( .A(InputA[7]), .Y(n65) );
  CLKINVX1 U358 ( .A(InputA[9]), .Y(n61) );
  CLKINVX1 U359 ( .A(InputA[10]), .Y(n59) );
  CLKINVX1 U360 ( .A(InputA[11]), .Y(n57) );
  CLKINVX1 U361 ( .A(InputA[13]), .Y(n53) );
  CLKINVX1 U362 ( .A(InputA[14]), .Y(n51) );
  CLKINVX1 U363 ( .A(InputA[12]), .Y(n55) );
  CLKINVX1 U364 ( .A(InputA[15]), .Y(n49) );
  CLKBUFX3 U365 ( .A(Sign[15]), .Y(PP7[16]) );
  CLKBUFX3 U366 ( .A(Sign[13]), .Y(PP6[16]) );
  CLKBUFX3 U367 ( .A(Sign[11]), .Y(PP5[16]) );
  CLKBUFX3 U368 ( .A(Sign[9]), .Y(PP4[16]) );
  CLKBUFX3 U369 ( .A(Sign[7]), .Y(PP3[16]) );
  CLKBUFX3 U370 ( .A(Sign[5]), .Y(PP2[16]) );
  CLKBUFX3 U371 ( .A(Sign[3]), .Y(PP1[16]) );
  CLKBUFX3 U372 ( .A(Sign[1]), .Y(PP0[16]) );
endmodule


module HA_196 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_195 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_159 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_158 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_79 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_159 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_158 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_157 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_156 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_78 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_157 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_156 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_155 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_154 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_77 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_155 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_154 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_153 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_152 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_76 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_153 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_152 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_151 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_150 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_75 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_151 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_150 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_149 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_148 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_74 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_149 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_148 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_147 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_146 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_73 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_147 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_146 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_145 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_144 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_72 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_145 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_144 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_143 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_142 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_71 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_143 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_142 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_141 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_140 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_70 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_141 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_140 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_139 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_138 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_69 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_139 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_138 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_137 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_136 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_68 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_137 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_136 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_135 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_134 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_67 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_135 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_134 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_194 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_193 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_192 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_191 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_133 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_132 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_66 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_133 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_132 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_131 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_130 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_65 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_131 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_130 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_129 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_128 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_64 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_129 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_128 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_127 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_126 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_63 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_127 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_126 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_125 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_124 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_62 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_125 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_124 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_123 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_122 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_61 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_123 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_122 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_121 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_120 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_60 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_121 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_120 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_119 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_118 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_59 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_119 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_118 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_117 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_116 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_58 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_117 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_116 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_115 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_114 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_57 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_115 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_114 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_113 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_112 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_56 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_113 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_112 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_111 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_110 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_55 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_111 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_110 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_109 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_108 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_54 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_109 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_108 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_190 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_189 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_188 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_187 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_186 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_107 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_106 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_53 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_107 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_106 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_105 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_104 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_52 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_105 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_104 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_103 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_102 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_51 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_103 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_102 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_101 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_100 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_50 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_101 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_100 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_99 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_98 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_49 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_99 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_98 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_97 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_96 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_48 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_97 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_96 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_95 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_94 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_47 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_95 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_94 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_93 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_92 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_46 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_93 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_92 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_91 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_90 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_45 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_91 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_90 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_89 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_88 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_44 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_89 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_88 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_87 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_86 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_43 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_87 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_86 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_85 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_84 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_42 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_85 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_84 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_83 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_82 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_41 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_83 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_82 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_81 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_80 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_40 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_81 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_80 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_185 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_184 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_183 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_79 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_78 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_39 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_79 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_78 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_77 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_76 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_38 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_77 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_76 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_75 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_74 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_37 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_75 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_74 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_73 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_72 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_36 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_73 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_72 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_71 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_70 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_35 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_71 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_70 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_69 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_68 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_34 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_69 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_68 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_67 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_66 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_33 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_67 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_66 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_65 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_64 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_32 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_65 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_64 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_63 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_62 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_31 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_63 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_62 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_61 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_60 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_30 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_61 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_60 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_59 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_58 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_29 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_59 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_58 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_57 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_56 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_28 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_57 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_56 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_182 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_181 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_180 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_179 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_178 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_177 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_176 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_175 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_55 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_54 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_27 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_55 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_54 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_53 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_52 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_26 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_53 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_52 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_51 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_50 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_25 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_51 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_50 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_49 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_48 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_24 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_49 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_48 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_47 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_46 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_23 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_47 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_46 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_45 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_44 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_22 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_45 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_44 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_43 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_42 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_21 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_43 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_42 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_41 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_40 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_20 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_41 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_40 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_39 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_38 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_19 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_39 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_38 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_37 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_36 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_18 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_37 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_36 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_35 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_34 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_17 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_35 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_34 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_33 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_32 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_16 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_33 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_32 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_31 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_30 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_15 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_31 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_30 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_174 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_173 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_172 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_171 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_170 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_169 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_168 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_167 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_166 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_165 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_164 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_163 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module HA_162 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_29 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_28 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_14 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_29 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_28 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_27 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module HA_26 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_13 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_27 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_26 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_25 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_24 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_12 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_25 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_24 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_23 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_22 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_11 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_23 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_22 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_21 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_20 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module FA_10 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_21 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_20 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_19 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_18 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_9 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_19 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_18 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_17 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_16 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_8 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_17 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_16 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_15 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_14 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_7 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_15 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_14 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_13 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_12 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_6 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_13 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_12 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_11 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_10 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_5 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_11 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_10 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_9 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_8 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_4 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_9 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_8 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_7 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_6 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module FA_3 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_7 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_6 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_5 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module HA_4 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_2 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_5 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_4 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_3 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module HA_2 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_1 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_3 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_2 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_1 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(S) );
endmodule


module HA_0 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_0 ( S, Cout, A, B, Cin );
  input A, B, Cin;
  output S, Cout;
  wire   ha1_S, ha1_Cout, ha2_Cout;

  HA_1 ha1 ( .S(ha1_S), .Cout(ha1_Cout), .A(A), .B(B) );
  HA_0 ha2 ( .S(S), .Cout(ha2_Cout), .A(ha1_S), .B(Cin) );
  OR2X1 U1 ( .A(ha1_Cout), .B(ha2_Cout), .Y(Cout) );
endmodule


module HA_161 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_160 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module WallaceTree16X16Radix4 ( OPA, OPB, PP7, PP6, PP5, PP4, PP3, PP2, PP1, 
        PP0 );
  output [31:0] OPA;
  output [31:0] OPB;
  input [16:0] PP7;
  input [16:0] PP6;
  input [16:0] PP5;
  input [16:0] PP4;
  input [16:0] PP3;
  input [16:0] PP2;
  input [16:0] PP1;
  input [16:0] PP0;

  wire   [16:1] A0S;
  wire   [16:0] A0C;
  wire   [16:0] A1S;
  wire   [16:0] A1C;
  wire   [17:1] B0S;
  wire   [17:0] B0C;
  wire   [16:0] B1S;
  wire   [16:0] B1C;
  wire   [22:1] C0S;
  wire   [22:0] C0C;

  HA_196 ha_A_0_0 ( .S(OPA[2]), .Cout(A0C[0]), .A(PP0[2]), .B(PP1[0]) );
  HA_195 ha_A_0_1 ( .S(A0S[1]), .Cout(A0C[1]), .A(PP0[3]), .B(PP1[1]) );
  FA_79 fa_A_0_2 ( .S(A0S[2]), .Cout(A0C[2]), .A(PP0[4]), .B(PP1[2]), .Cin(
        PP2[0]) );
  FA_78 fa_A_0_3 ( .S(A0S[3]), .Cout(A0C[3]), .A(PP0[5]), .B(PP1[3]), .Cin(
        PP2[1]) );
  FA_77 fa_A_0_4 ( .S(A0S[4]), .Cout(A0C[4]), .A(PP0[6]), .B(PP1[4]), .Cin(
        PP2[2]) );
  FA_76 fa_A_0_5 ( .S(A0S[5]), .Cout(A0C[5]), .A(PP0[7]), .B(PP1[5]), .Cin(
        PP2[3]) );
  FA_75 fa_A_0_6 ( .S(A0S[6]), .Cout(A0C[6]), .A(PP0[8]), .B(PP1[6]), .Cin(
        PP2[4]) );
  FA_74 fa_A_0_7 ( .S(A0S[7]), .Cout(A0C[7]), .A(PP0[9]), .B(PP1[7]), .Cin(
        PP2[5]) );
  FA_73 fa_A_0_8 ( .S(A0S[8]), .Cout(A0C[8]), .A(PP0[10]), .B(PP1[8]), .Cin(
        PP2[6]) );
  FA_72 fa_A_0_9 ( .S(A0S[9]), .Cout(A0C[9]), .A(PP0[11]), .B(PP1[9]), .Cin(
        PP2[7]) );
  FA_71 fa_A_0_10 ( .S(A0S[10]), .Cout(A0C[10]), .A(PP0[12]), .B(PP1[10]), 
        .Cin(PP2[8]) );
  FA_70 fa_A_0_11 ( .S(A0S[11]), .Cout(A0C[11]), .A(PP0[13]), .B(PP1[11]), 
        .Cin(PP2[9]) );
  FA_69 fa_A_0_12 ( .S(A0S[12]), .Cout(A0C[12]), .A(PP0[14]), .B(PP1[12]), 
        .Cin(PP2[10]) );
  FA_68 fa_A_0_13 ( .S(A0S[13]), .Cout(A0C[13]), .A(PP0[15]), .B(PP1[13]), 
        .Cin(PP2[11]) );
  FA_67 fa_A_0_14 ( .S(A0S[14]), .Cout(A0C[14]), .A(PP0[16]), .B(PP1[14]), 
        .Cin(PP2[12]) );
  HA_194 ha_A_0_15 ( .S(A0S[15]), .Cout(A0C[15]), .A(PP1[15]), .B(PP2[13]) );
  HA_193 ha_A_0_16 ( .S(A0S[16]), .Cout(A0C[16]), .A(PP1[16]), .B(PP2[14]) );
  HA_192 ha_A_1_0 ( .S(A1S[0]), .Cout(A1C[0]), .A(PP3[2]), .B(PP4[0]) );
  HA_191 ha_A_1_1 ( .S(A1S[1]), .Cout(A1C[1]), .A(PP3[3]), .B(PP4[1]) );
  FA_66 fa_A_1_2 ( .S(A1S[2]), .Cout(A1C[2]), .A(PP3[4]), .B(PP4[2]), .Cin(
        PP5[0]) );
  FA_65 fa_A_1_3 ( .S(A1S[3]), .Cout(A1C[3]), .A(PP3[5]), .B(PP4[3]), .Cin(
        PP5[1]) );
  FA_64 fa_A_1_4 ( .S(A1S[4]), .Cout(A1C[4]), .A(PP3[6]), .B(PP4[4]), .Cin(
        PP5[2]) );
  FA_63 fa_A_1_5 ( .S(A1S[5]), .Cout(A1C[5]), .A(PP3[7]), .B(PP4[5]), .Cin(
        PP5[3]) );
  FA_62 fa_A_1_6 ( .S(A1S[6]), .Cout(A1C[6]), .A(PP3[8]), .B(PP4[6]), .Cin(
        PP5[4]) );
  FA_61 fa_A_1_7 ( .S(A1S[7]), .Cout(A1C[7]), .A(PP3[9]), .B(PP4[7]), .Cin(
        PP5[5]) );
  FA_60 fa_A_1_8 ( .S(A1S[8]), .Cout(A1C[8]), .A(PP3[10]), .B(PP4[8]), .Cin(
        PP5[6]) );
  FA_59 fa_A_1_9 ( .S(A1S[9]), .Cout(A1C[9]), .A(PP3[11]), .B(PP4[9]), .Cin(
        PP5[7]) );
  FA_58 fa_A_1_10 ( .S(A1S[10]), .Cout(A1C[10]), .A(PP3[12]), .B(PP4[10]), 
        .Cin(PP5[8]) );
  FA_57 fa_A_1_11 ( .S(A1S[11]), .Cout(A1C[11]), .A(PP3[13]), .B(PP4[11]), 
        .Cin(PP5[9]) );
  FA_56 fa_A_1_12 ( .S(A1S[12]), .Cout(A1C[12]), .A(PP3[14]), .B(PP4[12]), 
        .Cin(PP5[10]) );
  FA_55 fa_A_1_13 ( .S(A1S[13]), .Cout(A1C[13]), .A(PP3[15]), .B(PP4[13]), 
        .Cin(PP5[11]) );
  FA_54 fa_A_1_14 ( .S(A1S[14]), .Cout(A1C[14]), .A(PP3[16]), .B(PP4[14]), 
        .Cin(PP5[12]) );
  HA_190 ha_A_1_15 ( .S(A1S[15]), .Cout(A1C[15]), .A(PP4[15]), .B(PP5[13]) );
  HA_189 ha_A_1_16 ( .S(A1S[16]), .Cout(A1C[16]), .A(PP4[16]), .B(PP5[14]) );
  HA_188 ha_B_0_0 ( .S(OPA[3]), .Cout(B0C[0]), .A(A0S[1]), .B(A0C[0]) );
  HA_187 ha_B_0_1 ( .S(B0S[1]), .Cout(B0C[1]), .A(A0S[2]), .B(A0C[1]) );
  HA_186 ha_B_0_2 ( .S(B0S[2]), .Cout(B0C[2]), .A(A0S[3]), .B(A0C[2]) );
  FA_53 fa_B_0_3 ( .S(B0S[3]), .Cout(B0C[3]), .A(A0S[4]), .B(A0C[3]), .Cin(
        PP3[0]) );
  FA_52 fa_B_0_4 ( .S(B0S[4]), .Cout(B0C[4]), .A(A0S[5]), .B(A0C[4]), .Cin(
        PP3[1]) );
  FA_51 fa_B_0_5 ( .S(B0S[5]), .Cout(B0C[5]), .A(A0S[6]), .B(A0C[5]), .Cin(
        A1S[0]) );
  FA_50 fa_B_0_6 ( .S(B0S[6]), .Cout(B0C[6]), .A(A0S[7]), .B(A0C[6]), .Cin(
        A1S[1]) );
  FA_49 fa_B_0_7 ( .S(B0S[7]), .Cout(B0C[7]), .A(A0S[8]), .B(A0C[7]), .Cin(
        A1S[2]) );
  FA_48 fa_B_0_8 ( .S(B0S[8]), .Cout(B0C[8]), .A(A0S[9]), .B(A0C[8]), .Cin(
        A1S[3]) );
  FA_47 fa_B_0_9 ( .S(B0S[9]), .Cout(B0C[9]), .A(A0S[10]), .B(A0C[9]), .Cin(
        A1S[4]) );
  FA_46 fa_B_0_10 ( .S(B0S[10]), .Cout(B0C[10]), .A(A0S[11]), .B(A0C[10]), 
        .Cin(A1S[5]) );
  FA_45 fa_B_0_11 ( .S(B0S[11]), .Cout(B0C[11]), .A(A0S[12]), .B(A0C[11]), 
        .Cin(A1S[6]) );
  FA_44 fa_B_0_12 ( .S(B0S[12]), .Cout(B0C[12]), .A(A0S[13]), .B(A0C[12]), 
        .Cin(A1S[7]) );
  FA_43 fa_B_0_13 ( .S(B0S[13]), .Cout(B0C[13]), .A(A0S[14]), .B(A0C[13]), 
        .Cin(A1S[8]) );
  FA_42 fa_B_0_14 ( .S(B0S[14]), .Cout(B0C[14]), .A(A0S[15]), .B(A0C[14]), 
        .Cin(A1S[9]) );
  FA_41 fa_B_0_15 ( .S(B0S[15]), .Cout(B0C[15]), .A(A0S[16]), .B(A0C[15]), 
        .Cin(A1S[10]) );
  FA_40 fa_B_0_16 ( .S(B0S[16]), .Cout(B0C[16]), .A(PP2[15]), .B(A0C[16]), 
        .Cin(A1S[11]) );
  HA_185 ha_B_0_17 ( .S(B0S[17]), .Cout(B0C[17]), .A(PP2[16]), .B(A1S[12]) );
  HA_184 ha_B_1_0 ( .S(B1S[0]), .Cout(B1C[0]), .A(A1C[3]), .B(PP6[0]) );
  HA_183 ha_B_1_1 ( .S(B1S[1]), .Cout(B1C[1]), .A(A1C[4]), .B(PP6[1]) );
  FA_39 fa_B_1_2 ( .S(B1S[2]), .Cout(B1C[2]), .A(A1C[5]), .B(PP6[2]), .Cin(
        PP7[0]) );
  FA_38 fa_B_1_3 ( .S(B1S[3]), .Cout(B1C[3]), .A(A1C[6]), .B(PP6[3]), .Cin(
        PP7[1]) );
  FA_37 fa_B_1_4 ( .S(B1S[4]), .Cout(B1C[4]), .A(A1C[7]), .B(PP6[4]), .Cin(
        PP7[2]) );
  FA_36 fa_B_1_5 ( .S(B1S[5]), .Cout(B1C[5]), .A(A1C[8]), .B(PP6[5]), .Cin(
        PP7[3]) );
  FA_35 fa_B_1_6 ( .S(B1S[6]), .Cout(B1C[6]), .A(A1C[9]), .B(PP6[6]), .Cin(
        PP7[4]) );
  FA_34 fa_B_1_7 ( .S(B1S[7]), .Cout(B1C[7]), .A(A1C[10]), .B(PP6[7]), .Cin(
        PP7[5]) );
  FA_33 fa_B_1_8 ( .S(B1S[8]), .Cout(B1C[8]), .A(A1C[11]), .B(PP6[8]), .Cin(
        PP7[6]) );
  FA_32 fa_B_1_9 ( .S(B1S[9]), .Cout(B1C[9]), .A(A1C[12]), .B(PP6[9]), .Cin(
        PP7[7]) );
  FA_31 fa_B_1_10 ( .S(B1S[10]), .Cout(B1C[10]), .A(A1C[13]), .B(PP6[10]), 
        .Cin(PP7[8]) );
  FA_30 fa_B_1_11 ( .S(B1S[11]), .Cout(B1C[11]), .A(A1C[14]), .B(PP6[11]), 
        .Cin(PP7[9]) );
  FA_29 fa_B_1_12 ( .S(B1S[12]), .Cout(B1C[12]), .A(A1C[15]), .B(PP6[12]), 
        .Cin(PP7[10]) );
  FA_28 fa_B_1_13 ( .S(B1S[13]), .Cout(B1C[13]), .A(A1C[16]), .B(PP6[13]), 
        .Cin(PP7[11]) );
  HA_182 ha_B_1_14 ( .S(B1S[14]), .Cout(B1C[14]), .A(PP6[14]), .B(PP7[12]) );
  HA_181 ha_B_1_15 ( .S(B1S[15]), .Cout(B1C[15]), .A(PP6[15]), .B(PP7[13]) );
  HA_180 ha_B_1_16 ( .S(B1S[16]), .Cout(B1C[16]), .A(PP6[16]), .B(PP7[14]) );
  HA_179 ha_C_0_0 ( .S(OPA[4]), .Cout(C0C[0]), .A(B0S[1]), .B(B0C[0]) );
  HA_178 ha_C_0_1 ( .S(C0S[1]), .Cout(C0C[1]), .A(B0S[2]), .B(B0C[1]) );
  HA_177 ha_C_0_2 ( .S(C0S[2]), .Cout(C0C[2]), .A(B0S[3]), .B(B0C[2]) );
  HA_176 ha_C_0_3 ( .S(C0S[3]), .Cout(C0C[3]), .A(B0S[4]), .B(B0C[3]) );
  HA_175 ha_C_0_4 ( .S(C0S[4]), .Cout(C0C[4]), .A(B0S[5]), .B(B0C[4]) );
  FA_27 fa_C_0_5 ( .S(C0S[5]), .Cout(C0C[5]), .A(B0S[6]), .B(B0C[5]), .Cin(
        A1C[0]) );
  FA_26 fa_C_0_6 ( .S(C0S[6]), .Cout(C0C[6]), .A(B0S[7]), .B(B0C[6]), .Cin(
        A1C[1]) );
  FA_25 fa_C_0_7 ( .S(C0S[7]), .Cout(C0C[7]), .A(B0S[8]), .B(B0C[7]), .Cin(
        A1C[2]) );
  FA_24 fa_C_0_8 ( .S(C0S[8]), .Cout(C0C[8]), .A(B0S[9]), .B(B0C[8]), .Cin(
        B1S[0]) );
  FA_23 fa_C_0_9 ( .S(C0S[9]), .Cout(C0C[9]), .A(B0S[10]), .B(B0C[9]), .Cin(
        B1S[1]) );
  FA_22 fa_C_0_10 ( .S(C0S[10]), .Cout(C0C[10]), .A(B0S[11]), .B(B0C[10]), 
        .Cin(B1S[2]) );
  FA_21 fa_C_0_11 ( .S(C0S[11]), .Cout(C0C[11]), .A(B0S[12]), .B(B0C[11]), 
        .Cin(B1S[3]) );
  FA_20 fa_C_0_12 ( .S(C0S[12]), .Cout(C0C[12]), .A(B0S[13]), .B(B0C[12]), 
        .Cin(B1S[4]) );
  FA_19 fa_C_0_13 ( .S(C0S[13]), .Cout(C0C[13]), .A(B0S[14]), .B(B0C[13]), 
        .Cin(B1S[5]) );
  FA_18 fa_C_0_14 ( .S(C0S[14]), .Cout(C0C[14]), .A(B0S[15]), .B(B0C[14]), 
        .Cin(B1S[6]) );
  FA_17 fa_C_0_15 ( .S(C0S[15]), .Cout(C0C[15]), .A(B0S[16]), .B(B0C[15]), 
        .Cin(B1S[7]) );
  FA_16 fa_C_0_16 ( .S(C0S[16]), .Cout(C0C[16]), .A(B0S[17]), .B(B0C[16]), 
        .Cin(B1S[8]) );
  FA_15 fa_C_0_17 ( .S(C0S[17]), .Cout(C0C[17]), .A(A1S[13]), .B(B0C[17]), 
        .Cin(B1S[9]) );
  HA_174 ha_C_0_18 ( .S(C0S[18]), .Cout(C0C[18]), .A(A1S[14]), .B(B1S[10]) );
  HA_173 ha_C_0_19 ( .S(C0S[19]), .Cout(C0C[19]), .A(A1S[15]), .B(B1S[11]) );
  HA_172 ha_C_0_20 ( .S(C0S[20]), .Cout(C0C[20]), .A(A1S[16]), .B(B1S[12]) );
  HA_171 ha_C_0_21 ( .S(C0S[21]), .Cout(C0C[21]), .A(PP5[15]), .B(B1S[13]) );
  HA_170 ha_C_0_22 ( .S(C0S[22]), .Cout(C0C[22]), .A(PP5[16]), .B(B1S[14]) );
  HA_169 ha_D_0_0 ( .S(OPA[5]), .Cout(OPB[6]), .A(C0S[1]), .B(C0C[0]) );
  HA_168 ha_D_0_1 ( .S(OPA[6]), .Cout(OPB[7]), .A(C0S[2]), .B(C0C[1]) );
  HA_167 ha_D_0_2 ( .S(OPA[7]), .Cout(OPB[8]), .A(C0S[3]), .B(C0C[2]) );
  HA_166 ha_D_0_3 ( .S(OPA[8]), .Cout(OPB[9]), .A(C0S[4]), .B(C0C[3]) );
  HA_165 ha_D_0_4 ( .S(OPA[9]), .Cout(OPB[10]), .A(C0S[5]), .B(C0C[4]) );
  HA_164 ha_D_0_5 ( .S(OPA[10]), .Cout(OPB[11]), .A(C0S[6]), .B(C0C[5]) );
  HA_163 ha_D_0_6 ( .S(OPA[11]), .Cout(OPB[12]), .A(C0S[7]), .B(C0C[6]) );
  HA_162 ha_D_0_7 ( .S(OPA[12]), .Cout(OPB[13]), .A(C0S[8]), .B(C0C[7]) );
  FA_14 fa_D_0_8 ( .S(OPA[13]), .Cout(OPB[14]), .A(C0S[9]), .B(C0C[8]), .Cin(
        B1C[0]) );
  FA_13 fa_D_0_9 ( .S(OPA[14]), .Cout(OPB[15]), .A(C0S[10]), .B(C0C[9]), .Cin(
        B1C[1]) );
  FA_12 fa_D_0_10 ( .S(OPA[15]), .Cout(OPB[16]), .A(C0S[11]), .B(C0C[10]), 
        .Cin(B1C[2]) );
  FA_11 fa_D_0_11 ( .S(OPA[16]), .Cout(OPB[17]), .A(C0S[12]), .B(C0C[11]), 
        .Cin(B1C[3]) );
  FA_10 fa_D_0_12 ( .S(OPA[17]), .Cout(OPB[18]), .A(C0S[13]), .B(C0C[12]), 
        .Cin(B1C[4]) );
  FA_9 fa_D_0_13 ( .S(OPA[18]), .Cout(OPB[19]), .A(C0S[14]), .B(C0C[13]), 
        .Cin(B1C[5]) );
  FA_8 fa_D_0_14 ( .S(OPA[19]), .Cout(OPB[20]), .A(C0S[15]), .B(C0C[14]), 
        .Cin(B1C[6]) );
  FA_7 fa_D_0_15 ( .S(OPA[20]), .Cout(OPB[21]), .A(C0S[16]), .B(C0C[15]), 
        .Cin(B1C[7]) );
  FA_6 fa_D_0_16 ( .S(OPA[21]), .Cout(OPB[22]), .A(C0S[17]), .B(C0C[16]), 
        .Cin(B1C[8]) );
  FA_5 fa_D_0_17 ( .S(OPA[22]), .Cout(OPB[23]), .A(C0S[18]), .B(C0C[17]), 
        .Cin(B1C[9]) );
  FA_4 fa_D_0_18 ( .S(OPA[23]), .Cout(OPB[24]), .A(C0S[19]), .B(C0C[18]), 
        .Cin(B1C[10]) );
  FA_3 fa_D_0_19 ( .S(OPA[24]), .Cout(OPB[25]), .A(C0S[20]), .B(C0C[19]), 
        .Cin(B1C[11]) );
  FA_2 fa_D_0_20 ( .S(OPA[25]), .Cout(OPB[26]), .A(C0S[21]), .B(C0C[20]), 
        .Cin(B1C[12]) );
  FA_1 fa_D_0_21 ( .S(OPA[26]), .Cout(OPB[27]), .A(C0S[22]), .B(C0C[21]), 
        .Cin(B1C[13]) );
  FA_0 fa_D_0_22 ( .S(OPA[27]), .Cout(OPB[28]), .A(B1S[15]), .B(C0C[22]), 
        .Cin(B1C[14]) );
  HA_161 ha_D_0_23 ( .S(OPA[28]), .Cout(OPB[29]), .A(B1S[16]), .B(B1C[15]) );
  HA_160 ha_D_0_24 ( .S(OPA[29]), .Cout(OPB[30]), .A(PP7[15]), .B(B1C[16]) );
  CLKINVX1 U2 ( .A(1'b1), .Y(OPA[31]) );
  CLKINVX1 U4 ( .A(1'b1), .Y(OPB[31]) );
  CLKINVX1 U6 ( .A(1'b1), .Y(OPB[5]) );
  CLKINVX1 U8 ( .A(1'b1), .Y(OPB[4]) );
  CLKINVX1 U10 ( .A(1'b1), .Y(OPB[3]) );
  CLKINVX1 U12 ( .A(1'b1), .Y(OPB[2]) );
  CLKINVX1 U14 ( .A(1'b1), .Y(OPB[1]) );
  CLKINVX1 U16 ( .A(1'b1), .Y(OPB[0]) );
  CLKBUFX3 U18 ( .A(PP7[16]), .Y(OPA[30]) );
  CLKBUFX3 U19 ( .A(PP0[1]), .Y(OPA[1]) );
  CLKBUFX3 U20 ( .A(PP0[0]), .Y(OPA[0]) );
endmodule


module CarrySelectAdder3_2 ( Sum, Cout, A, B, Cin );
  output [2:0] Sum;
  input [2:0] A;
  input [2:0] B;
  input Cin;
  output Cout;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n1, n2, n3;

  XNOR2X1 U1 ( .A(n3), .B(n8), .Y(Sum[0]) );
  XNOR2X1 U2 ( .A(n1), .B(B[0]), .Y(n8) );
  XNOR2X1 U3 ( .A(n4), .B(n5), .Y(Sum[2]) );
  XNOR2X1 U4 ( .A(A[2]), .B(B[2]), .Y(n4) );
  OAI22XL U5 ( .A0(n11), .A1(n1), .B0(n3), .B1(n2), .Y(n6) );
  CLKINVX1 U6 ( .A(B[0]), .Y(n2) );
  NOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n11) );
  OAI2BB1X1 U8 ( .A0N(n5), .A1N(A[2]), .B0(n9), .Y(Cout) );
  OAI21XL U9 ( .A0(A[2]), .A1(n5), .B0(B[2]), .Y(n9) );
  OAI2BB1X1 U10 ( .A0N(A[1]), .A1N(B[1]), .B0(n10), .Y(n5) );
  OAI21XL U11 ( .A0(A[1]), .A1(B[1]), .B0(n6), .Y(n10) );
  XOR2X1 U12 ( .A(n6), .B(n7), .Y(Sum[1]) );
  XOR2X1 U13 ( .A(B[1]), .B(A[1]), .Y(n7) );
  CLKINVX1 U14 ( .A(Cin), .Y(n1) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n3) );
endmodule


module CarrySelectAdder4_2 ( Sum, Cout, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22,
         n1, n2, n3, n4, n5, n6, n7;

  OR2X1 U1 ( .A(A[3]), .B(n9), .Y(n1) );
  OAI22XL U2 ( .A0(n2), .A1(n10), .B0(Cin), .B1(n11), .Y(Sum[2]) );
  XNOR2X1 U3 ( .A(n12), .B(n13), .Y(n11) );
  XNOR2X1 U4 ( .A(n14), .B(n5), .Y(n10) );
  CLKINVX1 U5 ( .A(n13), .Y(n5) );
  OA22X1 U6 ( .A0(n7), .A1(n4), .B0(n17), .B1(n22), .Y(n14) );
  OAI32X1 U7 ( .A0(n3), .A1(n22), .A2(n6), .B0(n7), .B1(n4), .Y(n12) );
  CLKINVX1 U8 ( .A(Cin), .Y(n2) );
  XNOR2X1 U9 ( .A(n6), .B(n18), .Y(Sum[0]) );
  XNOR2X1 U10 ( .A(n2), .B(B[0]), .Y(n18) );
  AO22X1 U11 ( .A0(n1), .A1(B[3]), .B0(n9), .B1(A[3]), .Y(Cout) );
  XNOR2X1 U12 ( .A(n8), .B(n9), .Y(Sum[3]) );
  XNOR2X1 U13 ( .A(A[3]), .B(B[3]), .Y(n8) );
  OAI2BB1X1 U14 ( .A0N(A[2]), .A1N(B[2]), .B0(n20), .Y(n9) );
  OAI22XL U15 ( .A0(n21), .A1(n12), .B0(A[2]), .B1(B[2]), .Y(n20) );
  NOR2X1 U16 ( .A(n14), .B(n2), .Y(n21) );
  XOR2X1 U17 ( .A(n15), .B(n16), .Y(Sum[1]) );
  XNOR2X1 U18 ( .A(n4), .B(A[1]), .Y(n16) );
  OAI22XL U19 ( .A0(n17), .A1(n2), .B0(n6), .B1(n3), .Y(n15) );
  XOR2X1 U20 ( .A(A[2]), .B(B[2]), .Y(n13) );
  CLKINVX1 U21 ( .A(A[0]), .Y(n6) );
  NOR2X1 U22 ( .A(B[0]), .B(A[0]), .Y(n17) );
  CLKINVX1 U23 ( .A(B[1]), .Y(n4) );
  CLKINVX1 U24 ( .A(B[0]), .Y(n3) );
  NOR2X1 U25 ( .A(B[1]), .B(A[1]), .Y(n22) );
  CLKINVX1 U26 ( .A(A[1]), .Y(n7) );
endmodule


module CarrySelectAdder5_2 ( Sum, Cout, A, B, Cin );
  output [4:0] Sum;
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n1, n2;

  OAI22XL U1 ( .A0(n1), .A1(n10), .B0(Cin), .B1(n11), .Y(Sum[2]) );
  CLKINVX1 U2 ( .A(Cin), .Y(n1) );
  XNOR2X1 U3 ( .A(n12), .B(n13), .Y(n11) );
  XNOR2X1 U4 ( .A(n14), .B(n13), .Y(n10) );
  XNOR2X1 U5 ( .A(A[2]), .B(B[2]), .Y(n13) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(Cin), .B1(n6), .Y(Sum[3]) );
  XOR2X1 U7 ( .A(n9), .B(n8), .Y(n5) );
  XNOR2X1 U8 ( .A(n7), .B(n8), .Y(n6) );
  XOR2X1 U9 ( .A(A[3]), .B(B[3]), .Y(n8) );
  XNOR2X1 U10 ( .A(n3), .B(n4), .Y(Sum[4]) );
  XNOR2X1 U11 ( .A(A[4]), .B(B[4]), .Y(n3) );
  OAI2BB1X1 U12 ( .A0N(n4), .A1N(A[4]), .B0(n19), .Y(Cout) );
  OAI21XL U13 ( .A0(A[4]), .A1(n4), .B0(B[4]), .Y(n19) );
  OAI2BB2XL U14 ( .B0(n22), .B1(n12), .A0N(A[2]), .A1N(B[2]), .Y(n7) );
  AOI2BB2X1 U15 ( .B0(A[2]), .B1(B[2]), .A0N(n14), .A1N(n22), .Y(n9) );
  XOR2X1 U16 ( .A(n15), .B(n16), .Y(Sum[1]) );
  XOR2X1 U17 ( .A(B[1]), .B(A[1]), .Y(n16) );
  OAI2BB2XL U18 ( .B0(n17), .B1(n1), .A0N(A[0]), .A1N(B[0]), .Y(n15) );
  OAI2BB1X1 U19 ( .A0N(A[3]), .A1N(B[3]), .B0(n20), .Y(n4) );
  OAI22XL U20 ( .A0(n21), .A1(n7), .B0(A[3]), .B1(B[3]), .Y(n20) );
  NOR2X1 U21 ( .A(n9), .B(n1), .Y(n21) );
  XOR2X1 U22 ( .A(A[0]), .B(n18), .Y(Sum[0]) );
  XOR2X1 U23 ( .A(Cin), .B(B[0]), .Y(n18) );
  AOI2BB2X1 U24 ( .B0(A[1]), .B1(B[1]), .A0N(n17), .A1N(n23), .Y(n14) );
  AOI32X1 U25 ( .A0(B[0]), .A1(n2), .A2(A[0]), .B0(A[1]), .B1(B[1]), .Y(n12)
         );
  CLKINVX1 U26 ( .A(n23), .Y(n2) );
  NOR2X1 U27 ( .A(B[1]), .B(A[1]), .Y(n23) );
  NOR2X1 U28 ( .A(B[2]), .B(A[2]), .Y(n22) );
  NOR2X1 U29 ( .A(B[0]), .B(A[0]), .Y(n17) );
endmodule


module CarrySelectAdder6_2 ( Sum, Cout, A, B, Cin );
  output [5:0] Sum;
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n1,
         n2, n3, n4, n5, n6, n7;

  OAI22XL U1 ( .A0(n1), .A1(n15), .B0(Cin), .B1(n16), .Y(Sum[3]) );
  OAI22XL U2 ( .A0(n1), .A1(n20), .B0(Cin), .B1(n21), .Y(Sum[2]) );
  OAI22XL U3 ( .A0(n6), .A1(n3), .B0(n27), .B1(n34), .Y(n24) );
  AOI2BB2X1 U4 ( .B0(n33), .B1(n22), .A0N(n7), .A1N(n4), .Y(n17) );
  CLKINVX1 U5 ( .A(Cin), .Y(n1) );
  OAI32X1 U6 ( .A0(n2), .A1(n34), .A2(n5), .B0(n6), .B1(n3), .Y(n22) );
  NAND2X1 U7 ( .A(n4), .B(n7), .Y(n33) );
  XNOR2X1 U8 ( .A(n5), .B(n28), .Y(Sum[0]) );
  XNOR2X1 U9 ( .A(n1), .B(B[0]), .Y(n28) );
  XNOR2X1 U10 ( .A(n22), .B(n23), .Y(n21) );
  XNOR2X1 U11 ( .A(n24), .B(n23), .Y(n20) );
  XOR2X1 U12 ( .A(A[2]), .B(B[2]), .Y(n23) );
  XOR2X1 U13 ( .A(n17), .B(n18), .Y(n16) );
  XOR2X1 U14 ( .A(n19), .B(n18), .Y(n15) );
  XOR2X1 U15 ( .A(A[3]), .B(B[3]), .Y(n18) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(Cin), .B1(n11), .Y(Sum[4]) );
  XOR2X1 U17 ( .A(n14), .B(n13), .Y(n10) );
  XNOR2X1 U18 ( .A(n12), .B(n13), .Y(n11) );
  XOR2X1 U19 ( .A(A[4]), .B(B[4]), .Y(n13) );
  OAI2BB1X1 U20 ( .A0N(n9), .A1N(A[5]), .B0(n29), .Y(Cout) );
  OAI21XL U21 ( .A0(A[5]), .A1(n9), .B0(B[5]), .Y(n29) );
  AOI22X1 U22 ( .A0(n24), .A1(n33), .B0(A[2]), .B1(B[2]), .Y(n19) );
  XNOR2X1 U23 ( .A(n8), .B(n9), .Y(Sum[5]) );
  XNOR2X1 U24 ( .A(A[5]), .B(B[5]), .Y(n8) );
  OAI2BB2XL U25 ( .B0(n32), .B1(n17), .A0N(A[3]), .A1N(B[3]), .Y(n12) );
  AOI2BB2X1 U26 ( .B0(A[3]), .B1(B[3]), .A0N(n19), .A1N(n32), .Y(n14) );
  XOR2X1 U27 ( .A(n25), .B(n26), .Y(Sum[1]) );
  XNOR2X1 U28 ( .A(n3), .B(A[1]), .Y(n26) );
  OAI22XL U29 ( .A0(n27), .A1(n1), .B0(n5), .B1(n2), .Y(n25) );
  OAI2BB1X1 U30 ( .A0N(A[4]), .A1N(B[4]), .B0(n30), .Y(n9) );
  OAI22XL U31 ( .A0(n31), .A1(n12), .B0(A[4]), .B1(B[4]), .Y(n30) );
  NOR2X1 U32 ( .A(n14), .B(n1), .Y(n31) );
  CLKINVX1 U33 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U34 ( .A(A[2]), .Y(n7) );
  NOR2X1 U35 ( .A(B[0]), .B(A[0]), .Y(n27) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n5) );
  CLKINVX1 U37 ( .A(B[1]), .Y(n3) );
  NOR2X1 U38 ( .A(B[3]), .B(A[3]), .Y(n32) );
  CLKINVX1 U39 ( .A(A[1]), .Y(n6) );
  CLKINVX1 U40 ( .A(B[0]), .Y(n2) );
  NOR2X1 U41 ( .A(B[1]), .B(A[1]), .Y(n34) );
endmodule


module CarrySelectAdder7_5 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n1, n2, n3, n4, n5, n6, n7;

  OAI22XL U1 ( .A0(n2), .A1(n20), .B0(Cin), .B1(n21), .Y(Sum[3]) );
  OAI22XL U2 ( .A0(n2), .A1(n15), .B0(Cin), .B1(n16), .Y(Sum[4]) );
  OAI22XL U3 ( .A0(n2), .A1(n25), .B0(Cin), .B1(n26), .Y(Sum[2]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n1) );
  OAI22XL U5 ( .A0(n1), .A1(n6), .B0(n32), .B1(n40), .Y(n29) );
  AOI2BB2X1 U6 ( .B0(n39), .B1(n27), .A0N(n4), .A1N(n7), .Y(n22) );
  CLKINVX1 U7 ( .A(Cin), .Y(n2) );
  XOR2X1 U8 ( .A(n30), .B(n31), .Y(Sum[1]) );
  XNOR2X1 U9 ( .A(n6), .B(A[1]), .Y(n31) );
  OAI22XL U10 ( .A0(n32), .A1(n2), .B0(n3), .B1(n5), .Y(n30) );
  OAI32X1 U11 ( .A0(n5), .A1(n40), .A2(n3), .B0(n1), .B1(n6), .Y(n27) );
  NAND2X1 U12 ( .A(n7), .B(n4), .Y(n39) );
  XOR2X1 U13 ( .A(n22), .B(n23), .Y(n21) );
  XOR2X1 U14 ( .A(n24), .B(n23), .Y(n20) );
  XOR2X1 U15 ( .A(A[3]), .B(B[3]), .Y(n23) );
  XNOR2X1 U16 ( .A(n3), .B(n33), .Y(Sum[0]) );
  XNOR2X1 U17 ( .A(n2), .B(B[0]), .Y(n33) );
  XNOR2X1 U18 ( .A(n29), .B(n28), .Y(n25) );
  XNOR2X1 U19 ( .A(n27), .B(n28), .Y(n26) );
  XOR2X1 U20 ( .A(A[2]), .B(B[2]), .Y(n28) );
  XOR2X1 U21 ( .A(n17), .B(n18), .Y(n16) );
  XOR2X1 U22 ( .A(n19), .B(n18), .Y(n15) );
  XOR2X1 U23 ( .A(A[4]), .B(B[4]), .Y(n18) );
  OAI22XL U24 ( .A0(n2), .A1(n10), .B0(Cin), .B1(n11), .Y(Sum[5]) );
  XOR2X1 U25 ( .A(n14), .B(n13), .Y(n10) );
  XNOR2X1 U26 ( .A(n12), .B(n13), .Y(n11) );
  XOR2X1 U27 ( .A(A[5]), .B(B[5]), .Y(n13) );
  OAI2BB1X1 U28 ( .A0N(n9), .A1N(A[6]), .B0(n34), .Y(Cout) );
  OAI21XL U29 ( .A0(A[6]), .A1(n9), .B0(B[6]), .Y(n34) );
  XNOR2X1 U30 ( .A(n8), .B(n9), .Y(Sum[6]) );
  XNOR2X1 U31 ( .A(A[6]), .B(B[6]), .Y(n8) );
  OAI2BB2XL U32 ( .B0(n37), .B1(n17), .A0N(A[4]), .A1N(B[4]), .Y(n12) );
  AOI22X1 U33 ( .A0(n29), .A1(n39), .B0(A[2]), .B1(B[2]), .Y(n24) );
  AOI2BB2X1 U34 ( .B0(A[3]), .B1(B[3]), .A0N(n38), .A1N(n22), .Y(n17) );
  AOI2BB2X1 U35 ( .B0(A[4]), .B1(B[4]), .A0N(n19), .A1N(n37), .Y(n14) );
  OAI2BB1X1 U36 ( .A0N(A[5]), .A1N(B[5]), .B0(n35), .Y(n9) );
  OAI22XL U37 ( .A0(n36), .A1(n12), .B0(A[5]), .B1(B[5]), .Y(n35) );
  NOR2X1 U38 ( .A(n14), .B(n2), .Y(n36) );
  AOI2BB2X1 U39 ( .B0(A[3]), .B1(B[3]), .A0N(n24), .A1N(n38), .Y(n19) );
  NOR2X1 U40 ( .A(B[1]), .B(A[1]), .Y(n40) );
  NOR2X1 U41 ( .A(B[3]), .B(A[3]), .Y(n38) );
  CLKINVX1 U42 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U43 ( .A(A[2]), .Y(n4) );
  NOR2X1 U44 ( .A(B[0]), .B(A[0]), .Y(n32) );
  CLKINVX1 U45 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U46 ( .A(B[1]), .Y(n6) );
  NOR2X1 U47 ( .A(B[4]), .B(A[4]), .Y(n37) );
  CLKINVX1 U48 ( .A(B[0]), .Y(n5) );
endmodule


module CarrySelectAdder7_4 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;

  OAI22XL U1 ( .A0(n3), .A1(n61), .B0(Cin), .B1(n60), .Y(Sum[3]) );
  OAI22XL U2 ( .A0(n3), .A1(n66), .B0(Cin), .B1(n65), .Y(Sum[4]) );
  OAI22XL U3 ( .A0(n3), .A1(n56), .B0(Cin), .B1(n55), .Y(Sum[2]) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n2) );
  OAI22XL U6 ( .A0(n4), .A1(n6), .B0(n49), .B1(n41), .Y(n52) );
  AOI2BB2X1 U7 ( .B0(n42), .B1(n54), .A0N(n1), .A1N(n7), .Y(n59) );
  CLKINVX1 U8 ( .A(Cin), .Y(n3) );
  OAI32X1 U9 ( .A0(n5), .A1(n41), .A2(n2), .B0(n4), .B1(n6), .Y(n54) );
  NAND2X1 U10 ( .A(n7), .B(n1), .Y(n42) );
  OAI2BB1X1 U11 ( .A0N(n72), .A1N(A[6]), .B0(n47), .Y(Cout) );
  XOR2X1 U12 ( .A(n59), .B(n58), .Y(n60) );
  XOR2X1 U13 ( .A(n57), .B(n58), .Y(n61) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n58) );
  XNOR2X1 U15 ( .A(n2), .B(n48), .Y(Sum[0]) );
  XNOR2X1 U16 ( .A(n3), .B(B[0]), .Y(n48) );
  XNOR2X1 U17 ( .A(n54), .B(n53), .Y(n55) );
  XNOR2X1 U18 ( .A(n52), .B(n53), .Y(n56) );
  XOR2X1 U19 ( .A(A[2]), .B(B[2]), .Y(n53) );
  XOR2X1 U20 ( .A(n64), .B(n63), .Y(n65) );
  XOR2X1 U21 ( .A(n62), .B(n63), .Y(n66) );
  XOR2X1 U22 ( .A(A[4]), .B(B[4]), .Y(n63) );
  OAI22XL U23 ( .A0(n3), .A1(n71), .B0(Cin), .B1(n70), .Y(Sum[5]) );
  XOR2X1 U24 ( .A(n67), .B(n68), .Y(n71) );
  XNOR2X1 U25 ( .A(n69), .B(n68), .Y(n70) );
  XOR2X1 U26 ( .A(A[5]), .B(B[5]), .Y(n68) );
  XNOR2X1 U27 ( .A(n73), .B(n72), .Y(Sum[6]) );
  XNOR2X1 U28 ( .A(A[6]), .B(B[6]), .Y(n73) );
  AOI22X1 U29 ( .A0(n52), .A1(n42), .B0(A[2]), .B1(B[2]), .Y(n57) );
  OAI2BB2XL U30 ( .B0(n44), .B1(n64), .A0N(A[4]), .A1N(B[4]), .Y(n69) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n62), .A1N(n44), .Y(n67) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n43), .A1N(n59), .Y(n64) );
  OAI21XL U33 ( .A0(A[6]), .A1(n72), .B0(B[6]), .Y(n47) );
  XOR2X1 U34 ( .A(n51), .B(n50), .Y(Sum[1]) );
  XNOR2X1 U35 ( .A(n6), .B(A[1]), .Y(n50) );
  OAI22XL U36 ( .A0(n49), .A1(n3), .B0(n2), .B1(n5), .Y(n51) );
  OAI2BB1X1 U37 ( .A0N(A[5]), .A1N(B[5]), .B0(n46), .Y(n72) );
  OAI22XL U38 ( .A0(n45), .A1(n69), .B0(A[5]), .B1(B[5]), .Y(n46) );
  NOR2X1 U39 ( .A(n67), .B(n3), .Y(n45) );
  NOR2X1 U40 ( .A(B[0]), .B(A[0]), .Y(n49) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n57), .A1N(n43), .Y(n62) );
  NOR2X1 U42 ( .A(B[4]), .B(A[4]), .Y(n44) );
  CLKINVX1 U43 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U44 ( .A(B[1]), .Y(n6) );
  CLKINVX1 U45 ( .A(A[1]), .Y(n4) );
  CLKINVX1 U46 ( .A(B[0]), .Y(n5) );
  NOR2X1 U47 ( .A(B[1]), .B(A[1]), .Y(n41) );
  NOR2X1 U48 ( .A(B[3]), .B(A[3]), .Y(n43) );
endmodule


module SquareRootCarrySelectAdder32_2 ( Sum, Cout, A, B, Cin );
  output [31:0] Sum;
  input [31:0] A;
  input [31:0] B;
  input Cin;
  output Cout;
  wire   CoutA, CoutB, CoutC, CoutD, CoutE;

  CarrySelectAdder3_2 csa3 ( .Sum(Sum[2:0]), .Cout(CoutA), .A(A[2:0]), .B(
        B[2:0]), .Cin(Cin) );
  CarrySelectAdder4_2 csa4 ( .Sum(Sum[6:3]), .Cout(CoutB), .A(A[6:3]), .B(
        B[6:3]), .Cin(CoutA) );
  CarrySelectAdder5_2 csa5 ( .Sum(Sum[11:7]), .Cout(CoutC), .A(A[11:7]), .B(
        B[11:7]), .Cin(CoutB) );
  CarrySelectAdder6_2 csa6 ( .Sum(Sum[17:12]), .Cout(CoutD), .A(A[17:12]), .B(
        B[17:12]), .Cin(CoutC) );
  CarrySelectAdder7_5 csa7_0 ( .Sum(Sum[24:18]), .Cout(CoutE), .A(A[24:18]), 
        .B(B[24:18]), .Cin(CoutD) );
  CarrySelectAdder7_4 csa7_1 ( .Sum(Sum[31:25]), .Cout(Cout), .A(A[31:25]), 
        .B(B[31:25]), .Cin(CoutE) );
endmodule


module CarrySelectAdder3_1 ( Sum, Cout, A, B, Cin );
  output [2:0] Sum;
  input [2:0] A;
  input [2:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n12, n13, n14, n15, n16, n17, n18, n19;

  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U2 ( .A(n3), .B(n15), .Y(Sum[0]) );
  XNOR2X1 U3 ( .A(n2), .B(B[0]), .Y(n15) );
  OAI22XL U4 ( .A0(n12), .A1(n2), .B0(n3), .B1(n1), .Y(n17) );
  CLKINVX1 U5 ( .A(B[0]), .Y(n1) );
  NOR2X1 U6 ( .A(B[0]), .B(A[0]), .Y(n12) );
  XNOR2X1 U7 ( .A(n19), .B(n18), .Y(Sum[2]) );
  XNOR2X1 U8 ( .A(A[2]), .B(B[2]), .Y(n19) );
  OAI2BB1X1 U9 ( .A0N(n18), .A1N(A[2]), .B0(n14), .Y(Cout) );
  OAI21XL U10 ( .A0(A[2]), .A1(n18), .B0(B[2]), .Y(n14) );
  OAI2BB1X1 U11 ( .A0N(A[1]), .A1N(B[1]), .B0(n13), .Y(n18) );
  OAI21XL U12 ( .A0(A[1]), .A1(B[1]), .B0(n17), .Y(n13) );
  XOR2X1 U13 ( .A(n17), .B(n16), .Y(Sum[1]) );
  XOR2X1 U14 ( .A(B[1]), .B(A[1]), .Y(n16) );
  CLKINVX1 U15 ( .A(Cin), .Y(n2) );
endmodule


module CarrySelectAdder4_1 ( Sum, Cout, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n19, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34;

  OR2X1 U1 ( .A(A[3]), .B(n33), .Y(n1) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n4) );
  OAI22XL U4 ( .A0(n5), .A1(n32), .B0(Cin), .B1(n31), .Y(Sum[2]) );
  XNOR2X1 U5 ( .A(n30), .B(n29), .Y(n31) );
  XNOR2X1 U6 ( .A(n28), .B(n2), .Y(n32) );
  CLKINVX1 U7 ( .A(n29), .Y(n2) );
  XNOR2X1 U8 ( .A(n34), .B(n33), .Y(Sum[3]) );
  XNOR2X1 U9 ( .A(A[3]), .B(B[3]), .Y(n34) );
  AO22X1 U10 ( .A0(n1), .A1(B[3]), .B0(n33), .B1(A[3]), .Y(Cout) );
  XOR2X1 U11 ( .A(n27), .B(n26), .Y(Sum[1]) );
  XNOR2X1 U12 ( .A(n7), .B(A[1]), .Y(n26) );
  OAI22XL U13 ( .A0(n25), .A1(n5), .B0(n4), .B1(n6), .Y(n27) );
  OA22X1 U14 ( .A0(n3), .A1(n7), .B0(n25), .B1(n19), .Y(n28) );
  OAI32X1 U15 ( .A0(n6), .A1(n19), .A2(n4), .B0(n3), .B1(n7), .Y(n30) );
  CLKINVX1 U16 ( .A(Cin), .Y(n5) );
  XNOR2X1 U17 ( .A(n4), .B(n24), .Y(Sum[0]) );
  XNOR2X1 U18 ( .A(n5), .B(B[0]), .Y(n24) );
  OAI2BB1X1 U19 ( .A0N(A[2]), .A1N(B[2]), .B0(n23), .Y(n33) );
  OAI22XL U20 ( .A0(n22), .A1(n30), .B0(A[2]), .B1(B[2]), .Y(n23) );
  NOR2X1 U21 ( .A(n28), .B(n5), .Y(n22) );
  XOR2X1 U22 ( .A(A[2]), .B(B[2]), .Y(n29) );
  NOR2X1 U23 ( .A(B[0]), .B(A[0]), .Y(n25) );
  NOR2X1 U24 ( .A(B[1]), .B(A[1]), .Y(n19) );
  CLKINVX1 U25 ( .A(B[1]), .Y(n7) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n6) );
endmodule


module CarrySelectAdder5_1 ( Sum, Cout, A, B, Cin );
  output [4:0] Sum;
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44;

  AOI2BB2X1 U1 ( .B0(A[2]), .B1(B[2]), .A0N(n33), .A1N(n25), .Y(n38) );
  OAI2BB2XL U2 ( .B0(n25), .B1(n35), .A0N(A[2]), .A1N(B[2]), .Y(n40) );
  AOI2BB2X1 U3 ( .B0(A[1]), .B1(B[1]), .A0N(n30), .A1N(n24), .Y(n33) );
  NOR2X1 U4 ( .A(B[1]), .B(A[1]), .Y(n24) );
  AOI32X1 U5 ( .A0(B[0]), .A1(n1), .A2(A[0]), .B0(A[1]), .B1(B[1]), .Y(n35) );
  CLKINVX1 U6 ( .A(n24), .Y(n1) );
  NOR2X1 U7 ( .A(B[2]), .B(A[2]), .Y(n25) );
  NOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(n30) );
  XNOR2X1 U9 ( .A(n44), .B(n43), .Y(Sum[4]) );
  XNOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n44) );
  OAI2BB1X1 U11 ( .A0N(n43), .A1N(A[4]), .B0(n28), .Y(Cout) );
  OAI21XL U12 ( .A0(A[4]), .A1(n43), .B0(B[4]), .Y(n28) );
  XOR2X1 U13 ( .A(n32), .B(n31), .Y(Sum[1]) );
  XOR2X1 U14 ( .A(B[1]), .B(A[1]), .Y(n31) );
  OAI2BB2XL U15 ( .B0(n30), .B1(n2), .A0N(A[0]), .A1N(B[0]), .Y(n32) );
  OAI2BB1X1 U16 ( .A0N(A[3]), .A1N(B[3]), .B0(n27), .Y(n43) );
  OAI22XL U17 ( .A0(n26), .A1(n40), .B0(A[3]), .B1(B[3]), .Y(n27) );
  NOR2X1 U18 ( .A(n38), .B(n2), .Y(n26) );
  OAI22XL U19 ( .A0(n2), .A1(n37), .B0(Cin), .B1(n36), .Y(Sum[2]) );
  XNOR2X1 U20 ( .A(n35), .B(n34), .Y(n36) );
  XNOR2X1 U21 ( .A(n33), .B(n34), .Y(n37) );
  XNOR2X1 U22 ( .A(A[2]), .B(B[2]), .Y(n34) );
  OAI22XL U23 ( .A0(n2), .A1(n42), .B0(Cin), .B1(n41), .Y(Sum[3]) );
  XOR2X1 U24 ( .A(n38), .B(n39), .Y(n42) );
  XNOR2X1 U25 ( .A(n40), .B(n39), .Y(n41) );
  XOR2X1 U26 ( .A(A[3]), .B(B[3]), .Y(n39) );
  XOR2X1 U27 ( .A(A[0]), .B(n29), .Y(Sum[0]) );
  XOR2X1 U28 ( .A(Cin), .B(B[0]), .Y(n29) );
  CLKINVX1 U29 ( .A(Cin), .Y(n2) );
endmodule


module CarrySelectAdder6_1 ( Sum, Cout, A, B, Cin );
  output [5:0] Sum;
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61;

  OAI22XL U1 ( .A0(n7), .A1(n49), .B0(Cin), .B1(n48), .Y(Sum[2]) );
  XNOR2X1 U2 ( .A(n5), .B(n41), .Y(Sum[0]) );
  XNOR2X1 U3 ( .A(n7), .B(B[0]), .Y(n41) );
  OAI22XL U4 ( .A0(n3), .A1(n4), .B0(n42), .B1(n35), .Y(n45) );
  AOI2BB2X1 U5 ( .B0(n36), .B1(n47), .A0N(n1), .A1N(n2), .Y(n52) );
  CLKINVX1 U6 ( .A(Cin), .Y(n7) );
  NOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(n42) );
  OAI32X1 U8 ( .A0(n6), .A1(n35), .A2(n5), .B0(n3), .B1(n4), .Y(n47) );
  NAND2X1 U9 ( .A(n2), .B(n1), .Y(n36) );
  CLKINVX1 U10 ( .A(A[0]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[0]), .Y(n6) );
  XNOR2X1 U13 ( .A(n47), .B(n46), .Y(n48) );
  XNOR2X1 U14 ( .A(n45), .B(n46), .Y(n49) );
  XOR2X1 U15 ( .A(A[2]), .B(B[2]), .Y(n46) );
  XNOR2X1 U16 ( .A(n61), .B(n60), .Y(Sum[5]) );
  XNOR2X1 U17 ( .A(A[5]), .B(B[5]), .Y(n61) );
  OAI2BB1X1 U18 ( .A0N(n60), .A1N(A[5]), .B0(n40), .Y(Cout) );
  OAI21XL U19 ( .A0(A[5]), .A1(n60), .B0(B[5]), .Y(n40) );
  AOI22X1 U20 ( .A0(n45), .A1(n36), .B0(A[2]), .B1(B[2]), .Y(n50) );
  XOR2X1 U21 ( .A(n44), .B(n43), .Y(Sum[1]) );
  XNOR2X1 U22 ( .A(n4), .B(A[1]), .Y(n43) );
  OAI22XL U23 ( .A0(n42), .A1(n7), .B0(n5), .B1(n6), .Y(n44) );
  NOR2X1 U24 ( .A(B[1]), .B(A[1]), .Y(n35) );
  CLKINVX1 U25 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U26 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U27 ( .A(B[2]), .Y(n2) );
  OAI22XL U28 ( .A0(n7), .A1(n54), .B0(Cin), .B1(n53), .Y(Sum[3]) );
  XOR2X1 U29 ( .A(n52), .B(n51), .Y(n53) );
  XOR2X1 U30 ( .A(n50), .B(n51), .Y(n54) );
  XOR2X1 U31 ( .A(A[3]), .B(B[3]), .Y(n51) );
  OAI22XL U32 ( .A0(n7), .A1(n59), .B0(Cin), .B1(n58), .Y(Sum[4]) );
  XOR2X1 U33 ( .A(n55), .B(n56), .Y(n59) );
  XNOR2X1 U34 ( .A(n57), .B(n56), .Y(n58) );
  XOR2X1 U35 ( .A(A[4]), .B(B[4]), .Y(n56) );
  AOI2BB2X1 U36 ( .B0(A[3]), .B1(B[3]), .A0N(n50), .A1N(n37), .Y(n55) );
  OAI2BB2XL U37 ( .B0(n37), .B1(n52), .A0N(A[3]), .A1N(B[3]), .Y(n57) );
  OAI2BB1X1 U38 ( .A0N(A[4]), .A1N(B[4]), .B0(n39), .Y(n60) );
  OAI22XL U39 ( .A0(n38), .A1(n57), .B0(A[4]), .B1(B[4]), .Y(n39) );
  NOR2X1 U40 ( .A(n55), .B(n7), .Y(n38) );
  NOR2X1 U41 ( .A(B[3]), .B(A[3]), .Y(n37) );
endmodule


module CarrySelectAdder7_3 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;

  OAI22XL U1 ( .A0(n7), .A1(n56), .B0(Cin), .B1(n55), .Y(Sum[2]) );
  OAI22XL U2 ( .A0(n3), .A1(n4), .B0(n49), .B1(n41), .Y(n52) );
  AOI2BB2X1 U3 ( .B0(n42), .B1(n54), .A0N(n1), .A1N(n2), .Y(n59) );
  CLKINVX1 U4 ( .A(Cin), .Y(n7) );
  OAI32X1 U5 ( .A0(n6), .A1(n41), .A2(n5), .B0(n3), .B1(n4), .Y(n54) );
  NAND2X1 U6 ( .A(n2), .B(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n7), .A1(n61), .B0(Cin), .B1(n60), .Y(Sum[3]) );
  XOR2X1 U8 ( .A(n59), .B(n58), .Y(n60) );
  XOR2X1 U9 ( .A(n57), .B(n58), .Y(n61) );
  XOR2X1 U10 ( .A(A[3]), .B(B[3]), .Y(n58) );
  XNOR2X1 U11 ( .A(n54), .B(n53), .Y(n55) );
  XNOR2X1 U12 ( .A(n52), .B(n53), .Y(n56) );
  XOR2X1 U13 ( .A(A[2]), .B(B[2]), .Y(n53) );
  OAI22XL U14 ( .A0(n7), .A1(n66), .B0(Cin), .B1(n65), .Y(Sum[4]) );
  XOR2X1 U15 ( .A(n64), .B(n63), .Y(n65) );
  XOR2X1 U16 ( .A(n62), .B(n63), .Y(n66) );
  XOR2X1 U17 ( .A(A[4]), .B(B[4]), .Y(n63) );
  XNOR2X1 U18 ( .A(n5), .B(n48), .Y(Sum[0]) );
  XNOR2X1 U19 ( .A(n7), .B(B[0]), .Y(n48) );
  OAI22XL U20 ( .A0(n7), .A1(n71), .B0(Cin), .B1(n70), .Y(Sum[5]) );
  XOR2X1 U21 ( .A(n67), .B(n68), .Y(n71) );
  XNOR2X1 U22 ( .A(n69), .B(n68), .Y(n70) );
  XOR2X1 U23 ( .A(A[5]), .B(B[5]), .Y(n68) );
  XNOR2X1 U24 ( .A(n73), .B(n72), .Y(Sum[6]) );
  XNOR2X1 U25 ( .A(A[6]), .B(B[6]), .Y(n73) );
  OAI2BB1X1 U26 ( .A0N(n72), .A1N(A[6]), .B0(n47), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n72), .B0(B[6]), .Y(n47) );
  AOI2BB2X1 U28 ( .B0(A[4]), .B1(B[4]), .A0N(n62), .A1N(n44), .Y(n67) );
  AOI2BB2X1 U29 ( .B0(A[3]), .B1(B[3]), .A0N(n43), .A1N(n59), .Y(n64) );
  AOI22X1 U30 ( .A0(n52), .A1(n42), .B0(A[2]), .B1(B[2]), .Y(n57) );
  OAI2BB2XL U31 ( .B0(n44), .B1(n64), .A0N(A[4]), .A1N(B[4]), .Y(n69) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n57), .A1N(n43), .Y(n62) );
  XOR2X1 U33 ( .A(n51), .B(n50), .Y(Sum[1]) );
  XNOR2X1 U34 ( .A(n4), .B(A[1]), .Y(n50) );
  OAI22XL U35 ( .A0(n49), .A1(n7), .B0(n5), .B1(n6), .Y(n51) );
  OAI2BB1X1 U36 ( .A0N(A[5]), .A1N(B[5]), .B0(n46), .Y(n72) );
  OAI22XL U37 ( .A0(n45), .A1(n69), .B0(A[5]), .B1(B[5]), .Y(n46) );
  NOR2X1 U38 ( .A(n67), .B(n7), .Y(n45) );
  NOR2X1 U39 ( .A(B[0]), .B(A[0]), .Y(n49) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n44) );
  NOR2X1 U41 ( .A(B[1]), .B(A[1]), .Y(n41) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n43) );
  CLKINVX1 U43 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U44 ( .A(A[0]), .Y(n5) );
  CLKINVX1 U45 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U46 ( .A(B[2]), .Y(n2) );
  CLKINVX1 U47 ( .A(B[1]), .Y(n4) );
  CLKINVX1 U48 ( .A(B[0]), .Y(n6) );
endmodule


module CarrySelectAdder7_2 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;

  OAI22XL U1 ( .A0(n7), .A1(n56), .B0(Cin), .B1(n55), .Y(Sum[2]) );
  OAI22XL U2 ( .A0(n3), .A1(n4), .B0(n49), .B1(n41), .Y(n52) );
  AOI2BB2X1 U3 ( .B0(n42), .B1(n54), .A0N(n1), .A1N(n2), .Y(n59) );
  CLKINVX1 U4 ( .A(Cin), .Y(n7) );
  OAI32X1 U5 ( .A0(n6), .A1(n41), .A2(n5), .B0(n3), .B1(n4), .Y(n54) );
  NAND2X1 U6 ( .A(n2), .B(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n7), .A1(n61), .B0(Cin), .B1(n60), .Y(Sum[3]) );
  XOR2X1 U8 ( .A(n59), .B(n58), .Y(n60) );
  XOR2X1 U9 ( .A(n57), .B(n58), .Y(n61) );
  XOR2X1 U10 ( .A(A[3]), .B(B[3]), .Y(n58) );
  XNOR2X1 U11 ( .A(n54), .B(n53), .Y(n55) );
  XNOR2X1 U12 ( .A(n52), .B(n53), .Y(n56) );
  XOR2X1 U13 ( .A(A[2]), .B(B[2]), .Y(n53) );
  XNOR2X1 U14 ( .A(n5), .B(n48), .Y(Sum[0]) );
  XNOR2X1 U15 ( .A(n7), .B(B[0]), .Y(n48) );
  AOI2BB2X1 U16 ( .B0(A[3]), .B1(B[3]), .A0N(n43), .A1N(n59), .Y(n64) );
  AOI22X1 U17 ( .A0(n52), .A1(n42), .B0(A[2]), .B1(B[2]), .Y(n57) );
  AOI2BB2X1 U18 ( .B0(A[3]), .B1(B[3]), .A0N(n57), .A1N(n43), .Y(n62) );
  XOR2X1 U19 ( .A(n51), .B(n50), .Y(Sum[1]) );
  XNOR2X1 U20 ( .A(n4), .B(A[1]), .Y(n50) );
  OAI22XL U21 ( .A0(n49), .A1(n7), .B0(n5), .B1(n6), .Y(n51) );
  NOR2X1 U22 ( .A(B[0]), .B(A[0]), .Y(n49) );
  NOR2X1 U23 ( .A(B[1]), .B(A[1]), .Y(n41) );
  NOR2X1 U24 ( .A(B[3]), .B(A[3]), .Y(n43) );
  CLKINVX1 U25 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U26 ( .A(A[0]), .Y(n5) );
  CLKINVX1 U27 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U28 ( .A(B[2]), .Y(n2) );
  CLKINVX1 U29 ( .A(B[1]), .Y(n4) );
  CLKINVX1 U30 ( .A(B[0]), .Y(n6) );
  OAI22XL U31 ( .A0(n7), .A1(n66), .B0(Cin), .B1(n65), .Y(Sum[4]) );
  XOR2X1 U32 ( .A(n64), .B(n63), .Y(n65) );
  XOR2X1 U33 ( .A(n62), .B(n63), .Y(n66) );
  XOR2X1 U34 ( .A(A[4]), .B(B[4]), .Y(n63) );
  OAI22XL U35 ( .A0(n7), .A1(n71), .B0(Cin), .B1(n70), .Y(Sum[5]) );
  XOR2X1 U36 ( .A(n67), .B(n68), .Y(n71) );
  XNOR2X1 U37 ( .A(n69), .B(n68), .Y(n70) );
  XOR2X1 U38 ( .A(A[5]), .B(B[5]), .Y(n68) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n62), .A1N(n44), .Y(n67) );
  OAI2BB2XL U40 ( .B0(n44), .B1(n64), .A0N(A[4]), .A1N(B[4]), .Y(n69) );
  OAI2BB1X1 U41 ( .A0N(A[5]), .A1N(B[5]), .B0(n46), .Y(n72) );
  OAI22XL U42 ( .A0(n45), .A1(n69), .B0(A[5]), .B1(B[5]), .Y(n46) );
  NOR2X1 U43 ( .A(n67), .B(n7), .Y(n45) );
  NOR2X1 U44 ( .A(B[4]), .B(A[4]), .Y(n44) );
  OAI2BB1X1 U45 ( .A0N(n72), .A1N(A[6]), .B0(n47), .Y(Cout) );
  XNOR2X1 U46 ( .A(n73), .B(n72), .Y(Sum[6]) );
  XNOR2X1 U47 ( .A(A[6]), .B(B[6]), .Y(n73) );
  OAI21XL U48 ( .A0(A[6]), .A1(n72), .B0(B[6]), .Y(n47) );
endmodule


module SquareRootCarrySelectAdder32_1 ( Sum, Cout, A, B, Cin );
  output [31:0] Sum;
  input [31:0] A;
  input [31:0] B;
  input Cin;
  output Cout;
  wire   CoutA, CoutB, CoutC, CoutD, CoutE;

  CarrySelectAdder3_1 csa3 ( .Sum(Sum[2:0]), .Cout(CoutA), .A(A[2:0]), .B(
        B[2:0]), .Cin(Cin) );
  CarrySelectAdder4_1 csa4 ( .Sum(Sum[6:3]), .Cout(CoutB), .A(A[6:3]), .B(
        B[6:3]), .Cin(CoutA) );
  CarrySelectAdder5_1 csa5 ( .Sum(Sum[11:7]), .Cout(CoutC), .A(A[11:7]), .B(
        B[11:7]), .Cin(CoutB) );
  CarrySelectAdder6_1 csa6 ( .Sum(Sum[17:12]), .Cout(CoutD), .A(A[17:12]), .B(
        B[17:12]), .Cin(CoutC) );
  CarrySelectAdder7_3 csa7_0 ( .Sum(Sum[24:18]), .Cout(CoutE), .A(A[24:18]), 
        .B(B[24:18]), .Cin(CoutD) );
  CarrySelectAdder7_2 csa7_1 ( .Sum(Sum[31:25]), .Cout(Cout), .A(A[31:25]), 
        .B(B[31:25]), .Cin(CoutE) );
endmodule


module CarrySelectAdder3_0 ( Sum, Cout, A, B, Cin );
  output [2:0] Sum;
  input [2:0] A;
  input [2:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n12, n13, n14, n15, n16, n17, n18, n19;

  OAI22XL U1 ( .A0(n12), .A1(n2), .B0(n1), .B1(n3), .Y(n17) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n3) );
  NOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(n12) );
  OAI2BB1X1 U4 ( .A0N(n18), .A1N(A[2]), .B0(n14), .Y(Cout) );
  OAI21XL U5 ( .A0(A[2]), .A1(n18), .B0(B[2]), .Y(n14) );
  OAI2BB1X1 U6 ( .A0N(A[1]), .A1N(B[1]), .B0(n13), .Y(n18) );
  OAI21XL U7 ( .A0(A[1]), .A1(B[1]), .B0(n17), .Y(n13) );
  XNOR2X1 U8 ( .A(n19), .B(n18), .Y(Sum[2]) );
  XNOR2X1 U9 ( .A(A[2]), .B(B[2]), .Y(n19) );
  XNOR2X1 U10 ( .A(n1), .B(n15), .Y(Sum[0]) );
  XNOR2X1 U11 ( .A(n2), .B(B[0]), .Y(n15) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  XOR2X1 U13 ( .A(n17), .B(n16), .Y(Sum[1]) );
  XOR2X1 U14 ( .A(B[1]), .B(A[1]), .Y(n16) );
  CLKINVX1 U15 ( .A(Cin), .Y(n2) );
endmodule


module CarrySelectAdder4_0 ( Sum, Cout, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n19, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34;

  OR2X1 U1 ( .A(A[3]), .B(n33), .Y(n1) );
  OAI22XL U2 ( .A0(n5), .A1(n32), .B0(Cin), .B1(n31), .Y(Sum[2]) );
  XNOR2X1 U3 ( .A(n30), .B(n29), .Y(n31) );
  XNOR2X1 U4 ( .A(n28), .B(n2), .Y(n32) );
  CLKINVX1 U5 ( .A(n29), .Y(n2) );
  OAI2BB1X1 U6 ( .A0N(A[2]), .A1N(B[2]), .B0(n23), .Y(n33) );
  OAI22XL U7 ( .A0(n22), .A1(n30), .B0(A[2]), .B1(B[2]), .Y(n23) );
  NOR2X1 U8 ( .A(n28), .B(n5), .Y(n22) );
  OA22X1 U9 ( .A0(n3), .A1(n6), .B0(n25), .B1(n19), .Y(n28) );
  XOR2X1 U10 ( .A(A[2]), .B(B[2]), .Y(n29) );
  OAI32X1 U11 ( .A0(n7), .A1(n19), .A2(n4), .B0(n3), .B1(n6), .Y(n30) );
  CLKINVX1 U12 ( .A(Cin), .Y(n5) );
  XOR2X1 U13 ( .A(n27), .B(n26), .Y(Sum[1]) );
  XNOR2X1 U14 ( .A(n6), .B(A[1]), .Y(n26) );
  OAI22XL U15 ( .A0(n25), .A1(n5), .B0(n4), .B1(n7), .Y(n27) );
  CLKINVX1 U16 ( .A(A[1]), .Y(n3) );
  AO22X1 U17 ( .A0(n1), .A1(B[3]), .B0(n33), .B1(A[3]), .Y(Cout) );
  NOR2X1 U18 ( .A(B[0]), .B(A[0]), .Y(n25) );
  XNOR2X1 U19 ( .A(n34), .B(n33), .Y(Sum[3]) );
  XNOR2X1 U20 ( .A(A[3]), .B(B[3]), .Y(n34) );
  XNOR2X1 U21 ( .A(n4), .B(n24), .Y(Sum[0]) );
  XNOR2X1 U22 ( .A(n5), .B(B[0]), .Y(n24) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n7) );
  CLKINVX1 U24 ( .A(A[0]), .Y(n4) );
  NOR2X1 U25 ( .A(B[1]), .B(A[1]), .Y(n19) );
  CLKINVX1 U26 ( .A(B[1]), .Y(n6) );
endmodule


module CarrySelectAdder5_0 ( Sum, Cout, A, B, Cin );
  output [4:0] Sum;
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44;

  CLKINVX1 U1 ( .A(Cin), .Y(n2) );
  OAI2BB1X1 U2 ( .A0N(n43), .A1N(A[4]), .B0(n28), .Y(Cout) );
  OAI21XL U3 ( .A0(A[4]), .A1(n43), .B0(B[4]), .Y(n28) );
  OAI2BB2XL U4 ( .B0(n25), .B1(n35), .A0N(A[2]), .A1N(B[2]), .Y(n40) );
  OAI22XL U5 ( .A0(n2), .A1(n37), .B0(Cin), .B1(n36), .Y(Sum[2]) );
  XNOR2X1 U6 ( .A(n35), .B(n34), .Y(n36) );
  XNOR2X1 U7 ( .A(n33), .B(n34), .Y(n37) );
  XNOR2X1 U8 ( .A(A[2]), .B(B[2]), .Y(n34) );
  OAI22XL U9 ( .A0(n2), .A1(n42), .B0(Cin), .B1(n41), .Y(Sum[3]) );
  XOR2X1 U10 ( .A(n38), .B(n39), .Y(n42) );
  XNOR2X1 U11 ( .A(n40), .B(n39), .Y(n41) );
  XOR2X1 U12 ( .A(A[3]), .B(B[3]), .Y(n39) );
  AOI2BB2X1 U13 ( .B0(A[2]), .B1(B[2]), .A0N(n33), .A1N(n25), .Y(n38) );
  NOR2X1 U14 ( .A(B[1]), .B(A[1]), .Y(n24) );
  OAI2BB1X1 U15 ( .A0N(A[3]), .A1N(B[3]), .B0(n27), .Y(n43) );
  OAI22XL U16 ( .A0(n26), .A1(n40), .B0(A[3]), .B1(B[3]), .Y(n27) );
  NOR2X1 U17 ( .A(n38), .B(n2), .Y(n26) );
  NOR2X1 U18 ( .A(B[2]), .B(A[2]), .Y(n25) );
  AOI2BB2X1 U19 ( .B0(A[1]), .B1(B[1]), .A0N(n30), .A1N(n24), .Y(n33) );
  AOI32X1 U20 ( .A0(B[0]), .A1(n1), .A2(A[0]), .B0(A[1]), .B1(B[1]), .Y(n35)
         );
  CLKINVX1 U21 ( .A(n24), .Y(n1) );
  NOR2X1 U22 ( .A(B[0]), .B(A[0]), .Y(n30) );
  XNOR2X1 U23 ( .A(n44), .B(n43), .Y(Sum[4]) );
  XNOR2X1 U24 ( .A(A[4]), .B(B[4]), .Y(n44) );
  XOR2X1 U25 ( .A(n32), .B(n31), .Y(Sum[1]) );
  XOR2X1 U26 ( .A(B[1]), .B(A[1]), .Y(n31) );
  OAI2BB2XL U27 ( .B0(n30), .B1(n2), .A0N(A[0]), .A1N(B[0]), .Y(n32) );
  XOR2X1 U28 ( .A(A[0]), .B(n29), .Y(Sum[0]) );
  XOR2X1 U29 ( .A(Cin), .B(B[0]), .Y(n29) );
endmodule


module CarrySelectAdder6_0 ( Sum, Cout, A, B, Cin );
  output [5:0] Sum;
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61;

  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U2 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n2) );
  OAI22XL U4 ( .A0(n2), .A1(n6), .B0(n42), .B1(n35), .Y(n45) );
  AOI2BB2X1 U5 ( .B0(n36), .B1(n47), .A0N(n1), .A1N(n5), .Y(n52) );
  CLKINVX1 U6 ( .A(Cin), .Y(n4) );
  OAI32X1 U7 ( .A0(n7), .A1(n35), .A2(n3), .B0(n2), .B1(n6), .Y(n47) );
  NAND2X1 U8 ( .A(n5), .B(n1), .Y(n36) );
  XOR2X1 U9 ( .A(n44), .B(n43), .Y(Sum[1]) );
  XNOR2X1 U10 ( .A(n6), .B(A[1]), .Y(n43) );
  OAI22XL U11 ( .A0(n42), .A1(n4), .B0(n3), .B1(n7), .Y(n44) );
  OAI2BB1X1 U12 ( .A0N(n60), .A1N(A[5]), .B0(n40), .Y(Cout) );
  OAI21XL U13 ( .A0(A[5]), .A1(n60), .B0(B[5]), .Y(n40) );
  AOI22X1 U14 ( .A0(n45), .A1(n36), .B0(A[2]), .B1(B[2]), .Y(n50) );
  OAI2BB2XL U15 ( .B0(n37), .B1(n52), .A0N(A[3]), .A1N(B[3]), .Y(n57) );
  OAI22XL U16 ( .A0(n4), .A1(n54), .B0(Cin), .B1(n53), .Y(Sum[3]) );
  XOR2X1 U17 ( .A(n52), .B(n51), .Y(n53) );
  XOR2X1 U18 ( .A(n50), .B(n51), .Y(n54) );
  XOR2X1 U19 ( .A(A[3]), .B(B[3]), .Y(n51) );
  OAI22XL U20 ( .A0(n4), .A1(n49), .B0(Cin), .B1(n48), .Y(Sum[2]) );
  XNOR2X1 U21 ( .A(n47), .B(n46), .Y(n48) );
  XNOR2X1 U22 ( .A(n45), .B(n46), .Y(n49) );
  XOR2X1 U23 ( .A(A[2]), .B(B[2]), .Y(n46) );
  OAI22XL U24 ( .A0(n4), .A1(n59), .B0(Cin), .B1(n58), .Y(Sum[4]) );
  XOR2X1 U25 ( .A(n55), .B(n56), .Y(n59) );
  XNOR2X1 U26 ( .A(n57), .B(n56), .Y(n58) );
  XOR2X1 U27 ( .A(A[4]), .B(B[4]), .Y(n56) );
  AOI2BB2X1 U28 ( .B0(A[3]), .B1(B[3]), .A0N(n50), .A1N(n37), .Y(n55) );
  OAI2BB1X1 U29 ( .A0N(A[4]), .A1N(B[4]), .B0(n39), .Y(n60) );
  OAI22XL U30 ( .A0(n38), .A1(n57), .B0(A[4]), .B1(B[4]), .Y(n39) );
  NOR2X1 U31 ( .A(n55), .B(n4), .Y(n38) );
  NOR2X1 U32 ( .A(B[0]), .B(A[0]), .Y(n42) );
  NOR2X1 U33 ( .A(B[3]), .B(A[3]), .Y(n37) );
  CLKINVX1 U34 ( .A(B[2]), .Y(n5) );
  NOR2X1 U35 ( .A(B[1]), .B(A[1]), .Y(n35) );
  XNOR2X1 U36 ( .A(n61), .B(n60), .Y(Sum[5]) );
  XNOR2X1 U37 ( .A(A[5]), .B(B[5]), .Y(n61) );
  XNOR2X1 U38 ( .A(n3), .B(n41), .Y(Sum[0]) );
  XNOR2X1 U39 ( .A(n4), .B(B[0]), .Y(n41) );
  CLKINVX1 U40 ( .A(B[0]), .Y(n7) );
  CLKINVX1 U41 ( .A(B[1]), .Y(n6) );
endmodule


module CarrySelectAdder7_1 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;

  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n2) );
  OAI22XL U4 ( .A0(n2), .A1(n5), .B0(n49), .B1(n41), .Y(n52) );
  AOI2BB2X1 U5 ( .B0(n42), .B1(n54), .A0N(n1), .A1N(n4), .Y(n59) );
  CLKINVX1 U6 ( .A(Cin), .Y(n6) );
  OAI32X1 U7 ( .A0(n7), .A1(n41), .A2(n3), .B0(n2), .B1(n5), .Y(n54) );
  NOR2X1 U8 ( .A(B[1]), .B(A[1]), .Y(n41) );
  NAND2X1 U9 ( .A(n4), .B(n1), .Y(n42) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n5) );
  XOR2X1 U11 ( .A(n51), .B(n50), .Y(Sum[1]) );
  XNOR2X1 U12 ( .A(n5), .B(A[1]), .Y(n50) );
  OAI22XL U13 ( .A0(n49), .A1(n6), .B0(n3), .B1(n7), .Y(n51) );
  OAI2BB1X1 U14 ( .A0N(n72), .A1N(A[6]), .B0(n47), .Y(Cout) );
  OAI21XL U15 ( .A0(A[6]), .A1(n72), .B0(B[6]), .Y(n47) );
  AOI2BB2X1 U16 ( .B0(A[4]), .B1(B[4]), .A0N(n62), .A1N(n44), .Y(n67) );
  AOI2BB2X1 U17 ( .B0(A[3]), .B1(B[3]), .A0N(n43), .A1N(n59), .Y(n64) );
  AOI22X1 U18 ( .A0(n52), .A1(n42), .B0(A[2]), .B1(B[2]), .Y(n57) );
  XNOR2X1 U19 ( .A(n3), .B(n48), .Y(Sum[0]) );
  XNOR2X1 U20 ( .A(n6), .B(B[0]), .Y(n48) );
  OAI2BB2XL U21 ( .B0(n44), .B1(n64), .A0N(A[4]), .A1N(B[4]), .Y(n69) );
  OAI22XL U22 ( .A0(n6), .A1(n56), .B0(Cin), .B1(n55), .Y(Sum[2]) );
  XNOR2X1 U23 ( .A(n54), .B(n53), .Y(n55) );
  XNOR2X1 U24 ( .A(n52), .B(n53), .Y(n56) );
  XOR2X1 U25 ( .A(A[2]), .B(B[2]), .Y(n53) );
  OAI22XL U26 ( .A0(n6), .A1(n61), .B0(Cin), .B1(n60), .Y(Sum[3]) );
  XOR2X1 U27 ( .A(n59), .B(n58), .Y(n60) );
  XOR2X1 U28 ( .A(n57), .B(n58), .Y(n61) );
  XOR2X1 U29 ( .A(A[3]), .B(B[3]), .Y(n58) );
  OAI22XL U30 ( .A0(n6), .A1(n66), .B0(Cin), .B1(n65), .Y(Sum[4]) );
  XOR2X1 U31 ( .A(n64), .B(n63), .Y(n65) );
  XOR2X1 U32 ( .A(n62), .B(n63), .Y(n66) );
  XOR2X1 U33 ( .A(A[4]), .B(B[4]), .Y(n63) );
  OAI22XL U34 ( .A0(n6), .A1(n71), .B0(Cin), .B1(n70), .Y(Sum[5]) );
  XOR2X1 U35 ( .A(n67), .B(n68), .Y(n71) );
  XNOR2X1 U36 ( .A(n69), .B(n68), .Y(n70) );
  XOR2X1 U37 ( .A(A[5]), .B(B[5]), .Y(n68) );
  XNOR2X1 U38 ( .A(n73), .B(n72), .Y(Sum[6]) );
  XNOR2X1 U39 ( .A(A[6]), .B(B[6]), .Y(n73) );
  AOI2BB2X1 U40 ( .B0(A[3]), .B1(B[3]), .A0N(n57), .A1N(n43), .Y(n62) );
  NOR2X1 U41 ( .A(B[0]), .B(A[0]), .Y(n49) );
  OAI2BB1X1 U42 ( .A0N(A[5]), .A1N(B[5]), .B0(n46), .Y(n72) );
  OAI22XL U43 ( .A0(n45), .A1(n69), .B0(A[5]), .B1(B[5]), .Y(n46) );
  NOR2X1 U44 ( .A(n67), .B(n6), .Y(n45) );
  NOR2X1 U45 ( .A(B[4]), .B(A[4]), .Y(n44) );
  NOR2X1 U46 ( .A(B[3]), .B(A[3]), .Y(n43) );
  CLKINVX1 U47 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U48 ( .A(B[0]), .Y(n7) );
endmodule


module CarrySelectAdder7_0 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;

  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n4) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n2) );
  OAI22XL U4 ( .A0(n2), .A1(n6), .B0(n49), .B1(n41), .Y(n52) );
  AOI2BB2X1 U5 ( .B0(n42), .B1(n54), .A0N(n1), .A1N(n3), .Y(n59) );
  CLKINVX1 U6 ( .A(Cin), .Y(n5) );
  OAI32X1 U7 ( .A0(n7), .A1(n41), .A2(n4), .B0(n2), .B1(n6), .Y(n54) );
  NAND2X1 U8 ( .A(n3), .B(n1), .Y(n42) );
  XOR2X1 U9 ( .A(n51), .B(n50), .Y(Sum[1]) );
  XNOR2X1 U10 ( .A(n6), .B(A[1]), .Y(n50) );
  OAI22XL U11 ( .A0(n49), .A1(n5), .B0(n4), .B1(n7), .Y(n51) );
  AOI2BB2X1 U12 ( .B0(A[4]), .B1(B[4]), .A0N(n62), .A1N(n44), .Y(n67) );
  AOI2BB2X1 U13 ( .B0(A[3]), .B1(B[3]), .A0N(n43), .A1N(n59), .Y(n64) );
  AOI22X1 U14 ( .A0(n52), .A1(n42), .B0(A[2]), .B1(B[2]), .Y(n57) );
  XNOR2X1 U15 ( .A(n4), .B(n48), .Y(Sum[0]) );
  XNOR2X1 U16 ( .A(n5), .B(B[0]), .Y(n48) );
  OAI22XL U17 ( .A0(n5), .A1(n56), .B0(Cin), .B1(n55), .Y(Sum[2]) );
  XNOR2X1 U18 ( .A(n54), .B(n53), .Y(n55) );
  XNOR2X1 U19 ( .A(n52), .B(n53), .Y(n56) );
  XOR2X1 U20 ( .A(A[2]), .B(B[2]), .Y(n53) );
  OAI22XL U21 ( .A0(n5), .A1(n61), .B0(Cin), .B1(n60), .Y(Sum[3]) );
  XOR2X1 U22 ( .A(n59), .B(n58), .Y(n60) );
  XOR2X1 U23 ( .A(n57), .B(n58), .Y(n61) );
  XOR2X1 U24 ( .A(A[3]), .B(B[3]), .Y(n58) );
  OAI22XL U25 ( .A0(n5), .A1(n66), .B0(Cin), .B1(n65), .Y(Sum[4]) );
  XOR2X1 U26 ( .A(n64), .B(n63), .Y(n65) );
  XOR2X1 U27 ( .A(n62), .B(n63), .Y(n66) );
  XOR2X1 U28 ( .A(A[4]), .B(B[4]), .Y(n63) );
  OAI22XL U29 ( .A0(n5), .A1(n71), .B0(Cin), .B1(n70), .Y(Sum[5]) );
  XOR2X1 U30 ( .A(n67), .B(n68), .Y(n71) );
  XNOR2X1 U31 ( .A(n69), .B(n68), .Y(n70) );
  XOR2X1 U32 ( .A(A[5]), .B(B[5]), .Y(n68) );
  OAI2BB2XL U33 ( .B0(n44), .B1(n64), .A0N(A[4]), .A1N(B[4]), .Y(n69) );
  XNOR2X1 U34 ( .A(n73), .B(n72), .Y(Sum[6]) );
  XNOR2X1 U35 ( .A(A[6]), .B(B[6]), .Y(n73) );
  AOI2BB2X1 U36 ( .B0(A[3]), .B1(B[3]), .A0N(n57), .A1N(n43), .Y(n62) );
  OAI21XL U37 ( .A0(A[6]), .A1(n72), .B0(B[6]), .Y(n47) );
  NOR2X1 U38 ( .A(B[0]), .B(A[0]), .Y(n49) );
  OAI2BB1X1 U39 ( .A0N(A[5]), .A1N(B[5]), .B0(n46), .Y(n72) );
  OAI22XL U40 ( .A0(n45), .A1(n69), .B0(A[5]), .B1(B[5]), .Y(n46) );
  NOR2X1 U41 ( .A(n67), .B(n5), .Y(n45) );
  NOR2X1 U42 ( .A(B[4]), .B(A[4]), .Y(n44) );
  NOR2X1 U43 ( .A(B[3]), .B(A[3]), .Y(n43) );
  CLKINVX1 U44 ( .A(B[2]), .Y(n3) );
  NOR2X1 U45 ( .A(B[1]), .B(A[1]), .Y(n41) );
  CLKINVX1 U46 ( .A(B[0]), .Y(n7) );
  CLKINVX1 U47 ( .A(B[1]), .Y(n6) );
  OAI2BB1X1 U48 ( .A0N(n72), .A1N(A[6]), .B0(n47), .Y(Cout) );
endmodule


module SquareRootCarrySelectAdder32_0 ( Sum, Cout, A, B, Cin );
  output [31:0] Sum;
  input [31:0] A;
  input [31:0] B;
  input Cin;
  output Cout;
  wire   CoutA, CoutB, CoutC, CoutD, CoutE;

  CarrySelectAdder3_0 csa3 ( .Sum(Sum[2:0]), .Cout(CoutA), .A(A[2:0]), .B(
        B[2:0]), .Cin(Cin) );
  CarrySelectAdder4_0 csa4 ( .Sum(Sum[6:3]), .Cout(CoutB), .A(A[6:3]), .B(
        B[6:3]), .Cin(CoutA) );
  CarrySelectAdder5_0 csa5 ( .Sum(Sum[11:7]), .Cout(CoutC), .A(A[11:7]), .B(
        B[11:7]), .Cin(CoutB) );
  CarrySelectAdder6_0 csa6 ( .Sum(Sum[17:12]), .Cout(CoutD), .A(A[17:12]), .B(
        B[17:12]), .Cin(CoutC) );
  CarrySelectAdder7_1 csa7_0 ( .Sum(Sum[24:18]), .Cout(CoutE), .A(A[24:18]), 
        .B(B[24:18]), .Cin(CoutD) );
  CarrySelectAdder7_0 csa7_1 ( .Sum(Sum[31:25]), .Cout(Cout), .A(A[31:25]), 
        .B(B[31:25]), .Cin(CoutE) );
endmodule


module Mul ( R, X, Y );
  output [31:0] R;
  input [15:0] X;
  input [15:0] Y;
  wire   n2, n4, n6, n8, n10, n12, n14, n16, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16;
  wire   [15:1] Sign;
  wire   [16:0] PP7;
  wire   [16:0] PP6;
  wire   [16:0] PP5;
  wire   [16:0] PP4;
  wire   [16:0] PP3;
  wire   [16:0] PP2;
  wire   [16:0] PP1;
  wire   [16:0] PP0;
  wire   [31:0] OPA;
  wire   [31:0] OPB;
  wire   [31:0] SignCompensate;
  wire   [31:0] TmpResult;

  BoothRadix4 br4 ( .Sign({Sign[15], SYNOPSYS_UNCONNECTED_1, Sign[13], 
        SYNOPSYS_UNCONNECTED_2, Sign[11], SYNOPSYS_UNCONNECTED_3, Sign[9], 
        SYNOPSYS_UNCONNECTED_4, Sign[7], SYNOPSYS_UNCONNECTED_5, Sign[5], 
        SYNOPSYS_UNCONNECTED_6, Sign[3], SYNOPSYS_UNCONNECTED_7, Sign[1], 
        SYNOPSYS_UNCONNECTED_8}), .PP7(PP7), .PP6(PP6), .PP5(PP5), .PP4(PP4), 
        .PP3(PP3), .PP2(PP2), .PP1(PP1), .PP0(PP0), .InputA(X), .InputB(Y) );
  WallaceTree16X16Radix4 wt16x16r4 ( .OPA({SYNOPSYS_UNCONNECTED_9, OPA[30:0]}), 
        .OPB({SYNOPSYS_UNCONNECTED_10, OPB[30:6], SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}), .PP7(PP7), .PP6(PP6), .PP5(PP5), .PP4(PP4), 
        .PP3(PP3), .PP2(PP2), .PP1(PP1), .PP0(PP0) );
  SquareRootCarrySelectAdder32_2 srcsa32_0 ( .Sum(SignCompensate), .A({n16, 
        1'b1, n14, 1'b1, n12, 1'b1, n10, 1'b1, n8, 1'b1, n6, 1'b1, n4, 1'b1, 
        n2, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .Cin(1'b0) );
  SquareRootCarrySelectAdder32_1 srcsa32_1 ( .Sum(TmpResult), .A({1'b0, 
        OPA[30:0]}), .B({1'b0, OPB[30:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Cin(1'b0) );
  SquareRootCarrySelectAdder32_0 srcsa32_2 ( .Sum(R), .A(TmpResult), .B(
        SignCompensate), .Cin(1'b0) );
  CLKINVX1 U3 ( .A(Sign[3]), .Y(n4) );
  CLKINVX1 U4 ( .A(Sign[5]), .Y(n6) );
  CLKINVX1 U5 ( .A(Sign[11]), .Y(n12) );
  CLKINVX1 U6 ( .A(Sign[13]), .Y(n14) );
  CLKINVX1 U7 ( .A(Sign[9]), .Y(n10) );
  CLKINVX1 U8 ( .A(Sign[1]), .Y(n2) );
  CLKINVX1 U9 ( .A(Sign[7]), .Y(n8) );
  CLKINVX1 U10 ( .A(Sign[15]), .Y(n16) );
endmodule


module Outputer ( Ready, Valid, R, tmpR, Clk, Rst );
  output [31:0] R;
  input [31:0] tmpR;
  input Clk, Rst;
  output Ready, Valid;
  wire   N11, N12, N13, n7, n8, n9, n10, n11, n1, n2, n3, n4;
  wire   [3:0] Counter;

  DFFRX1 Counter_reg_1_ ( .D(N11), .CK(Clk), .RN(Rst), .Q(Counter[1]) );
  DFFSX1 Counter_reg_3_ ( .D(N13), .CK(Clk), .SN(Rst), .Q(Counter[3]), .QN(n7)
         );
  DFFTRX1 Valid_reg ( .D(n9), .RN(n7), .CK(Clk), .Q(Valid) );
  DFFTRX1 Ready_reg ( .D(n9), .RN(Counter[3]), .CK(Clk), .Q(Ready) );
  DFFTRX1 R_reg_31_ ( .D(tmpR[31]), .RN(n4), .CK(Clk), .Q(R[31]) );
  DFFTRX1 R_reg_30_ ( .D(tmpR[30]), .RN(n4), .CK(Clk), .Q(R[30]) );
  DFFTRX1 R_reg_29_ ( .D(tmpR[29]), .RN(n4), .CK(Clk), .Q(R[29]) );
  DFFTRX1 R_reg_28_ ( .D(tmpR[28]), .RN(n4), .CK(Clk), .Q(R[28]) );
  DFFTRX1 R_reg_27_ ( .D(tmpR[27]), .RN(n4), .CK(Clk), .Q(R[27]) );
  DFFTRX1 R_reg_26_ ( .D(tmpR[26]), .RN(n4), .CK(Clk), .Q(R[26]) );
  DFFTRX1 R_reg_25_ ( .D(tmpR[25]), .RN(n4), .CK(Clk), .Q(R[25]) );
  DFFTRX1 R_reg_24_ ( .D(tmpR[24]), .RN(n4), .CK(Clk), .Q(R[24]) );
  DFFTRX1 R_reg_23_ ( .D(tmpR[23]), .RN(n4), .CK(Clk), .Q(R[23]) );
  DFFTRX1 R_reg_22_ ( .D(tmpR[22]), .RN(n4), .CK(Clk), .Q(R[22]) );
  DFFTRX1 R_reg_21_ ( .D(tmpR[21]), .RN(n4), .CK(Clk), .Q(R[21]) );
  DFFTRX1 R_reg_20_ ( .D(tmpR[20]), .RN(n4), .CK(Clk), .Q(R[20]) );
  DFFTRX1 R_reg_19_ ( .D(tmpR[19]), .RN(n4), .CK(Clk), .Q(R[19]) );
  DFFTRX1 R_reg_18_ ( .D(tmpR[18]), .RN(n4), .CK(Clk), .Q(R[18]) );
  DFFTRX1 R_reg_17_ ( .D(tmpR[17]), .RN(n4), .CK(Clk), .Q(R[17]) );
  DFFTRX1 R_reg_16_ ( .D(tmpR[16]), .RN(n4), .CK(Clk), .Q(R[16]) );
  DFFTRX1 R_reg_15_ ( .D(tmpR[15]), .RN(n4), .CK(Clk), .Q(R[15]) );
  DFFTRX1 R_reg_14_ ( .D(tmpR[14]), .RN(n4), .CK(Clk), .Q(R[14]) );
  DFFTRX1 R_reg_13_ ( .D(tmpR[13]), .RN(n4), .CK(Clk), .Q(R[13]) );
  DFFTRX1 R_reg_12_ ( .D(tmpR[12]), .RN(n4), .CK(Clk), .Q(R[12]) );
  DFFTRX1 R_reg_11_ ( .D(tmpR[11]), .RN(n4), .CK(Clk), .Q(R[11]) );
  DFFTRX1 R_reg_10_ ( .D(tmpR[10]), .RN(n4), .CK(Clk), .Q(R[10]) );
  DFFTRX1 R_reg_9_ ( .D(tmpR[9]), .RN(n4), .CK(Clk), .Q(R[9]) );
  DFFTRX1 R_reg_8_ ( .D(tmpR[8]), .RN(n4), .CK(Clk), .Q(R[8]) );
  DFFTRX1 R_reg_7_ ( .D(tmpR[7]), .RN(n4), .CK(Clk), .Q(R[7]) );
  DFFTRX1 R_reg_6_ ( .D(tmpR[6]), .RN(n4), .CK(Clk), .Q(R[6]) );
  DFFTRX1 R_reg_5_ ( .D(tmpR[5]), .RN(n4), .CK(Clk), .Q(R[5]) );
  DFFTRX1 R_reg_4_ ( .D(tmpR[4]), .RN(n4), .CK(Clk), .Q(R[4]) );
  DFFTRX1 R_reg_3_ ( .D(tmpR[3]), .RN(n4), .CK(Clk), .Q(R[3]) );
  DFFTRX1 R_reg_2_ ( .D(tmpR[2]), .RN(n4), .CK(Clk), .Q(R[2]) );
  DFFTRX1 R_reg_1_ ( .D(tmpR[1]), .RN(n4), .CK(Clk), .Q(R[1]) );
  DFFTRX1 R_reg_0_ ( .D(tmpR[0]), .RN(n4), .CK(Clk), .Q(R[0]) );
  DFFRX1 Counter_reg_2_ ( .D(N12), .CK(Clk), .RN(Rst), .Q(Counter[2]), .QN(n8)
         );
  DFFRX1 Counter_reg_0_ ( .D(n1), .CK(Clk), .RN(Rst), .Q(Counter[0]) );
  NOR2XL U3 ( .A(n4), .B(Counter[0]), .Y(n1) );
  INVX3 U4 ( .A(n10), .Y(n4) );
  NAND2X1 U5 ( .A(n9), .B(n7), .Y(n10) );
  AND2X2 U6 ( .A(n11), .B(n8), .Y(n9) );
  INVXL U7 ( .A(n1), .Y(n3) );
  AOI21XL U8 ( .A0(Counter[0]), .A1(Counter[1]), .B0(n11), .Y(n2) );
  OAI32XL U9 ( .A0(n3), .A1(Counter[2]), .A2(Counter[1]), .B0(n11), .B1(n8), 
        .Y(N12) );
  OAI21XL U10 ( .A0(n9), .A1(n7), .B0(n10), .Y(N13) );
  NOR2X1 U11 ( .A(Counter[0]), .B(Counter[1]), .Y(n11) );
  NOR2X1 U12 ( .A(n2), .B(n4), .Y(N11) );
endmodule


module multiplier ( Ready, Valid, R, X, Y, Clk, Rst );
  output [31:0] R;
  input [15:0] X;
  input [15:0] Y;
  input Clk, Rst;
  output Ready, Valid;

  wire   [31:0] tmpR;

  Mul mul_1 ( .R(tmpR), .X(X), .Y(Y) );
  Outputer o_0 ( .Ready(Ready), .Valid(Valid), .R(R), .tmpR(tmpR), .Clk(Clk), 
        .Rst(Rst) );
endmodule

