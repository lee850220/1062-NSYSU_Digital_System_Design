/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Apr 27 23:37:55 2018
/////////////////////////////////////////////////////////////

`timescale 1ns / 1ns
module HW1_1_RTL_DW01_addsub_0 ( ADD_SUB, SUM, \A[7] , \A[6] , \A[5] , \A[4] , 
        \A[3] , \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , 
        \B[2] , \B[1] , \B[0]  );
  output [8:0] SUM;
  input ADD_SUB, \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] ,
         \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ,
         \B[0] ;

  wire   [8:0] A;
  wire   [8:0] B;
  wire   [9:0] carry;
  wire   [8:0] B_AS;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign carry[0] = ADD_SUB;

  ADDFXL U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  XOR2X1 U1 ( .A(carry[0]), .B(carry[8]), .Y(SUM[8]) );
  XOR2X1 U2 ( .A(B[7]), .B(carry[0]), .Y(B_AS[7]) );
  XOR2X1 U3 ( .A(B[6]), .B(carry[0]), .Y(B_AS[6]) );
  XOR2X1 U4 ( .A(B[5]), .B(carry[0]), .Y(B_AS[5]) );
  XOR2X1 U5 ( .A(B[4]), .B(carry[0]), .Y(B_AS[4]) );
  XOR2X1 U6 ( .A(B[3]), .B(carry[0]), .Y(B_AS[3]) );
  XOR2X1 U7 ( .A(B[2]), .B(carry[0]), .Y(B_AS[2]) );
  XOR2X1 U8 ( .A(B[1]), .B(carry[0]), .Y(B_AS[1]) );
  XOR2X1 U9 ( .A(B[0]), .B(carry[0]), .Y(B_AS[0]) );
endmodule


module HW1_1_RTL_syn ( A, B, Add_ctrl, SUM, C_out, Overflow );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input Add_ctrl;
  output C_out, Overflow;
  wire   n12, n13, n14, n15;

  HW1_1_RTL_DW01_addsub_0 r301 ( .ADD_SUB(n15), .SUM({C_out, SUM}), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[7] (B[7]), .\B[6] (
        B[6]), .\B[5] (B[5]), .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), 
        .\B[1] (B[1]), .\B[0] (B[0]) );
  CLKINVX1 U9 ( .A(Add_ctrl), .Y(n15) );
  MXI2X1 U10 ( .A(n12), .B(n13), .S0(A[7]), .Y(Overflow) );
  OR2X1 U11 ( .A(n14), .B(SUM[7]), .Y(n13) );
  NAND2X1 U12 ( .A(SUM[7]), .B(n14), .Y(n12) );
  XOR2X1 U13 ( .A(Add_ctrl), .B(B[7]), .Y(n14) );
endmodule

