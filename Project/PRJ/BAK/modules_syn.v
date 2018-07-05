/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Thu Jun  7 23:11:53 2018
/////////////////////////////////////////////////////////////

`include "/data/software/PROCESS/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v" 

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
  XOR2X1 U1 ( .A(carry[16]), .B(A[16]), .Y(SUM[16]) );
endmodule


module BoothRadix4_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

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
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
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
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [16:1] n_A;
  wire   [16:2] n_A2;

  BoothRadix4_DW01_inc_0 add_49 ( .A({n33, n34, n35, n36, n37, n38, n39, n40, 
        n41, n42, n43, n44, n45, n46, n47, n48, 1'b1}), .SUM({n_A2, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}) );
  BoothRadix4_DW01_inc_1 add_48 ( .A({n33, n33, n34, n35, n36, n37, n38, n39, 
        n40, n41, n42, n43, n44, n45, n46, n47, n48}), .SUM({n_A, 
        SYNOPSYS_UNCONNECTED_3}) );
  CLKINVX1 U4 ( .A(1'b1), .Y(Sign[14]) );
  CLKINVX1 U6 ( .A(1'b1), .Y(Sign[12]) );
  CLKINVX1 U8 ( .A(1'b1), .Y(Sign[10]) );
  CLKINVX1 U10 ( .A(1'b1), .Y(Sign[8]) );
  CLKINVX1 U12 ( .A(1'b1), .Y(Sign[6]) );
  CLKINVX1 U14 ( .A(1'b1), .Y(Sign[4]) );
  CLKINVX1 U16 ( .A(1'b1), .Y(Sign[2]) );
  CLKINVX1 U18 ( .A(1'b1), .Y(Sign[0]) );
  BUFX2 U20 ( .A(Sign[1]), .Y(PP0[16]) );
  BUFX2 U21 ( .A(Sign[3]), .Y(PP1[16]) );
  BUFX2 U22 ( .A(Sign[5]), .Y(PP2[16]) );
  BUFX2 U23 ( .A(Sign[7]), .Y(PP3[16]) );
  BUFX2 U24 ( .A(Sign[9]), .Y(PP4[16]) );
  BUFX2 U25 ( .A(Sign[11]), .Y(PP5[16]) );
  BUFX2 U26 ( .A(Sign[13]), .Y(PP6[16]) );
  BUFX2 U27 ( .A(Sign[15]), .Y(PP7[16]) );
  OAI221XL U28 ( .A0(n255), .A1(n256), .B0(n257), .B1(n258), .C0(n259), .Y(
        Sign[9]) );
  AO21X1 U29 ( .A0(n260), .A1(n261), .B0(n33), .Y(n259) );
  OAI221XL U30 ( .A0(n256), .A1(n262), .B0(n258), .B1(n263), .C0(n264), .Y(
        Sign[7]) );
  AO21X1 U31 ( .A0(n265), .A1(n266), .B0(n33), .Y(n264) );
  OAI221XL U32 ( .A0(n256), .A1(n267), .B0(n258), .B1(n268), .C0(n269), .Y(
        Sign[5]) );
  AO21X1 U33 ( .A0(n270), .A1(n271), .B0(n33), .Y(n269) );
  OAI221XL U34 ( .A0(n256), .A1(n272), .B0(n258), .B1(n273), .C0(n274), .Y(
        Sign[3]) );
  AO21X1 U35 ( .A0(n275), .A1(n276), .B0(n33), .Y(n274) );
  OAI222XL U36 ( .A0(n33), .A1(n277), .B0(n256), .B1(n278), .C0(n258), .C1(
        n279), .Y(Sign[1]) );
  OAI221XL U37 ( .A0(n256), .A1(n280), .B0(n258), .B1(n281), .C0(n282), .Y(
        Sign[15]) );
  OAI2BB1X1 U38 ( .A0N(n283), .A1N(n284), .B0(InputA[15]), .Y(n282) );
  OAI221XL U39 ( .A0(n256), .A1(n285), .B0(n258), .B1(n286), .C0(n287), .Y(
        Sign[13]) );
  AO21X1 U40 ( .A0(n288), .A1(n289), .B0(n33), .Y(n287) );
  OAI221XL U41 ( .A0(n256), .A1(n290), .B0(n258), .B1(n291), .C0(n292), .Y(
        Sign[11]) );
  AO21X1 U42 ( .A0(n293), .A1(n294), .B0(n33), .Y(n292) );
  CLKINVX1 U43 ( .A(n_A[16]), .Y(n258) );
  CLKINVX1 U44 ( .A(n_A2[16]), .Y(n256) );
  OAI221XL U45 ( .A0(n40), .A1(n283), .B0(n280), .B1(n295), .C0(n296), .Y(
        PP7[9]) );
  OA22X1 U46 ( .A0(n284), .A1(n39), .B0(n281), .B1(n297), .Y(n296) );
  OAI221XL U47 ( .A0(n41), .A1(n283), .B0(n280), .B1(n298), .C0(n299), .Y(
        PP7[8]) );
  OA22X1 U48 ( .A0(n284), .A1(n40), .B0(n281), .B1(n300), .Y(n299) );
  OAI221XL U49 ( .A0(n42), .A1(n283), .B0(n280), .B1(n301), .C0(n302), .Y(
        PP7[7]) );
  OA22X1 U50 ( .A0(n284), .A1(n41), .B0(n281), .B1(n303), .Y(n302) );
  OAI221XL U51 ( .A0(n43), .A1(n283), .B0(n280), .B1(n304), .C0(n305), .Y(
        PP7[6]) );
  OA22X1 U52 ( .A0(n284), .A1(n42), .B0(n281), .B1(n306), .Y(n305) );
  OAI221XL U53 ( .A0(n44), .A1(n283), .B0(n280), .B1(n307), .C0(n308), .Y(
        PP7[5]) );
  OA22X1 U54 ( .A0(n284), .A1(n43), .B0(n281), .B1(n309), .Y(n308) );
  OAI221XL U55 ( .A0(n45), .A1(n283), .B0(n280), .B1(n310), .C0(n311), .Y(
        PP7[4]) );
  OA22X1 U56 ( .A0(n284), .A1(n44), .B0(n281), .B1(n312), .Y(n311) );
  OAI221XL U57 ( .A0(n46), .A1(n283), .B0(n280), .B1(n313), .C0(n314), .Y(
        PP7[3]) );
  OA22X1 U58 ( .A0(n284), .A1(n45), .B0(n281), .B1(n315), .Y(n314) );
  OAI221XL U59 ( .A0(n47), .A1(n283), .B0(n280), .B1(n316), .C0(n317), .Y(
        PP7[2]) );
  OA22X1 U60 ( .A0(n284), .A1(n46), .B0(n281), .B1(n318), .Y(n317) );
  OAI221XL U61 ( .A0(n281), .A1(n319), .B0(n47), .B1(n284), .C0(n320), .Y(
        PP7[1]) );
  OAI2BB1X1 U62 ( .A0N(n283), .A1N(n280), .B0(InputA[0]), .Y(n320) );
  OAI221XL U63 ( .A0(n34), .A1(n283), .B0(n280), .B1(n321), .C0(n322), .Y(
        PP7[15]) );
  OA22X1 U64 ( .A0(n284), .A1(n33), .B0(n281), .B1(n323), .Y(n322) );
  OAI221XL U65 ( .A0(n35), .A1(n283), .B0(n280), .B1(n324), .C0(n325), .Y(
        PP7[14]) );
  OA22X1 U66 ( .A0(n284), .A1(n34), .B0(n281), .B1(n326), .Y(n325) );
  OAI221XL U67 ( .A0(n36), .A1(n283), .B0(n280), .B1(n327), .C0(n328), .Y(
        PP7[13]) );
  OA22X1 U68 ( .A0(n284), .A1(n35), .B0(n281), .B1(n329), .Y(n328) );
  OAI221XL U69 ( .A0(n37), .A1(n283), .B0(n280), .B1(n330), .C0(n331), .Y(
        PP7[12]) );
  OA22X1 U70 ( .A0(n284), .A1(n36), .B0(n281), .B1(n332), .Y(n331) );
  OAI221XL U71 ( .A0(n38), .A1(n283), .B0(n280), .B1(n333), .C0(n334), .Y(
        PP7[11]) );
  OA22X1 U72 ( .A0(n284), .A1(n37), .B0(n281), .B1(n335), .Y(n334) );
  OAI221XL U73 ( .A0(n39), .A1(n283), .B0(n280), .B1(n336), .C0(n337), .Y(
        PP7[10]) );
  OA22X1 U74 ( .A0(n284), .A1(n38), .B0(n281), .B1(n338), .Y(n337) );
  NAND3BX1 U75 ( .AN(InputB[14]), .B(n339), .C(InputB[15]), .Y(n280) );
  NAND3X1 U76 ( .A(n284), .B(n340), .C(InputB[13]), .Y(n283) );
  AOI21X1 U77 ( .A0(n284), .A1(n281), .B0(n48), .Y(PP7[0]) );
  NAND2X1 U78 ( .A(n341), .B(n284), .Y(n281) );
  NAND2X1 U79 ( .A(n341), .B(n340), .Y(n284) );
  CLKINVX1 U80 ( .A(InputB[15]), .Y(n340) );
  XNOR2X1 U81 ( .A(InputB[14]), .B(n339), .Y(n341) );
  OAI221XL U82 ( .A0(n40), .A1(n288), .B0(n285), .B1(n295), .C0(n342), .Y(
        PP6[9]) );
  OA22X1 U83 ( .A0(n297), .A1(n286), .B0(n39), .B1(n289), .Y(n342) );
  OAI221XL U84 ( .A0(n41), .A1(n288), .B0(n285), .B1(n298), .C0(n343), .Y(
        PP6[8]) );
  OA22X1 U85 ( .A0(n300), .A1(n286), .B0(n40), .B1(n289), .Y(n343) );
  OAI221XL U86 ( .A0(n42), .A1(n288), .B0(n285), .B1(n301), .C0(n344), .Y(
        PP6[7]) );
  OA22X1 U87 ( .A0(n303), .A1(n286), .B0(n41), .B1(n289), .Y(n344) );
  OAI221XL U88 ( .A0(n43), .A1(n288), .B0(n285), .B1(n304), .C0(n345), .Y(
        PP6[6]) );
  OA22X1 U89 ( .A0(n306), .A1(n286), .B0(n42), .B1(n289), .Y(n345) );
  OAI221XL U90 ( .A0(n44), .A1(n288), .B0(n285), .B1(n307), .C0(n346), .Y(
        PP6[5]) );
  OA22X1 U91 ( .A0(n309), .A1(n286), .B0(n43), .B1(n289), .Y(n346) );
  OAI221XL U92 ( .A0(n45), .A1(n288), .B0(n285), .B1(n310), .C0(n347), .Y(
        PP6[4]) );
  OA22X1 U93 ( .A0(n312), .A1(n286), .B0(n44), .B1(n289), .Y(n347) );
  OAI221XL U94 ( .A0(n46), .A1(n288), .B0(n285), .B1(n313), .C0(n348), .Y(
        PP6[3]) );
  OA22X1 U95 ( .A0(n315), .A1(n286), .B0(n45), .B1(n289), .Y(n348) );
  OAI221XL U96 ( .A0(n47), .A1(n288), .B0(n285), .B1(n316), .C0(n349), .Y(
        PP6[2]) );
  OA22X1 U97 ( .A0(n318), .A1(n286), .B0(n46), .B1(n289), .Y(n349) );
  OAI221XL U98 ( .A0(n286), .A1(n319), .B0(n47), .B1(n289), .C0(n350), .Y(
        PP6[1]) );
  AO21X1 U99 ( .A0(n288), .A1(n285), .B0(n48), .Y(n350) );
  OAI221XL U100 ( .A0(n34), .A1(n288), .B0(n285), .B1(n321), .C0(n351), .Y(
        PP6[15]) );
  OA22X1 U101 ( .A0(n323), .A1(n286), .B0(n33), .B1(n289), .Y(n351) );
  OAI221XL U102 ( .A0(n35), .A1(n288), .B0(n285), .B1(n324), .C0(n352), .Y(
        PP6[14]) );
  OA22X1 U103 ( .A0(n326), .A1(n286), .B0(n34), .B1(n289), .Y(n352) );
  OAI221XL U104 ( .A0(n36), .A1(n288), .B0(n285), .B1(n327), .C0(n353), .Y(
        PP6[13]) );
  OA22X1 U105 ( .A0(n329), .A1(n286), .B0(n35), .B1(n289), .Y(n353) );
  OAI221XL U106 ( .A0(n37), .A1(n288), .B0(n285), .B1(n330), .C0(n354), .Y(
        PP6[12]) );
  OA22X1 U107 ( .A0(n332), .A1(n286), .B0(n36), .B1(n289), .Y(n354) );
  OAI221XL U108 ( .A0(n38), .A1(n288), .B0(n285), .B1(n333), .C0(n355), .Y(
        PP6[11]) );
  OA22X1 U109 ( .A0(n335), .A1(n286), .B0(n37), .B1(n289), .Y(n355) );
  OAI221XL U110 ( .A0(n39), .A1(n288), .B0(n285), .B1(n336), .C0(n356), .Y(
        PP6[10]) );
  OA22X1 U111 ( .A0(n338), .A1(n286), .B0(n38), .B1(n289), .Y(n356) );
  NAND3BX1 U112 ( .AN(InputB[12]), .B(n357), .C(InputB[13]), .Y(n285) );
  NAND3X1 U113 ( .A(InputB[11]), .B(n339), .C(InputB[12]), .Y(n288) );
  AOI21X1 U114 ( .A0(n289), .A1(n286), .B0(n48), .Y(PP6[0]) );
  NAND2X1 U115 ( .A(InputB[13]), .B(n358), .Y(n286) );
  NAND2X1 U116 ( .A(n358), .B(n339), .Y(n289) );
  CLKINVX1 U117 ( .A(InputB[13]), .Y(n339) );
  XNOR2X1 U118 ( .A(InputB[12]), .B(n357), .Y(n358) );
  OAI221XL U119 ( .A0(n40), .A1(n293), .B0(n290), .B1(n295), .C0(n359), .Y(
        PP5[9]) );
  OA22X1 U120 ( .A0(n297), .A1(n291), .B0(n39), .B1(n294), .Y(n359) );
  OAI221XL U121 ( .A0(n41), .A1(n293), .B0(n290), .B1(n298), .C0(n360), .Y(
        PP5[8]) );
  OA22X1 U122 ( .A0(n300), .A1(n291), .B0(n40), .B1(n294), .Y(n360) );
  OAI221XL U123 ( .A0(n42), .A1(n293), .B0(n290), .B1(n301), .C0(n361), .Y(
        PP5[7]) );
  OA22X1 U124 ( .A0(n303), .A1(n291), .B0(n41), .B1(n294), .Y(n361) );
  OAI221XL U125 ( .A0(n43), .A1(n293), .B0(n290), .B1(n304), .C0(n362), .Y(
        PP5[6]) );
  OA22X1 U126 ( .A0(n306), .A1(n291), .B0(n42), .B1(n294), .Y(n362) );
  OAI221XL U127 ( .A0(n44), .A1(n293), .B0(n290), .B1(n307), .C0(n363), .Y(
        PP5[5]) );
  OA22X1 U128 ( .A0(n309), .A1(n291), .B0(n43), .B1(n294), .Y(n363) );
  OAI221XL U129 ( .A0(n45), .A1(n293), .B0(n290), .B1(n310), .C0(n364), .Y(
        PP5[4]) );
  OA22X1 U130 ( .A0(n312), .A1(n291), .B0(n44), .B1(n294), .Y(n364) );
  OAI221XL U131 ( .A0(n46), .A1(n293), .B0(n290), .B1(n313), .C0(n365), .Y(
        PP5[3]) );
  OA22X1 U132 ( .A0(n315), .A1(n291), .B0(n45), .B1(n294), .Y(n365) );
  OAI221XL U133 ( .A0(n47), .A1(n293), .B0(n290), .B1(n316), .C0(n366), .Y(
        PP5[2]) );
  OA22X1 U134 ( .A0(n318), .A1(n291), .B0(n46), .B1(n294), .Y(n366) );
  OAI221XL U135 ( .A0(n291), .A1(n319), .B0(n47), .B1(n294), .C0(n367), .Y(
        PP5[1]) );
  AO21X1 U136 ( .A0(n293), .A1(n290), .B0(n48), .Y(n367) );
  OAI221XL U137 ( .A0(n34), .A1(n293), .B0(n290), .B1(n321), .C0(n368), .Y(
        PP5[15]) );
  OA22X1 U138 ( .A0(n323), .A1(n291), .B0(n33), .B1(n294), .Y(n368) );
  OAI221XL U139 ( .A0(n35), .A1(n293), .B0(n290), .B1(n324), .C0(n369), .Y(
        PP5[14]) );
  OA22X1 U140 ( .A0(n326), .A1(n291), .B0(n34), .B1(n294), .Y(n369) );
  OAI221XL U141 ( .A0(n36), .A1(n293), .B0(n290), .B1(n327), .C0(n370), .Y(
        PP5[13]) );
  OA22X1 U142 ( .A0(n329), .A1(n291), .B0(n35), .B1(n294), .Y(n370) );
  OAI221XL U143 ( .A0(n37), .A1(n293), .B0(n290), .B1(n330), .C0(n371), .Y(
        PP5[12]) );
  OA22X1 U144 ( .A0(n332), .A1(n291), .B0(n36), .B1(n294), .Y(n371) );
  OAI221XL U145 ( .A0(n38), .A1(n293), .B0(n290), .B1(n333), .C0(n372), .Y(
        PP5[11]) );
  OA22X1 U146 ( .A0(n335), .A1(n291), .B0(n37), .B1(n294), .Y(n372) );
  OAI221XL U147 ( .A0(n39), .A1(n293), .B0(n290), .B1(n336), .C0(n373), .Y(
        PP5[10]) );
  OA22X1 U148 ( .A0(n338), .A1(n291), .B0(n38), .B1(n294), .Y(n373) );
  NAND3BX1 U149 ( .AN(InputB[10]), .B(n374), .C(InputB[11]), .Y(n290) );
  NAND3X1 U150 ( .A(InputB[9]), .B(n357), .C(InputB[10]), .Y(n293) );
  AOI21X1 U151 ( .A0(n294), .A1(n291), .B0(n48), .Y(PP5[0]) );
  NAND2X1 U152 ( .A(InputB[11]), .B(n375), .Y(n291) );
  NAND2X1 U153 ( .A(n375), .B(n357), .Y(n294) );
  CLKINVX1 U154 ( .A(InputB[11]), .Y(n357) );
  XNOR2X1 U155 ( .A(InputB[10]), .B(n374), .Y(n375) );
  OAI221XL U156 ( .A0(n40), .A1(n260), .B0(n255), .B1(n295), .C0(n376), .Y(
        PP4[9]) );
  OA22X1 U157 ( .A0(n297), .A1(n257), .B0(n39), .B1(n261), .Y(n376) );
  OAI221XL U158 ( .A0(n41), .A1(n260), .B0(n255), .B1(n298), .C0(n377), .Y(
        PP4[8]) );
  OA22X1 U159 ( .A0(n300), .A1(n257), .B0(n40), .B1(n261), .Y(n377) );
  OAI221XL U160 ( .A0(n42), .A1(n260), .B0(n255), .B1(n301), .C0(n378), .Y(
        PP4[7]) );
  OA22X1 U161 ( .A0(n303), .A1(n257), .B0(n41), .B1(n261), .Y(n378) );
  OAI221XL U162 ( .A0(n43), .A1(n260), .B0(n255), .B1(n304), .C0(n379), .Y(
        PP4[6]) );
  OA22X1 U163 ( .A0(n306), .A1(n257), .B0(n42), .B1(n261), .Y(n379) );
  OAI221XL U164 ( .A0(n44), .A1(n260), .B0(n255), .B1(n307), .C0(n380), .Y(
        PP4[5]) );
  OA22X1 U165 ( .A0(n309), .A1(n257), .B0(n43), .B1(n261), .Y(n380) );
  OAI221XL U166 ( .A0(n45), .A1(n260), .B0(n255), .B1(n310), .C0(n381), .Y(
        PP4[4]) );
  OA22X1 U167 ( .A0(n312), .A1(n257), .B0(n44), .B1(n261), .Y(n381) );
  OAI221XL U168 ( .A0(n46), .A1(n260), .B0(n255), .B1(n313), .C0(n382), .Y(
        PP4[3]) );
  OA22X1 U169 ( .A0(n315), .A1(n257), .B0(n45), .B1(n261), .Y(n382) );
  OAI221XL U170 ( .A0(n47), .A1(n260), .B0(n255), .B1(n316), .C0(n383), .Y(
        PP4[2]) );
  OA22X1 U171 ( .A0(n318), .A1(n257), .B0(n46), .B1(n261), .Y(n383) );
  OAI221XL U172 ( .A0(n257), .A1(n319), .B0(n47), .B1(n261), .C0(n384), .Y(
        PP4[1]) );
  AO21X1 U173 ( .A0(n260), .A1(n255), .B0(n48), .Y(n384) );
  OAI221XL U174 ( .A0(n34), .A1(n260), .B0(n255), .B1(n321), .C0(n385), .Y(
        PP4[15]) );
  OA22X1 U175 ( .A0(n323), .A1(n257), .B0(n33), .B1(n261), .Y(n385) );
  OAI221XL U176 ( .A0(n35), .A1(n260), .B0(n255), .B1(n324), .C0(n386), .Y(
        PP4[14]) );
  OA22X1 U177 ( .A0(n326), .A1(n257), .B0(n34), .B1(n261), .Y(n386) );
  OAI221XL U178 ( .A0(n36), .A1(n260), .B0(n255), .B1(n327), .C0(n387), .Y(
        PP4[13]) );
  OA22X1 U179 ( .A0(n329), .A1(n257), .B0(n35), .B1(n261), .Y(n387) );
  OAI221XL U180 ( .A0(n37), .A1(n260), .B0(n255), .B1(n330), .C0(n388), .Y(
        PP4[12]) );
  OA22X1 U181 ( .A0(n332), .A1(n257), .B0(n36), .B1(n261), .Y(n388) );
  OAI221XL U182 ( .A0(n38), .A1(n260), .B0(n255), .B1(n333), .C0(n389), .Y(
        PP4[11]) );
  OA22X1 U183 ( .A0(n335), .A1(n257), .B0(n37), .B1(n261), .Y(n389) );
  OAI221XL U184 ( .A0(n39), .A1(n260), .B0(n255), .B1(n336), .C0(n390), .Y(
        PP4[10]) );
  OA22X1 U185 ( .A0(n338), .A1(n257), .B0(n38), .B1(n261), .Y(n390) );
  NAND3BX1 U186 ( .AN(InputB[8]), .B(n391), .C(InputB[9]), .Y(n255) );
  NAND3X1 U187 ( .A(InputB[7]), .B(n374), .C(InputB[8]), .Y(n260) );
  AOI21X1 U188 ( .A0(n261), .A1(n257), .B0(n48), .Y(PP4[0]) );
  NAND2X1 U189 ( .A(InputB[9]), .B(n392), .Y(n257) );
  NAND2X1 U190 ( .A(n392), .B(n374), .Y(n261) );
  CLKINVX1 U191 ( .A(InputB[9]), .Y(n374) );
  XNOR2X1 U192 ( .A(InputB[8]), .B(n391), .Y(n392) );
  OAI221XL U193 ( .A0(n40), .A1(n265), .B0(n262), .B1(n295), .C0(n393), .Y(
        PP3[9]) );
  OA22X1 U194 ( .A0(n297), .A1(n263), .B0(n39), .B1(n266), .Y(n393) );
  OAI221XL U195 ( .A0(n41), .A1(n265), .B0(n262), .B1(n298), .C0(n394), .Y(
        PP3[8]) );
  OA22X1 U196 ( .A0(n300), .A1(n263), .B0(n40), .B1(n266), .Y(n394) );
  OAI221XL U197 ( .A0(n42), .A1(n265), .B0(n262), .B1(n301), .C0(n395), .Y(
        PP3[7]) );
  OA22X1 U198 ( .A0(n303), .A1(n263), .B0(n41), .B1(n266), .Y(n395) );
  OAI221XL U199 ( .A0(n43), .A1(n265), .B0(n262), .B1(n304), .C0(n396), .Y(
        PP3[6]) );
  OA22X1 U200 ( .A0(n306), .A1(n263), .B0(n42), .B1(n266), .Y(n396) );
  OAI221XL U201 ( .A0(n44), .A1(n265), .B0(n262), .B1(n307), .C0(n397), .Y(
        PP3[5]) );
  OA22X1 U202 ( .A0(n309), .A1(n263), .B0(n43), .B1(n266), .Y(n397) );
  OAI221XL U203 ( .A0(n45), .A1(n265), .B0(n262), .B1(n310), .C0(n398), .Y(
        PP3[4]) );
  OA22X1 U204 ( .A0(n312), .A1(n263), .B0(n44), .B1(n266), .Y(n398) );
  OAI221XL U205 ( .A0(n46), .A1(n265), .B0(n262), .B1(n313), .C0(n399), .Y(
        PP3[3]) );
  OA22X1 U206 ( .A0(n315), .A1(n263), .B0(n45), .B1(n266), .Y(n399) );
  OAI221XL U207 ( .A0(n47), .A1(n265), .B0(n262), .B1(n316), .C0(n400), .Y(
        PP3[2]) );
  OA22X1 U208 ( .A0(n318), .A1(n263), .B0(n46), .B1(n266), .Y(n400) );
  OAI221XL U209 ( .A0(n263), .A1(n319), .B0(n47), .B1(n266), .C0(n401), .Y(
        PP3[1]) );
  AO21X1 U210 ( .A0(n265), .A1(n262), .B0(n48), .Y(n401) );
  OAI221XL U211 ( .A0(n34), .A1(n265), .B0(n262), .B1(n321), .C0(n402), .Y(
        PP3[15]) );
  OA22X1 U212 ( .A0(n323), .A1(n263), .B0(n33), .B1(n266), .Y(n402) );
  OAI221XL U213 ( .A0(n35), .A1(n265), .B0(n262), .B1(n324), .C0(n403), .Y(
        PP3[14]) );
  OA22X1 U214 ( .A0(n326), .A1(n263), .B0(n34), .B1(n266), .Y(n403) );
  OAI221XL U215 ( .A0(n36), .A1(n265), .B0(n262), .B1(n327), .C0(n404), .Y(
        PP3[13]) );
  OA22X1 U216 ( .A0(n329), .A1(n263), .B0(n35), .B1(n266), .Y(n404) );
  OAI221XL U217 ( .A0(n37), .A1(n265), .B0(n262), .B1(n330), .C0(n405), .Y(
        PP3[12]) );
  OA22X1 U218 ( .A0(n332), .A1(n263), .B0(n36), .B1(n266), .Y(n405) );
  OAI221XL U219 ( .A0(n38), .A1(n265), .B0(n262), .B1(n333), .C0(n406), .Y(
        PP3[11]) );
  OA22X1 U220 ( .A0(n335), .A1(n263), .B0(n37), .B1(n266), .Y(n406) );
  OAI221XL U221 ( .A0(n39), .A1(n265), .B0(n262), .B1(n336), .C0(n407), .Y(
        PP3[10]) );
  OA22X1 U222 ( .A0(n338), .A1(n263), .B0(n38), .B1(n266), .Y(n407) );
  NAND3BX1 U223 ( .AN(InputB[6]), .B(n408), .C(InputB[7]), .Y(n262) );
  NAND3X1 U224 ( .A(InputB[5]), .B(n391), .C(InputB[6]), .Y(n265) );
  AOI21X1 U225 ( .A0(n266), .A1(n263), .B0(n48), .Y(PP3[0]) );
  NAND2X1 U226 ( .A(InputB[7]), .B(n409), .Y(n263) );
  NAND2X1 U227 ( .A(n409), .B(n391), .Y(n266) );
  CLKINVX1 U228 ( .A(InputB[7]), .Y(n391) );
  XNOR2X1 U229 ( .A(InputB[6]), .B(n408), .Y(n409) );
  OAI221XL U230 ( .A0(n40), .A1(n270), .B0(n267), .B1(n295), .C0(n410), .Y(
        PP2[9]) );
  OA22X1 U231 ( .A0(n297), .A1(n268), .B0(n39), .B1(n271), .Y(n410) );
  OAI221XL U232 ( .A0(n41), .A1(n270), .B0(n267), .B1(n298), .C0(n411), .Y(
        PP2[8]) );
  OA22X1 U233 ( .A0(n300), .A1(n268), .B0(n40), .B1(n271), .Y(n411) );
  OAI221XL U234 ( .A0(n42), .A1(n270), .B0(n267), .B1(n301), .C0(n412), .Y(
        PP2[7]) );
  OA22X1 U235 ( .A0(n303), .A1(n268), .B0(n41), .B1(n271), .Y(n412) );
  OAI221XL U236 ( .A0(n43), .A1(n270), .B0(n267), .B1(n304), .C0(n413), .Y(
        PP2[6]) );
  OA22X1 U237 ( .A0(n306), .A1(n268), .B0(n42), .B1(n271), .Y(n413) );
  OAI221XL U238 ( .A0(n44), .A1(n270), .B0(n267), .B1(n307), .C0(n414), .Y(
        PP2[5]) );
  OA22X1 U239 ( .A0(n309), .A1(n268), .B0(n43), .B1(n271), .Y(n414) );
  OAI221XL U240 ( .A0(n45), .A1(n270), .B0(n267), .B1(n310), .C0(n415), .Y(
        PP2[4]) );
  OA22X1 U241 ( .A0(n312), .A1(n268), .B0(n44), .B1(n271), .Y(n415) );
  OAI221XL U242 ( .A0(n46), .A1(n270), .B0(n267), .B1(n313), .C0(n416), .Y(
        PP2[3]) );
  OA22X1 U243 ( .A0(n315), .A1(n268), .B0(n45), .B1(n271), .Y(n416) );
  OAI221XL U244 ( .A0(n47), .A1(n270), .B0(n267), .B1(n316), .C0(n417), .Y(
        PP2[2]) );
  OA22X1 U245 ( .A0(n318), .A1(n268), .B0(n46), .B1(n271), .Y(n417) );
  OAI221XL U246 ( .A0(n268), .A1(n319), .B0(n47), .B1(n271), .C0(n418), .Y(
        PP2[1]) );
  AO21X1 U247 ( .A0(n270), .A1(n267), .B0(n48), .Y(n418) );
  OAI221XL U248 ( .A0(n34), .A1(n270), .B0(n267), .B1(n321), .C0(n419), .Y(
        PP2[15]) );
  OA22X1 U249 ( .A0(n323), .A1(n268), .B0(n33), .B1(n271), .Y(n419) );
  OAI221XL U250 ( .A0(n35), .A1(n270), .B0(n267), .B1(n324), .C0(n420), .Y(
        PP2[14]) );
  OA22X1 U251 ( .A0(n326), .A1(n268), .B0(n34), .B1(n271), .Y(n420) );
  OAI221XL U252 ( .A0(n36), .A1(n270), .B0(n267), .B1(n327), .C0(n421), .Y(
        PP2[13]) );
  OA22X1 U253 ( .A0(n329), .A1(n268), .B0(n35), .B1(n271), .Y(n421) );
  OAI221XL U254 ( .A0(n37), .A1(n270), .B0(n267), .B1(n330), .C0(n422), .Y(
        PP2[12]) );
  OA22X1 U255 ( .A0(n332), .A1(n268), .B0(n36), .B1(n271), .Y(n422) );
  OAI221XL U256 ( .A0(n38), .A1(n270), .B0(n267), .B1(n333), .C0(n423), .Y(
        PP2[11]) );
  OA22X1 U257 ( .A0(n335), .A1(n268), .B0(n37), .B1(n271), .Y(n423) );
  OAI221XL U258 ( .A0(n39), .A1(n270), .B0(n267), .B1(n336), .C0(n424), .Y(
        PP2[10]) );
  OA22X1 U259 ( .A0(n338), .A1(n268), .B0(n38), .B1(n271), .Y(n424) );
  NAND3BX1 U260 ( .AN(InputB[4]), .B(n425), .C(InputB[5]), .Y(n267) );
  NAND3X1 U261 ( .A(InputB[3]), .B(n408), .C(InputB[4]), .Y(n270) );
  AOI21X1 U262 ( .A0(n271), .A1(n268), .B0(n48), .Y(PP2[0]) );
  NAND2X1 U263 ( .A(InputB[5]), .B(n426), .Y(n268) );
  NAND2X1 U264 ( .A(n426), .B(n408), .Y(n271) );
  CLKINVX1 U265 ( .A(InputB[5]), .Y(n408) );
  XNOR2X1 U266 ( .A(InputB[4]), .B(n425), .Y(n426) );
  OAI221XL U267 ( .A0(n40), .A1(n275), .B0(n272), .B1(n295), .C0(n427), .Y(
        PP1[9]) );
  OA22X1 U268 ( .A0(n297), .A1(n273), .B0(n39), .B1(n276), .Y(n427) );
  OAI221XL U269 ( .A0(n41), .A1(n275), .B0(n272), .B1(n298), .C0(n428), .Y(
        PP1[8]) );
  OA22X1 U270 ( .A0(n300), .A1(n273), .B0(n40), .B1(n276), .Y(n428) );
  OAI221XL U271 ( .A0(n42), .A1(n275), .B0(n272), .B1(n301), .C0(n429), .Y(
        PP1[7]) );
  OA22X1 U272 ( .A0(n303), .A1(n273), .B0(n41), .B1(n276), .Y(n429) );
  OAI221XL U273 ( .A0(n43), .A1(n275), .B0(n272), .B1(n304), .C0(n430), .Y(
        PP1[6]) );
  OA22X1 U274 ( .A0(n306), .A1(n273), .B0(n42), .B1(n276), .Y(n430) );
  OAI221XL U275 ( .A0(n44), .A1(n275), .B0(n272), .B1(n307), .C0(n431), .Y(
        PP1[5]) );
  OA22X1 U276 ( .A0(n309), .A1(n273), .B0(n43), .B1(n276), .Y(n431) );
  OAI221XL U277 ( .A0(n45), .A1(n275), .B0(n272), .B1(n310), .C0(n432), .Y(
        PP1[4]) );
  OA22X1 U278 ( .A0(n312), .A1(n273), .B0(n44), .B1(n276), .Y(n432) );
  OAI221XL U279 ( .A0(n46), .A1(n275), .B0(n272), .B1(n313), .C0(n433), .Y(
        PP1[3]) );
  OA22X1 U280 ( .A0(n315), .A1(n273), .B0(n45), .B1(n276), .Y(n433) );
  OAI221XL U281 ( .A0(n47), .A1(n275), .B0(n272), .B1(n316), .C0(n434), .Y(
        PP1[2]) );
  OA22X1 U282 ( .A0(n318), .A1(n273), .B0(n46), .B1(n276), .Y(n434) );
  OAI221XL U283 ( .A0(n273), .A1(n319), .B0(n47), .B1(n276), .C0(n435), .Y(
        PP1[1]) );
  AO21X1 U284 ( .A0(n275), .A1(n272), .B0(n48), .Y(n435) );
  OAI221XL U285 ( .A0(n34), .A1(n275), .B0(n272), .B1(n321), .C0(n436), .Y(
        PP1[15]) );
  OA22X1 U286 ( .A0(n323), .A1(n273), .B0(n33), .B1(n276), .Y(n436) );
  OAI221XL U287 ( .A0(n35), .A1(n275), .B0(n272), .B1(n324), .C0(n437), .Y(
        PP1[14]) );
  OA22X1 U288 ( .A0(n326), .A1(n273), .B0(n34), .B1(n276), .Y(n437) );
  OAI221XL U289 ( .A0(n36), .A1(n275), .B0(n272), .B1(n327), .C0(n438), .Y(
        PP1[13]) );
  OA22X1 U290 ( .A0(n329), .A1(n273), .B0(n35), .B1(n276), .Y(n438) );
  OAI221XL U291 ( .A0(n37), .A1(n275), .B0(n272), .B1(n330), .C0(n439), .Y(
        PP1[12]) );
  OA22X1 U292 ( .A0(n332), .A1(n273), .B0(n36), .B1(n276), .Y(n439) );
  OAI221XL U293 ( .A0(n38), .A1(n275), .B0(n272), .B1(n333), .C0(n440), .Y(
        PP1[11]) );
  OA22X1 U294 ( .A0(n335), .A1(n273), .B0(n37), .B1(n276), .Y(n440) );
  OAI221XL U295 ( .A0(n39), .A1(n275), .B0(n272), .B1(n336), .C0(n441), .Y(
        PP1[10]) );
  OA22X1 U296 ( .A0(n338), .A1(n273), .B0(n38), .B1(n276), .Y(n441) );
  OR3X1 U297 ( .A(InputB[1]), .B(InputB[2]), .C(n425), .Y(n272) );
  NAND3X1 U298 ( .A(InputB[1]), .B(n425), .C(InputB[2]), .Y(n275) );
  AOI21X1 U299 ( .A0(n276), .A1(n273), .B0(n48), .Y(PP1[0]) );
  NAND2X1 U300 ( .A(InputB[3]), .B(n442), .Y(n273) );
  NAND2X1 U301 ( .A(n442), .B(n425), .Y(n276) );
  CLKINVX1 U302 ( .A(InputB[3]), .Y(n425) );
  XOR2X1 U303 ( .A(InputB[2]), .B(InputB[1]), .Y(n442) );
  OAI222XL U304 ( .A0(n39), .A1(n277), .B0(n278), .B1(n295), .C0(n279), .C1(
        n297), .Y(PP0[9]) );
  CLKINVX1 U305 ( .A(n_A[9]), .Y(n297) );
  CLKINVX1 U306 ( .A(n_A2[9]), .Y(n295) );
  CLKINVX1 U307 ( .A(InputA[9]), .Y(n39) );
  OAI222XL U308 ( .A0(n40), .A1(n277), .B0(n278), .B1(n298), .C0(n279), .C1(
        n300), .Y(PP0[8]) );
  CLKINVX1 U309 ( .A(n_A[8]), .Y(n300) );
  CLKINVX1 U310 ( .A(n_A2[8]), .Y(n298) );
  CLKINVX1 U311 ( .A(InputA[8]), .Y(n40) );
  OAI222XL U312 ( .A0(n41), .A1(n277), .B0(n278), .B1(n301), .C0(n279), .C1(
        n303), .Y(PP0[7]) );
  CLKINVX1 U313 ( .A(n_A[7]), .Y(n303) );
  CLKINVX1 U314 ( .A(n_A2[7]), .Y(n301) );
  CLKINVX1 U315 ( .A(InputA[7]), .Y(n41) );
  OAI222XL U316 ( .A0(n42), .A1(n277), .B0(n278), .B1(n304), .C0(n279), .C1(
        n306), .Y(PP0[6]) );
  CLKINVX1 U317 ( .A(n_A[6]), .Y(n306) );
  CLKINVX1 U318 ( .A(n_A2[6]), .Y(n304) );
  CLKINVX1 U319 ( .A(InputA[6]), .Y(n42) );
  OAI222XL U320 ( .A0(n43), .A1(n277), .B0(n278), .B1(n307), .C0(n279), .C1(
        n309), .Y(PP0[5]) );
  CLKINVX1 U321 ( .A(n_A[5]), .Y(n309) );
  CLKINVX1 U322 ( .A(n_A2[5]), .Y(n307) );
  CLKINVX1 U323 ( .A(InputA[5]), .Y(n43) );
  OAI222XL U324 ( .A0(n44), .A1(n277), .B0(n278), .B1(n310), .C0(n279), .C1(
        n312), .Y(PP0[4]) );
  CLKINVX1 U325 ( .A(n_A[4]), .Y(n312) );
  CLKINVX1 U326 ( .A(n_A2[4]), .Y(n310) );
  CLKINVX1 U327 ( .A(InputA[4]), .Y(n44) );
  OAI222XL U328 ( .A0(n45), .A1(n277), .B0(n278), .B1(n313), .C0(n279), .C1(
        n315), .Y(PP0[3]) );
  CLKINVX1 U329 ( .A(n_A[3]), .Y(n315) );
  CLKINVX1 U330 ( .A(n_A2[3]), .Y(n313) );
  CLKINVX1 U331 ( .A(InputA[3]), .Y(n45) );
  OAI222XL U332 ( .A0(n46), .A1(n277), .B0(n278), .B1(n316), .C0(n279), .C1(
        n318), .Y(PP0[2]) );
  CLKINVX1 U333 ( .A(n_A[2]), .Y(n318) );
  CLKINVX1 U334 ( .A(n_A2[2]), .Y(n316) );
  CLKINVX1 U335 ( .A(InputA[2]), .Y(n46) );
  OAI222XL U336 ( .A0(n47), .A1(n277), .B0(n48), .B1(n278), .C0(n279), .C1(
        n319), .Y(PP0[1]) );
  CLKINVX1 U337 ( .A(n_A[1]), .Y(n319) );
  CLKINVX1 U338 ( .A(InputA[1]), .Y(n47) );
  OAI222XL U339 ( .A0(n33), .A1(n277), .B0(n278), .B1(n321), .C0(n279), .C1(
        n323), .Y(PP0[15]) );
  CLKINVX1 U340 ( .A(n_A[15]), .Y(n323) );
  CLKINVX1 U341 ( .A(n_A2[15]), .Y(n321) );
  CLKINVX1 U342 ( .A(InputA[15]), .Y(n33) );
  OAI222XL U343 ( .A0(n34), .A1(n277), .B0(n278), .B1(n324), .C0(n279), .C1(
        n326), .Y(PP0[14]) );
  CLKINVX1 U344 ( .A(n_A[14]), .Y(n326) );
  CLKINVX1 U345 ( .A(n_A2[14]), .Y(n324) );
  CLKINVX1 U346 ( .A(InputA[14]), .Y(n34) );
  OAI222XL U347 ( .A0(n35), .A1(n277), .B0(n278), .B1(n327), .C0(n279), .C1(
        n329), .Y(PP0[13]) );
  CLKINVX1 U348 ( .A(n_A[13]), .Y(n329) );
  CLKINVX1 U349 ( .A(n_A2[13]), .Y(n327) );
  CLKINVX1 U350 ( .A(InputA[13]), .Y(n35) );
  OAI222XL U351 ( .A0(n36), .A1(n277), .B0(n278), .B1(n330), .C0(n279), .C1(
        n332), .Y(PP0[12]) );
  CLKINVX1 U352 ( .A(n_A[12]), .Y(n332) );
  CLKINVX1 U353 ( .A(n_A2[12]), .Y(n330) );
  CLKINVX1 U354 ( .A(InputA[12]), .Y(n36) );
  OAI222XL U355 ( .A0(n37), .A1(n277), .B0(n278), .B1(n333), .C0(n279), .C1(
        n335), .Y(PP0[11]) );
  CLKINVX1 U356 ( .A(n_A[11]), .Y(n335) );
  CLKINVX1 U357 ( .A(n_A2[11]), .Y(n333) );
  CLKINVX1 U358 ( .A(InputA[11]), .Y(n37) );
  OAI222XL U359 ( .A0(n38), .A1(n277), .B0(n278), .B1(n336), .C0(n279), .C1(
        n338), .Y(PP0[10]) );
  CLKINVX1 U360 ( .A(n_A[10]), .Y(n338) );
  CLKINVX1 U361 ( .A(n_A2[10]), .Y(n336) );
  NAND2BX1 U362 ( .AN(InputB[0]), .B(InputB[1]), .Y(n278) );
  CLKINVX1 U363 ( .A(InputA[10]), .Y(n38) );
  AOI21X1 U364 ( .A0(n279), .A1(n277), .B0(n48), .Y(PP0[0]) );
  CLKINVX1 U365 ( .A(InputA[0]), .Y(n48) );
  NAND2BX1 U366 ( .AN(InputB[1]), .B(InputB[0]), .Y(n277) );
  NAND2X1 U367 ( .A(InputB[0]), .B(InputB[1]), .Y(n279) );
endmodule


module HA_196 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_195 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_159 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_158 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_156 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_154 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_152 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_150 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_148 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_146 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_144 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_142 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_140 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_138 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_136 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_134 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_193 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_192 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_191 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_133 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_132 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_130 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_128 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_126 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_124 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_122 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_120 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_118 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_116 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_114 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_112 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_110 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_108 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_189 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_188 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_187 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_186 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_107 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_106 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_104 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_102 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_100 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_98 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_96 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_94 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_92 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_90 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_88 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_86 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_84 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_82 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_80 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_184 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_183 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_79 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_78 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_76 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_74 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_72 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_70 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_68 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_66 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_64 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_62 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_60 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_58 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_56 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_181 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_180 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_179 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_178 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_177 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_176 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_175 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_55 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_54 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_52 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_50 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_48 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_46 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_44 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_42 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_40 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_38 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_36 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_34 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_32 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_30 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_173 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_172 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_171 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_170 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_169 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_168 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_167 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_166 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_165 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_164 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_163 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_162 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_29 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_28 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_26 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_24 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_22 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_20 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_18 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_16 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_14 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_12 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_10 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_8 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_6 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_4 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_2 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_0 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_160 ( S, Cout, A, B );
  input A, B;
  output S, Cout;


  XOR2X1 U1 ( .A(B), .B(A), .Y(S) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
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
  BUFX2 U18 ( .A(PP0[0]), .Y(OPA[0]) );
  BUFX2 U19 ( .A(PP0[1]), .Y(OPA[1]) );
  BUFX2 U20 ( .A(PP7[16]), .Y(OPA[30]) );
endmodule


module CarrySelectAdder3_2 ( Sum, Cout, A, B, Cin );
  output [2:0] Sum;
  input [2:0] A;
  input [2:0] B;
  input Cin;
  output Cout;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XNOR2X1 U1 ( .A(n9), .B(n10), .Y(Sum[2]) );
  XNOR2X1 U2 ( .A(A[2]), .B(B[2]), .Y(n9) );
  XNOR2X1 U3 ( .A(n11), .B(n12), .Y(Sum[1]) );
  XNOR2X1 U4 ( .A(A[1]), .B(B[1]), .Y(n11) );
  XOR2X1 U5 ( .A(A[0]), .B(n13), .Y(Sum[0]) );
  XOR2X1 U6 ( .A(Cin), .B(B[0]), .Y(n13) );
  AO22X1 U7 ( .A0(n14), .A1(B[2]), .B0(n10), .B1(A[2]), .Y(Cout) );
  OR2X1 U8 ( .A(A[2]), .B(n10), .Y(n14) );
  OAI2BB1X1 U9 ( .A0N(n12), .A1N(A[1]), .B0(n15), .Y(n10) );
  OAI21XL U10 ( .A0(A[1]), .A1(n12), .B0(B[1]), .Y(n15) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(B[0]), .B0(n16), .Y(n12) );
  OAI21XL U12 ( .A0(A[0]), .A1(B[0]), .B0(Cin), .Y(n16) );
endmodule


module CarrySelectAdder4_2 ( Sum, Cout, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;

  XNOR2X1 U1 ( .A(n23), .B(n24), .Y(Sum[3]) );
  XNOR2X1 U2 ( .A(A[3]), .B(B[3]), .Y(n23) );
  MXI2X1 U3 ( .A(n25), .B(n26), .S0(n27), .Y(Sum[2]) );
  XOR2X1 U4 ( .A(n28), .B(n29), .Y(n26) );
  XOR2X1 U5 ( .A(n29), .B(n30), .Y(n25) );
  XOR2X1 U6 ( .A(A[2]), .B(B[2]), .Y(n29) );
  XOR2X1 U7 ( .A(n31), .B(n32), .Y(Sum[1]) );
  XNOR2X1 U8 ( .A(B[1]), .B(n33), .Y(n32) );
  OAI21XL U9 ( .A0(n34), .A1(n27), .B0(n35), .Y(n31) );
  MXI2X1 U10 ( .A(n36), .B(n37), .S0(n27), .Y(Sum[0]) );
  XNOR2X1 U11 ( .A(A[0]), .B(B[0]), .Y(n37) );
  NOR2X1 U12 ( .A(n34), .B(n38), .Y(n36) );
  OAI2BB1X1 U13 ( .A0N(n24), .A1N(A[3]), .B0(n39), .Y(Cout) );
  OAI21XL U14 ( .A0(A[3]), .A1(n24), .B0(B[3]), .Y(n39) );
  OAI2BB1X1 U15 ( .A0N(n40), .A1N(A[2]), .B0(n41), .Y(n24) );
  OAI21XL U16 ( .A0(A[2]), .A1(n40), .B0(B[2]), .Y(n41) );
  OAI21XL U17 ( .A0(n30), .A1(n27), .B0(n28), .Y(n40) );
  OA21XL U18 ( .A0(n35), .A1(n33), .B0(n42), .Y(n28) );
  OAI21XL U19 ( .A0(n38), .A1(A[1]), .B0(B[1]), .Y(n42) );
  CLKINVX1 U20 ( .A(n35), .Y(n38) );
  CLKINVX1 U21 ( .A(A[1]), .Y(n33) );
  NAND2X1 U22 ( .A(B[0]), .B(A[0]), .Y(n35) );
  CLKINVX1 U23 ( .A(Cin), .Y(n27) );
  OAI21XL U24 ( .A0(A[1]), .A1(n43), .B0(n44), .Y(n30) );
  AO21X1 U25 ( .A0(n43), .A1(A[1]), .B0(B[1]), .Y(n44) );
  CLKINVX1 U26 ( .A(n34), .Y(n43) );
  NOR2X1 U27 ( .A(A[0]), .B(B[0]), .Y(n34) );
endmodule


module CarrySelectAdder5_2 ( Sum, Cout, A, B, Cin );
  output [4:0] Sum;
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  XNOR2X1 U1 ( .A(n31), .B(n32), .Y(Sum[4]) );
  XNOR2X1 U2 ( .A(A[4]), .B(B[4]), .Y(n31) );
  MXI2X1 U3 ( .A(n33), .B(n34), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U4 ( .A(n35), .B(n36), .Y(n34) );
  XOR2X1 U5 ( .A(n37), .B(n38), .Y(n33) );
  CLKINVX1 U6 ( .A(n35), .Y(n38) );
  XNOR2X1 U7 ( .A(A[3]), .B(B[3]), .Y(n35) );
  MXI2X1 U8 ( .A(n39), .B(n40), .S0(Cin), .Y(Sum[2]) );
  XNOR2X1 U9 ( .A(n41), .B(n42), .Y(n40) );
  XNOR2X1 U10 ( .A(n41), .B(n43), .Y(n39) );
  XOR2X1 U11 ( .A(n44), .B(A[2]), .Y(n41) );
  MXI2X1 U12 ( .A(n45), .B(n46), .S0(n47), .Y(Sum[1]) );
  AOI21X1 U13 ( .A0(Cin), .A1(n48), .B0(n49), .Y(n47) );
  NAND2X1 U14 ( .A(n50), .B(n51), .Y(n48) );
  XNOR2X1 U15 ( .A(A[1]), .B(B[1]), .Y(n46) );
  NOR2X1 U16 ( .A(n52), .B(n53), .Y(n45) );
  MXI2X1 U17 ( .A(n54), .B(n55), .S0(Cin), .Y(Sum[0]) );
  AOI21X1 U18 ( .A0(n50), .A1(n51), .B0(n49), .Y(n55) );
  XOR2X1 U19 ( .A(n51), .B(B[0]), .Y(n54) );
  OAI2BB1X1 U20 ( .A0N(n32), .A1N(A[4]), .B0(n56), .Y(Cout) );
  OAI21XL U21 ( .A0(A[4]), .A1(n32), .B0(B[4]), .Y(n56) );
  OAI2BB1X1 U22 ( .A0N(n57), .A1N(A[3]), .B0(n58), .Y(n32) );
  OAI21XL U23 ( .A0(A[3]), .A1(n57), .B0(B[3]), .Y(n58) );
  OAI2BB1X1 U24 ( .A0N(n36), .A1N(Cin), .B0(n37), .Y(n57) );
  OA22X1 U25 ( .A0(n43), .A1(n59), .B0(n60), .B1(n44), .Y(n37) );
  AND2X1 U26 ( .A(n43), .B(n59), .Y(n60) );
  OAI21XL U27 ( .A0(n52), .A1(n49), .B0(n61), .Y(n43) );
  NOR2X1 U28 ( .A(n50), .B(n51), .Y(n49) );
  CLKINVX1 U29 ( .A(A[0]), .Y(n51) );
  CLKINVX1 U30 ( .A(B[0]), .Y(n50) );
  OA21XL U31 ( .A0(A[2]), .A1(n62), .B0(n63), .Y(n36) );
  OAI21XL U32 ( .A0(n59), .A1(n42), .B0(n44), .Y(n63) );
  CLKINVX1 U33 ( .A(B[2]), .Y(n44) );
  CLKINVX1 U34 ( .A(A[2]), .Y(n59) );
  CLKINVX1 U35 ( .A(n42), .Y(n62) );
  OAI31XL U36 ( .A0(n52), .A1(B[0]), .A2(A[0]), .B0(n61), .Y(n42) );
  CLKINVX1 U37 ( .A(n53), .Y(n61) );
  NOR2X1 U38 ( .A(A[1]), .B(B[1]), .Y(n53) );
  AND2X1 U39 ( .A(B[1]), .B(A[1]), .Y(n52) );
endmodule


module CarrySelectAdder6_2 ( Sum, Cout, A, B, Cin );
  output [5:0] Sum;
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70;

  XNOR2X1 U1 ( .A(n36), .B(n37), .Y(Sum[5]) );
  XNOR2X1 U2 ( .A(A[5]), .B(B[5]), .Y(n36) );
  MXI2X1 U3 ( .A(n38), .B(n39), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U4 ( .A(n40), .B(n41), .Y(n39) );
  XOR2X1 U5 ( .A(n42), .B(n40), .Y(n38) );
  XNOR2X1 U6 ( .A(A[4]), .B(B[4]), .Y(n40) );
  MXI2X1 U7 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[3]) );
  XNOR2X1 U8 ( .A(n45), .B(n46), .Y(n44) );
  XNOR2X1 U9 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U10 ( .A(B[3]), .B(A[3]), .Y(n46) );
  MXI2X1 U11 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U12 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U13 ( .A(n52), .B(n51), .Y(n48) );
  XNOR2X1 U14 ( .A(n53), .B(B[2]), .Y(n51) );
  MXI2X1 U15 ( .A(n54), .B(n55), .S0(n56), .Y(Sum[1]) );
  OA21XL U16 ( .A0(n57), .A1(n58), .B0(n59), .Y(n56) );
  XNOR2X1 U17 ( .A(A[1]), .B(B[1]), .Y(n55) );
  NOR2BX1 U18 ( .AN(n60), .B(n61), .Y(n54) );
  MXI2X1 U19 ( .A(n62), .B(n63), .S0(n57), .Y(Sum[0]) );
  CLKINVX1 U20 ( .A(Cin), .Y(n57) );
  XNOR2X1 U21 ( .A(A[0]), .B(B[0]), .Y(n63) );
  NOR2BX1 U22 ( .AN(n59), .B(n58), .Y(n62) );
  OAI2BB1X1 U23 ( .A0N(n37), .A1N(A[5]), .B0(n64), .Y(Cout) );
  OAI21XL U24 ( .A0(A[5]), .A1(n37), .B0(B[5]), .Y(n64) );
  OAI2BB1X1 U25 ( .A0N(n65), .A1N(A[4]), .B0(n66), .Y(n37) );
  OAI21XL U26 ( .A0(A[4]), .A1(n65), .B0(B[4]), .Y(n66) );
  AO21X1 U27 ( .A0(n41), .A1(Cin), .B0(n42), .Y(n65) );
  OAI2BB1X1 U28 ( .A0N(n47), .A1N(A[3]), .B0(n67), .Y(n42) );
  OAI21XL U29 ( .A0(A[3]), .A1(n47), .B0(B[3]), .Y(n67) );
  OAI22XL U30 ( .A0(n53), .A1(n68), .B0(n69), .B1(n52), .Y(n47) );
  OA21XL U31 ( .A0(n61), .A1(n59), .B0(n60), .Y(n52) );
  NAND2X1 U32 ( .A(B[0]), .B(A[0]), .Y(n59) );
  OA21XL U33 ( .A0(A[3]), .A1(n45), .B0(n70), .Y(n41) );
  AO21X1 U34 ( .A0(n45), .A1(A[3]), .B0(B[3]), .Y(n70) );
  OAI22XL U35 ( .A0(n53), .A1(n68), .B0(n50), .B1(n69), .Y(n45) );
  NOR2X1 U36 ( .A(B[2]), .B(A[2]), .Y(n69) );
  OA21XL U37 ( .A0(n61), .A1(n58), .B0(n60), .Y(n50) );
  NAND2X1 U38 ( .A(B[1]), .B(A[1]), .Y(n60) );
  NOR2X1 U39 ( .A(B[0]), .B(A[0]), .Y(n58) );
  NOR2X1 U40 ( .A(A[1]), .B(B[1]), .Y(n61) );
  CLKINVX1 U41 ( .A(B[2]), .Y(n68) );
  CLKINVX1 U42 ( .A(A[2]), .Y(n53) );
endmodule


module CarrySelectAdder7_5 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  XNOR2X1 U1 ( .A(n41), .B(n42), .Y(Sum[6]) );
  XNOR2X1 U2 ( .A(A[6]), .B(B[6]), .Y(n41) );
  MXI2X1 U3 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[5]) );
  XOR2X1 U4 ( .A(n45), .B(n46), .Y(n44) );
  XOR2X1 U5 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U6 ( .A(A[5]), .B(B[5]), .Y(n46) );
  MXI2X1 U7 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U8 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U9 ( .A(n52), .B(n51), .Y(n48) );
  XOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n51) );
  MXI2X1 U11 ( .A(n53), .B(n54), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U12 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U13 ( .A(n57), .B(n56), .Y(n53) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n56) );
  MXI2X1 U15 ( .A(n58), .B(n59), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U16 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X1 U17 ( .A(n62), .B(n61), .Y(n58) );
  XOR2X1 U18 ( .A(A[2]), .B(B[2]), .Y(n61) );
  MXI2X1 U19 ( .A(n63), .B(n64), .S0(n65), .Y(Sum[1]) );
  AOI22X1 U20 ( .A0(Cin), .A1(n66), .B0(B[0]), .B1(A[0]), .Y(n65) );
  NAND2X1 U21 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U22 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2BX1 U23 ( .AN(n69), .B(n70), .Y(n63) );
  XOR2X1 U24 ( .A(A[0]), .B(n71), .Y(Sum[0]) );
  XOR2X1 U25 ( .A(Cin), .B(B[0]), .Y(n71) );
  OAI2BB1X1 U26 ( .A0N(n42), .A1N(A[6]), .B0(n72), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n42), .B0(B[6]), .Y(n72) );
  OAI2BB1X1 U28 ( .A0N(n73), .A1N(A[5]), .B0(n74), .Y(n42) );
  OAI21XL U29 ( .A0(A[5]), .A1(n73), .B0(B[5]), .Y(n74) );
  OAI21XL U30 ( .A0(n45), .A1(n75), .B0(n47), .Y(n73) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n76), .A1N(n52), .Y(n47) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n77), .A1N(n57), .Y(n52) );
  AOI22X1 U33 ( .A0(A[2]), .A1(B[2]), .B0(n62), .B1(n78), .Y(n57) );
  CLKINVX1 U34 ( .A(n79), .Y(n78) );
  OAI31XL U35 ( .A0(n67), .A1(n70), .A2(n68), .B0(n69), .Y(n62) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n68) );
  CLKINVX1 U37 ( .A(B[0]), .Y(n67) );
  CLKINVX1 U38 ( .A(Cin), .Y(n75) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n50), .A1N(n76), .Y(n45) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n76) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n55), .A1N(n77), .Y(n50) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n77) );
  AOI2BB2X1 U43 ( .B0(A[2]), .B1(B[2]), .A0N(n60), .A1N(n79), .Y(n55) );
  NOR2X1 U44 ( .A(B[2]), .B(A[2]), .Y(n79) );
  OA21XL U45 ( .A0(n80), .A1(n70), .B0(n69), .Y(n60) );
  NAND2X1 U46 ( .A(B[1]), .B(A[1]), .Y(n69) );
  NOR2X1 U47 ( .A(A[1]), .B(B[1]), .Y(n70) );
  NOR2X1 U48 ( .A(B[0]), .B(A[0]), .Y(n80) );
endmodule


module CarrySelectAdder7_4 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  XNOR2X1 U1 ( .A(n41), .B(n42), .Y(Sum[6]) );
  XNOR2X1 U2 ( .A(A[6]), .B(B[6]), .Y(n41) );
  MXI2X1 U3 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[5]) );
  XOR2X1 U4 ( .A(n45), .B(n46), .Y(n44) );
  XOR2X1 U5 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U6 ( .A(A[5]), .B(B[5]), .Y(n46) );
  MXI2X1 U7 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U8 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U9 ( .A(n52), .B(n51), .Y(n48) );
  XOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n51) );
  MXI2X1 U11 ( .A(n53), .B(n54), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U12 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U13 ( .A(n57), .B(n56), .Y(n53) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n56) );
  MXI2X1 U15 ( .A(n58), .B(n59), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U16 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X1 U17 ( .A(n62), .B(n61), .Y(n58) );
  XOR2X1 U18 ( .A(A[2]), .B(B[2]), .Y(n61) );
  MXI2X1 U19 ( .A(n63), .B(n64), .S0(n65), .Y(Sum[1]) );
  AOI22X1 U20 ( .A0(Cin), .A1(n66), .B0(B[0]), .B1(A[0]), .Y(n65) );
  NAND2X1 U21 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U22 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2BX1 U23 ( .AN(n69), .B(n70), .Y(n63) );
  XOR2X1 U24 ( .A(A[0]), .B(n71), .Y(Sum[0]) );
  XOR2X1 U25 ( .A(Cin), .B(B[0]), .Y(n71) );
  OAI2BB1X1 U26 ( .A0N(n42), .A1N(A[6]), .B0(n72), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n42), .B0(B[6]), .Y(n72) );
  OAI2BB1X1 U28 ( .A0N(n73), .A1N(A[5]), .B0(n74), .Y(n42) );
  OAI21XL U29 ( .A0(A[5]), .A1(n73), .B0(B[5]), .Y(n74) );
  OAI21XL U30 ( .A0(n45), .A1(n75), .B0(n47), .Y(n73) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n76), .A1N(n52), .Y(n47) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n77), .A1N(n57), .Y(n52) );
  AOI22X1 U33 ( .A0(A[2]), .A1(B[2]), .B0(n62), .B1(n78), .Y(n57) );
  CLKINVX1 U34 ( .A(n79), .Y(n78) );
  OAI31XL U35 ( .A0(n67), .A1(n70), .A2(n68), .B0(n69), .Y(n62) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n68) );
  CLKINVX1 U37 ( .A(B[0]), .Y(n67) );
  CLKINVX1 U38 ( .A(Cin), .Y(n75) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n50), .A1N(n76), .Y(n45) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n76) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n55), .A1N(n77), .Y(n50) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n77) );
  AOI2BB2X1 U43 ( .B0(A[2]), .B1(B[2]), .A0N(n60), .A1N(n79), .Y(n55) );
  NOR2X1 U44 ( .A(B[2]), .B(A[2]), .Y(n79) );
  OA21XL U45 ( .A0(n80), .A1(n70), .B0(n69), .Y(n60) );
  NAND2X1 U46 ( .A(B[1]), .B(A[1]), .Y(n69) );
  NOR2X1 U47 ( .A(A[1]), .B(B[1]), .Y(n70) );
  NOR2X1 U48 ( .A(B[0]), .B(A[0]), .Y(n80) );
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
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XNOR2X1 U1 ( .A(n9), .B(n10), .Y(Sum[2]) );
  XNOR2X1 U2 ( .A(A[2]), .B(B[2]), .Y(n9) );
  XNOR2X1 U3 ( .A(n11), .B(n12), .Y(Sum[1]) );
  XNOR2X1 U4 ( .A(A[1]), .B(B[1]), .Y(n11) );
  XOR2X1 U5 ( .A(A[0]), .B(n13), .Y(Sum[0]) );
  XOR2X1 U6 ( .A(Cin), .B(B[0]), .Y(n13) );
  AO22X1 U7 ( .A0(n14), .A1(B[2]), .B0(n10), .B1(A[2]), .Y(Cout) );
  OR2X1 U8 ( .A(A[2]), .B(n10), .Y(n14) );
  OAI2BB1X1 U9 ( .A0N(n12), .A1N(A[1]), .B0(n15), .Y(n10) );
  OAI21XL U10 ( .A0(A[1]), .A1(n12), .B0(B[1]), .Y(n15) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(B[0]), .B0(n16), .Y(n12) );
  OAI21XL U12 ( .A0(A[0]), .A1(B[0]), .B0(Cin), .Y(n16) );
endmodule


module CarrySelectAdder4_1 ( Sum, Cout, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;

  XNOR2X1 U1 ( .A(n23), .B(n24), .Y(Sum[3]) );
  XNOR2X1 U2 ( .A(A[3]), .B(B[3]), .Y(n23) );
  MXI2X1 U3 ( .A(n25), .B(n26), .S0(n27), .Y(Sum[2]) );
  XOR2X1 U4 ( .A(n28), .B(n29), .Y(n26) );
  XOR2X1 U5 ( .A(n29), .B(n30), .Y(n25) );
  XOR2X1 U6 ( .A(A[2]), .B(B[2]), .Y(n29) );
  XOR2X1 U7 ( .A(n31), .B(n32), .Y(Sum[1]) );
  XNOR2X1 U8 ( .A(B[1]), .B(n33), .Y(n32) );
  OAI21XL U9 ( .A0(n34), .A1(n27), .B0(n35), .Y(n31) );
  MXI2X1 U10 ( .A(n36), .B(n37), .S0(n27), .Y(Sum[0]) );
  XNOR2X1 U11 ( .A(A[0]), .B(B[0]), .Y(n37) );
  NOR2X1 U12 ( .A(n34), .B(n38), .Y(n36) );
  OAI2BB1X1 U13 ( .A0N(n24), .A1N(A[3]), .B0(n39), .Y(Cout) );
  OAI21XL U14 ( .A0(A[3]), .A1(n24), .B0(B[3]), .Y(n39) );
  OAI2BB1X1 U15 ( .A0N(n40), .A1N(A[2]), .B0(n41), .Y(n24) );
  OAI21XL U16 ( .A0(A[2]), .A1(n40), .B0(B[2]), .Y(n41) );
  OAI21XL U17 ( .A0(n30), .A1(n27), .B0(n28), .Y(n40) );
  OA21XL U18 ( .A0(n35), .A1(n33), .B0(n42), .Y(n28) );
  OAI21XL U19 ( .A0(n38), .A1(A[1]), .B0(B[1]), .Y(n42) );
  CLKINVX1 U20 ( .A(n35), .Y(n38) );
  CLKINVX1 U21 ( .A(A[1]), .Y(n33) );
  NAND2X1 U22 ( .A(B[0]), .B(A[0]), .Y(n35) );
  CLKINVX1 U23 ( .A(Cin), .Y(n27) );
  OAI21XL U24 ( .A0(A[1]), .A1(n43), .B0(n44), .Y(n30) );
  AO21X1 U25 ( .A0(n43), .A1(A[1]), .B0(B[1]), .Y(n44) );
  CLKINVX1 U26 ( .A(n34), .Y(n43) );
  NOR2X1 U27 ( .A(A[0]), .B(B[0]), .Y(n34) );
endmodule


module CarrySelectAdder5_1 ( Sum, Cout, A, B, Cin );
  output [4:0] Sum;
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  XNOR2X1 U1 ( .A(n31), .B(n32), .Y(Sum[4]) );
  XNOR2X1 U2 ( .A(A[4]), .B(B[4]), .Y(n31) );
  MXI2X1 U3 ( .A(n33), .B(n34), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U4 ( .A(n35), .B(n36), .Y(n34) );
  XOR2X1 U5 ( .A(n37), .B(n38), .Y(n33) );
  CLKINVX1 U6 ( .A(n35), .Y(n38) );
  XNOR2X1 U7 ( .A(A[3]), .B(B[3]), .Y(n35) );
  MXI2X1 U8 ( .A(n39), .B(n40), .S0(Cin), .Y(Sum[2]) );
  XNOR2X1 U9 ( .A(n41), .B(n42), .Y(n40) );
  XNOR2X1 U10 ( .A(n41), .B(n43), .Y(n39) );
  XOR2X1 U11 ( .A(n44), .B(A[2]), .Y(n41) );
  MXI2X1 U12 ( .A(n45), .B(n46), .S0(n47), .Y(Sum[1]) );
  AOI21X1 U13 ( .A0(Cin), .A1(n48), .B0(n49), .Y(n47) );
  NAND2X1 U14 ( .A(n50), .B(n51), .Y(n48) );
  XNOR2X1 U15 ( .A(A[1]), .B(B[1]), .Y(n46) );
  NOR2X1 U16 ( .A(n52), .B(n53), .Y(n45) );
  MXI2X1 U17 ( .A(n54), .B(n55), .S0(Cin), .Y(Sum[0]) );
  AOI21X1 U18 ( .A0(n50), .A1(n51), .B0(n49), .Y(n55) );
  XOR2X1 U19 ( .A(n51), .B(B[0]), .Y(n54) );
  OAI2BB1X1 U20 ( .A0N(n32), .A1N(A[4]), .B0(n56), .Y(Cout) );
  OAI21XL U21 ( .A0(A[4]), .A1(n32), .B0(B[4]), .Y(n56) );
  OAI2BB1X1 U22 ( .A0N(n57), .A1N(A[3]), .B0(n58), .Y(n32) );
  OAI21XL U23 ( .A0(A[3]), .A1(n57), .B0(B[3]), .Y(n58) );
  OAI2BB1X1 U24 ( .A0N(n36), .A1N(Cin), .B0(n37), .Y(n57) );
  OA22X1 U25 ( .A0(n43), .A1(n59), .B0(n60), .B1(n44), .Y(n37) );
  AND2X1 U26 ( .A(n43), .B(n59), .Y(n60) );
  OAI21XL U27 ( .A0(n52), .A1(n49), .B0(n61), .Y(n43) );
  NOR2X1 U28 ( .A(n50), .B(n51), .Y(n49) );
  CLKINVX1 U29 ( .A(A[0]), .Y(n51) );
  CLKINVX1 U30 ( .A(B[0]), .Y(n50) );
  OA21XL U31 ( .A0(A[2]), .A1(n62), .B0(n63), .Y(n36) );
  OAI21XL U32 ( .A0(n59), .A1(n42), .B0(n44), .Y(n63) );
  CLKINVX1 U33 ( .A(B[2]), .Y(n44) );
  CLKINVX1 U34 ( .A(A[2]), .Y(n59) );
  CLKINVX1 U35 ( .A(n42), .Y(n62) );
  OAI31XL U36 ( .A0(n52), .A1(B[0]), .A2(A[0]), .B0(n61), .Y(n42) );
  CLKINVX1 U37 ( .A(n53), .Y(n61) );
  NOR2X1 U38 ( .A(A[1]), .B(B[1]), .Y(n53) );
  AND2X1 U39 ( .A(B[1]), .B(A[1]), .Y(n52) );
endmodule


module CarrySelectAdder6_1 ( Sum, Cout, A, B, Cin );
  output [5:0] Sum;
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70;

  XNOR2X1 U1 ( .A(n36), .B(n37), .Y(Sum[5]) );
  XNOR2X1 U2 ( .A(A[5]), .B(B[5]), .Y(n36) );
  MXI2X1 U3 ( .A(n38), .B(n39), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U4 ( .A(n40), .B(n41), .Y(n39) );
  XOR2X1 U5 ( .A(n42), .B(n40), .Y(n38) );
  XNOR2X1 U6 ( .A(A[4]), .B(B[4]), .Y(n40) );
  MXI2X1 U7 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[3]) );
  XNOR2X1 U8 ( .A(n45), .B(n46), .Y(n44) );
  XNOR2X1 U9 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U10 ( .A(B[3]), .B(A[3]), .Y(n46) );
  MXI2X1 U11 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U12 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U13 ( .A(n52), .B(n51), .Y(n48) );
  XNOR2X1 U14 ( .A(n53), .B(B[2]), .Y(n51) );
  MXI2X1 U15 ( .A(n54), .B(n55), .S0(n56), .Y(Sum[1]) );
  OA21XL U16 ( .A0(n57), .A1(n58), .B0(n59), .Y(n56) );
  XNOR2X1 U17 ( .A(A[1]), .B(B[1]), .Y(n55) );
  NOR2BX1 U18 ( .AN(n60), .B(n61), .Y(n54) );
  MXI2X1 U19 ( .A(n62), .B(n63), .S0(n57), .Y(Sum[0]) );
  CLKINVX1 U20 ( .A(Cin), .Y(n57) );
  XNOR2X1 U21 ( .A(A[0]), .B(B[0]), .Y(n63) );
  NOR2BX1 U22 ( .AN(n59), .B(n58), .Y(n62) );
  OAI2BB1X1 U23 ( .A0N(n37), .A1N(A[5]), .B0(n64), .Y(Cout) );
  OAI21XL U24 ( .A0(A[5]), .A1(n37), .B0(B[5]), .Y(n64) );
  OAI2BB1X1 U25 ( .A0N(n65), .A1N(A[4]), .B0(n66), .Y(n37) );
  OAI21XL U26 ( .A0(A[4]), .A1(n65), .B0(B[4]), .Y(n66) );
  AO21X1 U27 ( .A0(n41), .A1(Cin), .B0(n42), .Y(n65) );
  OAI2BB1X1 U28 ( .A0N(n47), .A1N(A[3]), .B0(n67), .Y(n42) );
  OAI21XL U29 ( .A0(A[3]), .A1(n47), .B0(B[3]), .Y(n67) );
  OAI22XL U30 ( .A0(n53), .A1(n68), .B0(n69), .B1(n52), .Y(n47) );
  OA21XL U31 ( .A0(n61), .A1(n59), .B0(n60), .Y(n52) );
  NAND2X1 U32 ( .A(B[0]), .B(A[0]), .Y(n59) );
  OA21XL U33 ( .A0(A[3]), .A1(n45), .B0(n70), .Y(n41) );
  AO21X1 U34 ( .A0(n45), .A1(A[3]), .B0(B[3]), .Y(n70) );
  OAI22XL U35 ( .A0(n53), .A1(n68), .B0(n50), .B1(n69), .Y(n45) );
  NOR2X1 U36 ( .A(B[2]), .B(A[2]), .Y(n69) );
  OA21XL U37 ( .A0(n61), .A1(n58), .B0(n60), .Y(n50) );
  NAND2X1 U38 ( .A(B[1]), .B(A[1]), .Y(n60) );
  NOR2X1 U39 ( .A(B[0]), .B(A[0]), .Y(n58) );
  NOR2X1 U40 ( .A(A[1]), .B(B[1]), .Y(n61) );
  CLKINVX1 U41 ( .A(B[2]), .Y(n68) );
  CLKINVX1 U42 ( .A(A[2]), .Y(n53) );
endmodule


module CarrySelectAdder7_3 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  XNOR2X1 U1 ( .A(n41), .B(n42), .Y(Sum[6]) );
  XNOR2X1 U2 ( .A(A[6]), .B(B[6]), .Y(n41) );
  MXI2X1 U3 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[5]) );
  XOR2X1 U4 ( .A(n45), .B(n46), .Y(n44) );
  XOR2X1 U5 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U6 ( .A(A[5]), .B(B[5]), .Y(n46) );
  MXI2X1 U7 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U8 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U9 ( .A(n52), .B(n51), .Y(n48) );
  XOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n51) );
  MXI2X1 U11 ( .A(n53), .B(n54), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U12 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U13 ( .A(n57), .B(n56), .Y(n53) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n56) );
  MXI2X1 U15 ( .A(n58), .B(n59), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U16 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X1 U17 ( .A(n62), .B(n61), .Y(n58) );
  XOR2X1 U18 ( .A(A[2]), .B(B[2]), .Y(n61) );
  MXI2X1 U19 ( .A(n63), .B(n64), .S0(n65), .Y(Sum[1]) );
  AOI22X1 U20 ( .A0(Cin), .A1(n66), .B0(B[0]), .B1(A[0]), .Y(n65) );
  NAND2X1 U21 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U22 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2BX1 U23 ( .AN(n69), .B(n70), .Y(n63) );
  XOR2X1 U24 ( .A(A[0]), .B(n71), .Y(Sum[0]) );
  XOR2X1 U25 ( .A(Cin), .B(B[0]), .Y(n71) );
  OAI2BB1X1 U26 ( .A0N(n42), .A1N(A[6]), .B0(n72), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n42), .B0(B[6]), .Y(n72) );
  OAI2BB1X1 U28 ( .A0N(n73), .A1N(A[5]), .B0(n74), .Y(n42) );
  OAI21XL U29 ( .A0(A[5]), .A1(n73), .B0(B[5]), .Y(n74) );
  OAI21XL U30 ( .A0(n45), .A1(n75), .B0(n47), .Y(n73) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n76), .A1N(n52), .Y(n47) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n77), .A1N(n57), .Y(n52) );
  AOI22X1 U33 ( .A0(A[2]), .A1(B[2]), .B0(n62), .B1(n78), .Y(n57) );
  CLKINVX1 U34 ( .A(n79), .Y(n78) );
  OAI31XL U35 ( .A0(n67), .A1(n70), .A2(n68), .B0(n69), .Y(n62) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n68) );
  CLKINVX1 U37 ( .A(B[0]), .Y(n67) );
  CLKINVX1 U38 ( .A(Cin), .Y(n75) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n50), .A1N(n76), .Y(n45) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n76) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n55), .A1N(n77), .Y(n50) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n77) );
  AOI2BB2X1 U43 ( .B0(A[2]), .B1(B[2]), .A0N(n60), .A1N(n79), .Y(n55) );
  NOR2X1 U44 ( .A(B[2]), .B(A[2]), .Y(n79) );
  OA21XL U45 ( .A0(n80), .A1(n70), .B0(n69), .Y(n60) );
  NAND2X1 U46 ( .A(B[1]), .B(A[1]), .Y(n69) );
  NOR2X1 U47 ( .A(A[1]), .B(B[1]), .Y(n70) );
  NOR2X1 U48 ( .A(B[0]), .B(A[0]), .Y(n80) );
endmodule


module CarrySelectAdder7_2 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  XNOR2X1 U1 ( .A(n41), .B(n42), .Y(Sum[6]) );
  XNOR2X1 U2 ( .A(A[6]), .B(B[6]), .Y(n41) );
  MXI2X1 U3 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[5]) );
  XOR2X1 U4 ( .A(n45), .B(n46), .Y(n44) );
  XOR2X1 U5 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U6 ( .A(A[5]), .B(B[5]), .Y(n46) );
  MXI2X1 U7 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U8 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U9 ( .A(n52), .B(n51), .Y(n48) );
  XOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n51) );
  MXI2X1 U11 ( .A(n53), .B(n54), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U12 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U13 ( .A(n57), .B(n56), .Y(n53) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n56) );
  MXI2X1 U15 ( .A(n58), .B(n59), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U16 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X1 U17 ( .A(n62), .B(n61), .Y(n58) );
  XOR2X1 U18 ( .A(A[2]), .B(B[2]), .Y(n61) );
  MXI2X1 U19 ( .A(n63), .B(n64), .S0(n65), .Y(Sum[1]) );
  AOI22X1 U20 ( .A0(Cin), .A1(n66), .B0(B[0]), .B1(A[0]), .Y(n65) );
  NAND2X1 U21 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U22 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2BX1 U23 ( .AN(n69), .B(n70), .Y(n63) );
  XOR2X1 U24 ( .A(A[0]), .B(n71), .Y(Sum[0]) );
  XOR2X1 U25 ( .A(Cin), .B(B[0]), .Y(n71) );
  OAI2BB1X1 U26 ( .A0N(n42), .A1N(A[6]), .B0(n72), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n42), .B0(B[6]), .Y(n72) );
  OAI2BB1X1 U28 ( .A0N(n73), .A1N(A[5]), .B0(n74), .Y(n42) );
  OAI21XL U29 ( .A0(A[5]), .A1(n73), .B0(B[5]), .Y(n74) );
  OAI21XL U30 ( .A0(n45), .A1(n75), .B0(n47), .Y(n73) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n76), .A1N(n52), .Y(n47) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n77), .A1N(n57), .Y(n52) );
  AOI22X1 U33 ( .A0(A[2]), .A1(B[2]), .B0(n62), .B1(n78), .Y(n57) );
  CLKINVX1 U34 ( .A(n79), .Y(n78) );
  OAI31XL U35 ( .A0(n67), .A1(n70), .A2(n68), .B0(n69), .Y(n62) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n68) );
  CLKINVX1 U37 ( .A(B[0]), .Y(n67) );
  CLKINVX1 U38 ( .A(Cin), .Y(n75) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n50), .A1N(n76), .Y(n45) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n76) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n55), .A1N(n77), .Y(n50) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n77) );
  AOI2BB2X1 U43 ( .B0(A[2]), .B1(B[2]), .A0N(n60), .A1N(n79), .Y(n55) );
  NOR2X1 U44 ( .A(B[2]), .B(A[2]), .Y(n79) );
  OA21XL U45 ( .A0(n80), .A1(n70), .B0(n69), .Y(n60) );
  NAND2X1 U46 ( .A(B[1]), .B(A[1]), .Y(n69) );
  NOR2X1 U47 ( .A(A[1]), .B(B[1]), .Y(n70) );
  NOR2X1 U48 ( .A(B[0]), .B(A[0]), .Y(n80) );
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
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XNOR2X1 U1 ( .A(n9), .B(n10), .Y(Sum[2]) );
  XNOR2X1 U2 ( .A(A[2]), .B(B[2]), .Y(n9) );
  XNOR2X1 U3 ( .A(n11), .B(n12), .Y(Sum[1]) );
  XNOR2X1 U4 ( .A(A[1]), .B(B[1]), .Y(n11) );
  XOR2X1 U5 ( .A(A[0]), .B(n13), .Y(Sum[0]) );
  XOR2X1 U6 ( .A(Cin), .B(B[0]), .Y(n13) );
  AO22X1 U7 ( .A0(n14), .A1(B[2]), .B0(n10), .B1(A[2]), .Y(Cout) );
  OR2X1 U8 ( .A(A[2]), .B(n10), .Y(n14) );
  OAI2BB1X1 U9 ( .A0N(n12), .A1N(A[1]), .B0(n15), .Y(n10) );
  OAI21XL U10 ( .A0(A[1]), .A1(n12), .B0(B[1]), .Y(n15) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(B[0]), .B0(n16), .Y(n12) );
  OAI21XL U12 ( .A0(A[0]), .A1(B[0]), .B0(Cin), .Y(n16) );
endmodule


module CarrySelectAdder4_0 ( Sum, Cout, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;

  XNOR2X1 U1 ( .A(n23), .B(n24), .Y(Sum[3]) );
  XNOR2X1 U2 ( .A(A[3]), .B(B[3]), .Y(n23) );
  MXI2X1 U3 ( .A(n25), .B(n26), .S0(n27), .Y(Sum[2]) );
  XOR2X1 U4 ( .A(n28), .B(n29), .Y(n26) );
  XOR2X1 U5 ( .A(n29), .B(n30), .Y(n25) );
  XOR2X1 U6 ( .A(A[2]), .B(B[2]), .Y(n29) );
  XOR2X1 U7 ( .A(n31), .B(n32), .Y(Sum[1]) );
  XNOR2X1 U8 ( .A(B[1]), .B(n33), .Y(n32) );
  OAI21XL U9 ( .A0(n34), .A1(n27), .B0(n35), .Y(n31) );
  MXI2X1 U10 ( .A(n36), .B(n37), .S0(n27), .Y(Sum[0]) );
  XNOR2X1 U11 ( .A(A[0]), .B(B[0]), .Y(n37) );
  NOR2X1 U12 ( .A(n34), .B(n38), .Y(n36) );
  OAI2BB1X1 U13 ( .A0N(n24), .A1N(A[3]), .B0(n39), .Y(Cout) );
  OAI21XL U14 ( .A0(A[3]), .A1(n24), .B0(B[3]), .Y(n39) );
  OAI2BB1X1 U15 ( .A0N(n40), .A1N(A[2]), .B0(n41), .Y(n24) );
  OAI21XL U16 ( .A0(A[2]), .A1(n40), .B0(B[2]), .Y(n41) );
  OAI21XL U17 ( .A0(n30), .A1(n27), .B0(n28), .Y(n40) );
  OA21XL U18 ( .A0(n35), .A1(n33), .B0(n42), .Y(n28) );
  OAI21XL U19 ( .A0(n38), .A1(A[1]), .B0(B[1]), .Y(n42) );
  CLKINVX1 U20 ( .A(n35), .Y(n38) );
  CLKINVX1 U21 ( .A(A[1]), .Y(n33) );
  NAND2X1 U22 ( .A(B[0]), .B(A[0]), .Y(n35) );
  CLKINVX1 U23 ( .A(Cin), .Y(n27) );
  OAI21XL U24 ( .A0(A[1]), .A1(n43), .B0(n44), .Y(n30) );
  AO21X1 U25 ( .A0(n43), .A1(A[1]), .B0(B[1]), .Y(n44) );
  CLKINVX1 U26 ( .A(n34), .Y(n43) );
  NOR2X1 U27 ( .A(A[0]), .B(B[0]), .Y(n34) );
endmodule


module CarrySelectAdder5_0 ( Sum, Cout, A, B, Cin );
  output [4:0] Sum;
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  XNOR2X1 U1 ( .A(n31), .B(n32), .Y(Sum[4]) );
  XNOR2X1 U2 ( .A(A[4]), .B(B[4]), .Y(n31) );
  MXI2X1 U3 ( .A(n33), .B(n34), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U4 ( .A(n35), .B(n36), .Y(n34) );
  XOR2X1 U5 ( .A(n37), .B(n38), .Y(n33) );
  CLKINVX1 U6 ( .A(n35), .Y(n38) );
  XNOR2X1 U7 ( .A(A[3]), .B(B[3]), .Y(n35) );
  MXI2X1 U8 ( .A(n39), .B(n40), .S0(Cin), .Y(Sum[2]) );
  XNOR2X1 U9 ( .A(n41), .B(n42), .Y(n40) );
  XNOR2X1 U10 ( .A(n41), .B(n43), .Y(n39) );
  XOR2X1 U11 ( .A(n44), .B(A[2]), .Y(n41) );
  MXI2X1 U12 ( .A(n45), .B(n46), .S0(n47), .Y(Sum[1]) );
  AOI21X1 U13 ( .A0(Cin), .A1(n48), .B0(n49), .Y(n47) );
  NAND2X1 U14 ( .A(n50), .B(n51), .Y(n48) );
  XNOR2X1 U15 ( .A(A[1]), .B(B[1]), .Y(n46) );
  NOR2X1 U16 ( .A(n52), .B(n53), .Y(n45) );
  MXI2X1 U17 ( .A(n54), .B(n55), .S0(Cin), .Y(Sum[0]) );
  AOI21X1 U18 ( .A0(n50), .A1(n51), .B0(n49), .Y(n55) );
  XOR2X1 U19 ( .A(n51), .B(B[0]), .Y(n54) );
  OAI2BB1X1 U20 ( .A0N(n32), .A1N(A[4]), .B0(n56), .Y(Cout) );
  OAI21XL U21 ( .A0(A[4]), .A1(n32), .B0(B[4]), .Y(n56) );
  OAI2BB1X1 U22 ( .A0N(n57), .A1N(A[3]), .B0(n58), .Y(n32) );
  OAI21XL U23 ( .A0(A[3]), .A1(n57), .B0(B[3]), .Y(n58) );
  OAI2BB1X1 U24 ( .A0N(n36), .A1N(Cin), .B0(n37), .Y(n57) );
  OA22X1 U25 ( .A0(n43), .A1(n59), .B0(n60), .B1(n44), .Y(n37) );
  AND2X1 U26 ( .A(n43), .B(n59), .Y(n60) );
  OAI21XL U27 ( .A0(n52), .A1(n49), .B0(n61), .Y(n43) );
  NOR2X1 U28 ( .A(n50), .B(n51), .Y(n49) );
  CLKINVX1 U29 ( .A(A[0]), .Y(n51) );
  CLKINVX1 U30 ( .A(B[0]), .Y(n50) );
  OA21XL U31 ( .A0(A[2]), .A1(n62), .B0(n63), .Y(n36) );
  OAI21XL U32 ( .A0(n59), .A1(n42), .B0(n44), .Y(n63) );
  CLKINVX1 U33 ( .A(B[2]), .Y(n44) );
  CLKINVX1 U34 ( .A(A[2]), .Y(n59) );
  CLKINVX1 U35 ( .A(n42), .Y(n62) );
  OAI31XL U36 ( .A0(n52), .A1(B[0]), .A2(A[0]), .B0(n61), .Y(n42) );
  CLKINVX1 U37 ( .A(n53), .Y(n61) );
  NOR2X1 U38 ( .A(A[1]), .B(B[1]), .Y(n53) );
  AND2X1 U39 ( .A(B[1]), .B(A[1]), .Y(n52) );
endmodule


module CarrySelectAdder6_0 ( Sum, Cout, A, B, Cin );
  output [5:0] Sum;
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70;

  XNOR2X1 U1 ( .A(n36), .B(n37), .Y(Sum[5]) );
  XNOR2X1 U2 ( .A(A[5]), .B(B[5]), .Y(n36) );
  MXI2X1 U3 ( .A(n38), .B(n39), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U4 ( .A(n40), .B(n41), .Y(n39) );
  XOR2X1 U5 ( .A(n42), .B(n40), .Y(n38) );
  XNOR2X1 U6 ( .A(A[4]), .B(B[4]), .Y(n40) );
  MXI2X1 U7 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[3]) );
  XNOR2X1 U8 ( .A(n45), .B(n46), .Y(n44) );
  XNOR2X1 U9 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U10 ( .A(B[3]), .B(A[3]), .Y(n46) );
  MXI2X1 U11 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U12 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U13 ( .A(n52), .B(n51), .Y(n48) );
  XNOR2X1 U14 ( .A(n53), .B(B[2]), .Y(n51) );
  MXI2X1 U15 ( .A(n54), .B(n55), .S0(n56), .Y(Sum[1]) );
  OA21XL U16 ( .A0(n57), .A1(n58), .B0(n59), .Y(n56) );
  XNOR2X1 U17 ( .A(A[1]), .B(B[1]), .Y(n55) );
  NOR2BX1 U18 ( .AN(n60), .B(n61), .Y(n54) );
  MXI2X1 U19 ( .A(n62), .B(n63), .S0(n57), .Y(Sum[0]) );
  CLKINVX1 U20 ( .A(Cin), .Y(n57) );
  XNOR2X1 U21 ( .A(A[0]), .B(B[0]), .Y(n63) );
  NOR2BX1 U22 ( .AN(n59), .B(n58), .Y(n62) );
  OAI2BB1X1 U23 ( .A0N(n37), .A1N(A[5]), .B0(n64), .Y(Cout) );
  OAI21XL U24 ( .A0(A[5]), .A1(n37), .B0(B[5]), .Y(n64) );
  OAI2BB1X1 U25 ( .A0N(n65), .A1N(A[4]), .B0(n66), .Y(n37) );
  OAI21XL U26 ( .A0(A[4]), .A1(n65), .B0(B[4]), .Y(n66) );
  AO21X1 U27 ( .A0(n41), .A1(Cin), .B0(n42), .Y(n65) );
  OAI2BB1X1 U28 ( .A0N(n47), .A1N(A[3]), .B0(n67), .Y(n42) );
  OAI21XL U29 ( .A0(A[3]), .A1(n47), .B0(B[3]), .Y(n67) );
  OAI22XL U30 ( .A0(n53), .A1(n68), .B0(n69), .B1(n52), .Y(n47) );
  OA21XL U31 ( .A0(n61), .A1(n59), .B0(n60), .Y(n52) );
  NAND2X1 U32 ( .A(B[0]), .B(A[0]), .Y(n59) );
  OA21XL U33 ( .A0(A[3]), .A1(n45), .B0(n70), .Y(n41) );
  AO21X1 U34 ( .A0(n45), .A1(A[3]), .B0(B[3]), .Y(n70) );
  OAI22XL U35 ( .A0(n53), .A1(n68), .B0(n50), .B1(n69), .Y(n45) );
  NOR2X1 U36 ( .A(B[2]), .B(A[2]), .Y(n69) );
  OA21XL U37 ( .A0(n61), .A1(n58), .B0(n60), .Y(n50) );
  NAND2X1 U38 ( .A(B[1]), .B(A[1]), .Y(n60) );
  NOR2X1 U39 ( .A(B[0]), .B(A[0]), .Y(n58) );
  NOR2X1 U40 ( .A(A[1]), .B(B[1]), .Y(n61) );
  CLKINVX1 U41 ( .A(B[2]), .Y(n68) );
  CLKINVX1 U42 ( .A(A[2]), .Y(n53) );
endmodule


module CarrySelectAdder7_1 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  XNOR2X1 U1 ( .A(n41), .B(n42), .Y(Sum[6]) );
  XNOR2X1 U2 ( .A(A[6]), .B(B[6]), .Y(n41) );
  MXI2X1 U3 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[5]) );
  XOR2X1 U4 ( .A(n45), .B(n46), .Y(n44) );
  XOR2X1 U5 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U6 ( .A(A[5]), .B(B[5]), .Y(n46) );
  MXI2X1 U7 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U8 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U9 ( .A(n52), .B(n51), .Y(n48) );
  XOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n51) );
  MXI2X1 U11 ( .A(n53), .B(n54), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U12 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U13 ( .A(n57), .B(n56), .Y(n53) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n56) );
  MXI2X1 U15 ( .A(n58), .B(n59), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U16 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X1 U17 ( .A(n62), .B(n61), .Y(n58) );
  XOR2X1 U18 ( .A(A[2]), .B(B[2]), .Y(n61) );
  MXI2X1 U19 ( .A(n63), .B(n64), .S0(n65), .Y(Sum[1]) );
  AOI22X1 U20 ( .A0(Cin), .A1(n66), .B0(B[0]), .B1(A[0]), .Y(n65) );
  NAND2X1 U21 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U22 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2BX1 U23 ( .AN(n69), .B(n70), .Y(n63) );
  XOR2X1 U24 ( .A(A[0]), .B(n71), .Y(Sum[0]) );
  XOR2X1 U25 ( .A(Cin), .B(B[0]), .Y(n71) );
  OAI2BB1X1 U26 ( .A0N(n42), .A1N(A[6]), .B0(n72), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n42), .B0(B[6]), .Y(n72) );
  OAI2BB1X1 U28 ( .A0N(n73), .A1N(A[5]), .B0(n74), .Y(n42) );
  OAI21XL U29 ( .A0(A[5]), .A1(n73), .B0(B[5]), .Y(n74) );
  OAI21XL U30 ( .A0(n45), .A1(n75), .B0(n47), .Y(n73) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n76), .A1N(n52), .Y(n47) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n77), .A1N(n57), .Y(n52) );
  AOI22X1 U33 ( .A0(A[2]), .A1(B[2]), .B0(n62), .B1(n78), .Y(n57) );
  CLKINVX1 U34 ( .A(n79), .Y(n78) );
  OAI31XL U35 ( .A0(n67), .A1(n70), .A2(n68), .B0(n69), .Y(n62) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n68) );
  CLKINVX1 U37 ( .A(B[0]), .Y(n67) );
  CLKINVX1 U38 ( .A(Cin), .Y(n75) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n50), .A1N(n76), .Y(n45) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n76) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n55), .A1N(n77), .Y(n50) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n77) );
  AOI2BB2X1 U43 ( .B0(A[2]), .B1(B[2]), .A0N(n60), .A1N(n79), .Y(n55) );
  NOR2X1 U44 ( .A(B[2]), .B(A[2]), .Y(n79) );
  OA21XL U45 ( .A0(n80), .A1(n70), .B0(n69), .Y(n60) );
  NAND2X1 U46 ( .A(B[1]), .B(A[1]), .Y(n69) );
  NOR2X1 U47 ( .A(A[1]), .B(B[1]), .Y(n70) );
  NOR2X1 U48 ( .A(B[0]), .B(A[0]), .Y(n80) );
endmodule


module CarrySelectAdder7_0 ( Sum, Cout, A, B, Cin );
  output [6:0] Sum;
  input [6:0] A;
  input [6:0] B;
  input Cin;
  output Cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  XNOR2X1 U1 ( .A(n41), .B(n42), .Y(Sum[6]) );
  XNOR2X1 U2 ( .A(A[6]), .B(B[6]), .Y(n41) );
  MXI2X1 U3 ( .A(n43), .B(n44), .S0(Cin), .Y(Sum[5]) );
  XOR2X1 U4 ( .A(n45), .B(n46), .Y(n44) );
  XOR2X1 U5 ( .A(n47), .B(n46), .Y(n43) );
  XOR2X1 U6 ( .A(A[5]), .B(B[5]), .Y(n46) );
  MXI2X1 U7 ( .A(n48), .B(n49), .S0(Cin), .Y(Sum[4]) );
  XOR2X1 U8 ( .A(n50), .B(n51), .Y(n49) );
  XOR2X1 U9 ( .A(n52), .B(n51), .Y(n48) );
  XOR2X1 U10 ( .A(A[4]), .B(B[4]), .Y(n51) );
  MXI2X1 U11 ( .A(n53), .B(n54), .S0(Cin), .Y(Sum[3]) );
  XOR2X1 U12 ( .A(n55), .B(n56), .Y(n54) );
  XOR2X1 U13 ( .A(n57), .B(n56), .Y(n53) );
  XOR2X1 U14 ( .A(A[3]), .B(B[3]), .Y(n56) );
  MXI2X1 U15 ( .A(n58), .B(n59), .S0(Cin), .Y(Sum[2]) );
  XOR2X1 U16 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X1 U17 ( .A(n62), .B(n61), .Y(n58) );
  XOR2X1 U18 ( .A(A[2]), .B(B[2]), .Y(n61) );
  MXI2X1 U19 ( .A(n63), .B(n64), .S0(n65), .Y(Sum[1]) );
  AOI22X1 U20 ( .A0(Cin), .A1(n66), .B0(B[0]), .B1(A[0]), .Y(n65) );
  NAND2X1 U21 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U22 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2BX1 U23 ( .AN(n69), .B(n70), .Y(n63) );
  XOR2X1 U24 ( .A(A[0]), .B(n71), .Y(Sum[0]) );
  XOR2X1 U25 ( .A(Cin), .B(B[0]), .Y(n71) );
  OAI2BB1X1 U26 ( .A0N(n42), .A1N(A[6]), .B0(n72), .Y(Cout) );
  OAI21XL U27 ( .A0(A[6]), .A1(n42), .B0(B[6]), .Y(n72) );
  OAI2BB1X1 U28 ( .A0N(n73), .A1N(A[5]), .B0(n74), .Y(n42) );
  OAI21XL U29 ( .A0(A[5]), .A1(n73), .B0(B[5]), .Y(n74) );
  OAI21XL U30 ( .A0(n45), .A1(n75), .B0(n47), .Y(n73) );
  AOI2BB2X1 U31 ( .B0(A[4]), .B1(B[4]), .A0N(n76), .A1N(n52), .Y(n47) );
  AOI2BB2X1 U32 ( .B0(A[3]), .B1(B[3]), .A0N(n77), .A1N(n57), .Y(n52) );
  AOI22X1 U33 ( .A0(A[2]), .A1(B[2]), .B0(n62), .B1(n78), .Y(n57) );
  CLKINVX1 U34 ( .A(n79), .Y(n78) );
  OAI31XL U35 ( .A0(n67), .A1(n70), .A2(n68), .B0(n69), .Y(n62) );
  CLKINVX1 U36 ( .A(A[0]), .Y(n68) );
  CLKINVX1 U37 ( .A(B[0]), .Y(n67) );
  CLKINVX1 U38 ( .A(Cin), .Y(n75) );
  AOI2BB2X1 U39 ( .B0(A[4]), .B1(B[4]), .A0N(n50), .A1N(n76), .Y(n45) );
  NOR2X1 U40 ( .A(B[4]), .B(A[4]), .Y(n76) );
  AOI2BB2X1 U41 ( .B0(A[3]), .B1(B[3]), .A0N(n55), .A1N(n77), .Y(n50) );
  NOR2X1 U42 ( .A(B[3]), .B(A[3]), .Y(n77) );
  AOI2BB2X1 U43 ( .B0(A[2]), .B1(B[2]), .A0N(n60), .A1N(n79), .Y(n55) );
  NOR2X1 U44 ( .A(B[2]), .B(A[2]), .Y(n79) );
  OA21XL U45 ( .A0(n80), .A1(n70), .B0(n69), .Y(n60) );
  NAND2X1 U46 ( .A(B[1]), .B(A[1]), .Y(n69) );
  NOR2X1 U47 ( .A(A[1]), .B(B[1]), .Y(n70) );
  NOR2X1 U48 ( .A(B[0]), .B(A[0]), .Y(n80) );
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


module Top ( R, X, Y );
  output [31:0] R;
  input [15:0] X;
  input [15:0] Y;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, SYNOPSYS_UNCONNECTED_1,
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
  SquareRootCarrySelectAdder32_2 srcsa32_0 ( .Sum(SignCompensate), .A({n33, 
        1'b1, n32, 1'b1, n31, 1'b1, n30, 1'b1, n29, 1'b1, n28, 1'b1, n27, 1'b1, 
        n26, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .Cin(1'b0) );
  SquareRootCarrySelectAdder32_1 srcsa32_1 ( .Sum(TmpResult), .A({1'b0, 
        OPA[30:0]}), .B({1'b0, OPB[30:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Cin(1'b0) );
  SquareRootCarrySelectAdder32_0 srcsa32_2 ( .Sum(R), .A(TmpResult), .B(
        SignCompensate), .Cin(1'b0) );
  CLKINVX1 U36 ( .A(Sign[15]), .Y(n33) );
  CLKINVX1 U37 ( .A(Sign[13]), .Y(n32) );
  CLKINVX1 U38 ( .A(Sign[11]), .Y(n31) );
  CLKINVX1 U39 ( .A(Sign[9]), .Y(n30) );
  CLKINVX1 U40 ( .A(Sign[7]), .Y(n29) );
  CLKINVX1 U41 ( .A(Sign[5]), .Y(n28) );
  CLKINVX1 U42 ( .A(Sign[3]), .Y(n27) );
  CLKINVX1 U43 ( .A(Sign[1]), .Y(n26) );
endmodule

