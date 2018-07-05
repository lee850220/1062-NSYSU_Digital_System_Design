/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Apr 27 17:52:05 2018
/////////////////////////////////////////////////////////////
`timescale 1ns / 1ns

module CLL_1 ( C_out, S3, S2, S1, S0, A3, A2, A1, A0, B3, B2, B1, B0, C0 );
  input A3, A2, A1, A0, B3, B2, B1, B0, C0;
  output C_out, S3, S2, S1, S0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S3) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S2) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S1) );
  XOR2X1 U4 ( .A(C0), .B(n7), .Y(S0) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B3), .A1N(A3), .Y(C_out) );
  XNOR2X1 U6 ( .A(A3), .B(B3), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B2), .A1(A2), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B2), .B(A2), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B1), .A1(A1), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B1), .B(A1), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(C0), .B0(A0), .B1(B0), .Y(n6) );
  XOR2X1 U14 ( .A(A0), .B(B0), .Y(n7) );
endmodule


module CLL_0 ( C_out, S3, S2, S1, S0, A3, A2, A1, A0, B3, B2, B1, B0, C0 );
  input A3, A2, A1, A0, B3, B2, B1, B0, C0;
  output C_out, S3, S2, S1, S0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S3) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S2) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S1) );
  XOR2X1 U4 ( .A(C0), .B(n7), .Y(S0) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B3), .A1N(A3), .Y(C_out) );
  XNOR2X1 U6 ( .A(A3), .B(B3), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B2), .A1(A2), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B2), .B(A2), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B1), .A1(A1), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B1), .B(A1), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(C0), .B0(A0), .B1(B0), .Y(n6) );
  XOR2X1 U14 ( .A(A0), .B(B0), .Y(n7) );
endmodule


module HW1_1_syn ( A, B, Add_ctrl, SUM, C_out, Overflow );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input Add_ctrl;
  output C_out, Overflow;
  wire   C4, C8, n4, n5, n6;
  wire   [7:0] B_s;

  CLL_1 CLL1 ( .C_out(C4), .S3(SUM[3]), .S2(SUM[2]), .S1(SUM[1]), .S0(SUM[0]), 
        .A3(A[3]), .A2(A[2]), .A1(A[1]), .A0(A[0]), .B3(B_s[3]), .B2(B_s[2]), 
        .B1(B_s[1]), .B0(B_s[0]), .C0(n4) );
  CLL_0 CLL2 ( .C_out(C8), .S3(SUM[7]), .S2(SUM[6]), .S1(SUM[5]), .S0(SUM[4]), 
        .A3(A[7]), .A2(A[6]), .A1(A[5]), .A0(A[4]), .B3(B_s[7]), .B2(B_s[6]), 
        .B1(B_s[5]), .B0(B_s[4]), .C0(C4) );
  MXI2X1 U15 ( .A(n5), .B(n6), .S0(A[7]), .Y(Overflow) );
  NAND2BX1 U16 ( .AN(SUM[7]), .B(B_s[7]), .Y(n6) );
  NAND2BX1 U17 ( .AN(B_s[7]), .B(SUM[7]), .Y(n5) );
  XOR2X1 U18 ( .A(n4), .B(C8), .Y(C_out) );
  XOR2X1 U19 ( .A(n4), .B(B[7]), .Y(B_s[7]) );
  XOR2X1 U20 ( .A(n4), .B(B[6]), .Y(B_s[6]) );
  XOR2X1 U21 ( .A(n4), .B(B[5]), .Y(B_s[5]) );
  XOR2X1 U22 ( .A(n4), .B(B[4]), .Y(B_s[4]) );
  XOR2X1 U23 ( .A(n4), .B(B[3]), .Y(B_s[3]) );
  XOR2X1 U24 ( .A(n4), .B(B[2]), .Y(B_s[2]) );
  XOR2X1 U25 ( .A(n4), .B(B[1]), .Y(B_s[1]) );
  XOR2X1 U26 ( .A(n4), .B(B[0]), .Y(B_s[0]) );
  CLKINVX1 U27 ( .A(Add_ctrl), .Y(n4) );
endmodule

