/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Sun May 27 20:25:48 2018
/////////////////////////////////////////////////////////////
`timescale 1ns / 1ns

module controller ( HGS, HGL, HGR, HY, HR, FG, FY, FR, ST_out, Trigger, clk, 
        reset );
  output [1:0] ST_out;
  input [1:0] Trigger;
  input clk, reset;
  output HGS, HGL, HGR, HY, HR, FG, FY, FR;
  wire   N29, N32, N33, N34, n6, n8, n11, n12, n13, n14, n15, n16, n17, n2, n3,
         n4, n5, n7, n9, n10;
  wire   [2:0] state;
  wire   [2:0] nxt_state;
  wire   [1:0] ST;

  DFFRX1 state_reg_2_ ( .D(nxt_state[2]), .CK(clk), .RN(n10), .Q(state[2]), 
        .QN(n6) );
  DFFRX1 state_reg_0_ ( .D(nxt_state[0]), .CK(clk), .RN(n10), .Q(state[0]), 
        .QN(n8) );
  DFFRX1 ST_out_reg_1_ ( .D(ST[1]), .CK(clk), .RN(n10), .Q(ST_out[1]) );
  DFFRX1 ST_out_reg_0_ ( .D(ST[0]), .CK(clk), .RN(n10), .Q(ST_out[0]) );
  TLATX1 nxt_state_reg_0_ ( .G(N29), .D(N32), .Q(nxt_state[0]) );
  TLATX1 nxt_state_reg_1_ ( .G(N29), .D(N33), .Q(nxt_state[1]) );
  TLATX1 nxt_state_reg_2_ ( .G(N29), .D(N34), .Q(nxt_state[2]) );
  TLATX1 ST_reg_1_ ( .G(N29), .D(n2), .Q(ST[1]) );
  TLATX1 ST_reg_0_ ( .G(N29), .D(n4), .Q(ST[0]) );
  DFFRX1 state_reg_1_ ( .D(nxt_state[1]), .CK(clk), .RN(n10), .Q(state[1]), 
        .QN(FR) );
  OAI22XL U3 ( .A0(n11), .A1(n13), .B0(n12), .B1(n14), .Y(N33) );
  NAND2X1 U4 ( .A(n13), .B(n14), .Y(HR) );
  CLKINVX1 U5 ( .A(n11), .Y(n2) );
  NAND2X1 U6 ( .A(state[1]), .B(n6), .Y(n14) );
  NAND3X1 U7 ( .A(Trigger[0]), .B(n3), .C(state[0]), .Y(n11) );
  NOR3X1 U8 ( .A(n7), .B(Trigger[1]), .C(n8), .Y(n12) );
  OR2X1 U9 ( .A(n6), .B(state[1]), .Y(n13) );
  NAND2X1 U10 ( .A(state[2]), .B(state[1]), .Y(N29) );
  AOI32X1 U11 ( .A0(Trigger[0]), .A1(n6), .A2(n8), .B0(n7), .B1(HGL), .Y(n16)
         );
  CLKINVX1 U12 ( .A(Trigger[0]), .Y(n7) );
  NOR2X1 U13 ( .A(state[1]), .B(n8), .Y(HY) );
  NOR2X1 U14 ( .A(n7), .B(Trigger[1]), .Y(n15) );
  NOR2X1 U15 ( .A(n8), .B(n14), .Y(FY) );
  NOR2X1 U16 ( .A(state[0]), .B(n14), .Y(FG) );
  OAI32X1 U17 ( .A0(n8), .A1(n15), .A2(n9), .B0(n16), .B1(n3), .Y(N32) );
  CLKINVX1 U18 ( .A(N29), .Y(n9) );
  OAI32X1 U19 ( .A0(n11), .A1(state[2]), .A2(state[1]), .B0(n12), .B1(n13), 
        .Y(N34) );
  NOR2X1 U20 ( .A(n13), .B(state[0]), .Y(HGL) );
  CLKINVX1 U21 ( .A(Trigger[1]), .Y(n3) );
  CLKINVX1 U22 ( .A(reset), .Y(n10) );
  CLKINVX1 U23 ( .A(n17), .Y(n4) );
  AOI32X1 U24 ( .A0(n15), .A1(HR), .A2(state[0]), .B0(n5), .B1(Trigger[1]), 
        .Y(n17) );
  CLKINVX1 U25 ( .A(n16), .Y(n5) );
  CLKBUFX3 U26 ( .A(HGS), .Y(HGR) );
  NOR3X1 U27 ( .A(state[1]), .B(state[2]), .C(state[0]), .Y(HGS) );
endmodule


module counter ( Trigger_out, clk, reset, ST );
  output [1:0] Trigger_out;
  input [1:0] ST;
  input clk, reset;
  wire   N11, N12, N13, N14, N15, n1, n3, n4, n5, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n2, n6, n7, n8, n9, n10, n11, n12, n24, n25,
         n26, n27;
  wire   [5:0] count;

  EDFFTRX1 Trigger_out_reg_0_ ( .RN(n27), .D(n1), .E(n12), .CK(clk), .Q(
        Trigger_out[0]) );
  EDFFTRX1 Trigger_out_reg_1_ ( .RN(n27), .D(n3), .E(n12), .CK(clk), .Q(
        Trigger_out[1]) );
  DFFX1 state_reg_0_ ( .D(n22), .CK(clk), .Q(n1), .QN(n5) );
  DFFX1 state_reg_1_ ( .D(n21), .CK(clk), .Q(n3), .QN(n4) );
  DFFQX1 count_reg_1_ ( .D(n20), .CK(clk), .Q(count[1]) );
  DFFQX1 count_reg_2_ ( .D(n11), .CK(clk), .Q(count[2]) );
  DFFTRX1 count_reg_5_ ( .D(N15), .RN(n25), .CK(clk), .Q(count[5]) );
  DFFQX1 count_reg_0_ ( .D(n23), .CK(clk), .Q(count[0]) );
  DFFTRX1 count_reg_4_ ( .D(N14), .RN(n25), .CK(clk), .Q(count[4]) );
  DFFTRX1 count_reg_3_ ( .D(N13), .RN(n25), .CK(clk), .Q(count[3]), .QN(n2) );
  NOR3BXL U3 ( .AN(n13), .B(ST[1]), .C(ST[0]), .Y(n15) );
  CLKINVX1 U4 ( .A(n16), .Y(n25) );
  NAND2X1 U5 ( .A(n15), .B(n27), .Y(n16) );
  CLKINVX1 U6 ( .A(n15), .Y(n24) );
  CLKINVX1 U7 ( .A(n13), .Y(n12) );
  OR2X1 U8 ( .A(count[1]), .B(count[0]), .Y(n6) );
  OAI21XL U9 ( .A0(n4), .A1(n16), .B0(n17), .Y(n21) );
  NAND2X1 U10 ( .A(n18), .B(n19), .Y(n13) );
  NOR3X1 U11 ( .A(count[0]), .B(count[2]), .C(count[1]), .Y(n18) );
  NOR3X1 U12 ( .A(count[3]), .B(count[5]), .C(count[4]), .Y(n19) );
  AOI32X1 U13 ( .A0(n24), .A1(n26), .A2(n17), .B0(n25), .B1(count[0]), .Y(n23)
         );
  OAI211X1 U14 ( .A0(n24), .A1(n10), .B0(n26), .C0(n27), .Y(n20) );
  CLKINVX1 U15 ( .A(N11), .Y(n10) );
  OAI211X1 U16 ( .A0(n5), .A1(n16), .B0(n26), .C0(n27), .Y(n22) );
  CLKINVX1 U17 ( .A(n14), .Y(n11) );
  AOI211X1 U18 ( .A0(n15), .A1(N12), .B0(ST[1]), .C0(reset), .Y(n14) );
  NOR2X1 U19 ( .A(reset), .B(ST[1]), .Y(n17) );
  CLKINVX1 U20 ( .A(ST[0]), .Y(n26) );
  CLKINVX1 U21 ( .A(reset), .Y(n27) );
  OAI2BB1X1 U22 ( .A0N(count[0]), .A1N(count[1]), .B0(n6), .Y(N11) );
  NOR2X1 U23 ( .A(n6), .B(count[2]), .Y(n7) );
  AO21X1 U24 ( .A0(n6), .A1(count[2]), .B0(n7), .Y(N12) );
  NAND2X1 U25 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U26 ( .A0(n7), .A1(n2), .B0(n8), .Y(N13) );
  XNOR2X1 U27 ( .A(count[4]), .B(n8), .Y(N14) );
  NOR2X1 U28 ( .A(count[4]), .B(n8), .Y(n9) );
  XOR2X1 U29 ( .A(count[5]), .B(n9), .Y(N15) );
endmodule


module traffic_light ( HGS, HGL, HGR, HY, HR, FG, FY, FR, clk, reset );
  input clk, reset;
  output HGS, HGL, HGR, HY, HR, FG, FY, FR;

  wire   [1:0] ST_connect;
  wire   [1:0] T_connect;

  controller Controller ( .HGS(HGS), .HGL(HGL), .HGR(HGR), .HY(HY), .HR(HR), 
        .FG(FG), .FY(FY), .FR(FR), .ST_out(ST_connect), .Trigger(T_connect), 
        .clk(clk), .reset(reset) );
  counter Counter ( .Trigger_out(T_connect), .clk(clk), .reset(reset), .ST(
        ST_connect) );
endmodule

