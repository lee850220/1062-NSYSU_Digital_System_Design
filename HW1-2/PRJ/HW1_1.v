`timescale 1ns / 1ns
//Generate, Propagate, Carry
module CLL (
    output C_out,
    output S3, S2, S1, S0,
    input A3, A2, A1, A0, B3, B2, B1, B0,
    input C0
    );
    wire c1t1,c2t1,c2t2,c3t1,c3t2,c3t3,c4t1,c4t2,c4t3,c4t4;
    wire C1, C2, C3;
    wire [3:0] G, P;
    
    //Carry propagate, Carry generate
    and #(1) (G[0], A0, B0);
    xor #(1) (P[0], A0, B0);
    and #(1) (G[1], A1, B1);
    xor #(1) (P[1], A1, B1);
    and #(1) (G[2], A2, B2);
    xor #(1) (P[2], A2, B2);
    and #(1) (G[3], A3, B3);
    xor #(1) (P[3], A3, B3);
    
    //Carry: Ci = Gi + PiCi
    and #(1) A11 (c1t1, P[0], C0);
    or #(1)  OC1 (C1, G[0], c1t1);
    
    and #(1) A21 (c2t1, P[1], G[0]);
    and #(1) A22 (c2t2, P[1], P[0], C0);
    or #(1)  OC2 (C2, G[1], c2t1, c2t2);
    
    and #(1) A31 (c3t1, P[2], G[1]);
    and #(1) A32 (c3t2, P[2], P[1], G[0]);
    and #(1) A33 (c3t3, P[2], P[1], P[0], C0);
    or #(1)  OC3 (C3, G[2], c3t1, c3t2, c3t3);
    
    and #(1) A41 (c4t1, P[3], G[2]);
    and #(1) A42 (c4t2, P[3], P[2], G[1]);
    and #(1) A43 (c4t3, P[3], P[2], P[1], G[0]);
    and #(1) A44 (c4t4, P[3], P[2], P[1], P[0], C0);
    or #(1)  OC4 (C_out, G[3], c4t1, c4t2, c4t3, c4t4);
    
    //Sum: Si = Pi xor Ci
    xor #(1) (S0, P[0], C0);
    xor #(1) (S1, P[1], C1);
    xor #(1) (S2, P[2], C2);
    xor #(1) (S3, P[3], C3);
        
endmodule


module HW1_1 (
    input [7:0]A,
    input [7:0]B,
    input Add_ctrl,
    output [7:0]SUM,
    output C_out,
    output Overflow
    );
    wire [7:0] B_s;
    wire nAdd_ctrl, C4, C8;
    wire nA7,nB7,nS7,ao1,ao2,ao3,ao4;
    
    //invert Add_ctrl for add=0 sub=1
    not #(1) (nAdd_ctrl, Add_ctrl);
    
    //sub need to + 1
    or #(1) (C0, nAdd_ctrl);
    
    //add or sub
    xor #(1) (B_s[0], nAdd_ctrl, B[0]);
    xor #(1) (B_s[1], nAdd_ctrl, B[1]);
    xor #(1) (B_s[2], nAdd_ctrl, B[2]);
    xor #(1) (B_s[3], nAdd_ctrl, B[3]);
    xor #(1) (B_s[4], nAdd_ctrl, B[4]);
    xor #(1) (B_s[5], nAdd_ctrl, B[5]);
    xor #(1) (B_s[6], nAdd_ctrl, B[6]);
    xor #(1) (B_s[7], nAdd_ctrl, B[7]);
    
    //ALU
    CLL CLL1 (C4, SUM[3], SUM[2], SUM[1], SUM[0], A[3], A[2], A[1], A[0], B_s[3], B_s[2], B_s[1], B_s[0], C0);
    CLL CLL2 (C8, SUM[7], SUM[6], SUM[5], SUM[4], A[7], A[6], A[5], A[4], B_s[7], B_s[6], B_s[5], B_s[4], C4);
    xor #(1) (C_out, C8, nAdd_ctrl);
    
    //check overflow
    not #(1) NA7 (nA7, A[7]);
    not #(1) NB7 (nB7, B[7]);
    not #(1) NS7 (nS7, SUM[7]);
    and #(1) AO1 (ao1, A[7], B[7], Add_ctrl, nS7);
    and #(1) AO2 (ao2, nA7, nB7, Add_ctrl, SUM[7]);
    and #(1) AO3 (ao3, A[7], nB7, nAdd_ctrl, nS7);
    and #(1) AO4 (ao4, nA7, B[7], nAdd_ctrl, SUM[7]);
    or  #(1) OVF (Overflow, ao1, ao2, ao3, ao4);       
endmodule
