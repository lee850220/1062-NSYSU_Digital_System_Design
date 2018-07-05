// Half adder
module HA (S, Cout, A, B);
    output S;
    output Cout;
    input A;
    input B;
    xor (S, A, B);
    and (Cout, A, B);
endmodule
// Full adder
module FA (S, Cout, A, B, Cin);
    output S;
    output Cout;
    input A;
    input B;
    input Cin;
    wire ha1_S, ha1_Cout;
    wire ha2_Cout;
    HA ha1 (ha1_S, ha1_Cout, A, B);
    HA ha2 (S, ha2_Cout, ha1_S, Cin);
    or (Cout, ha2_Cout, ha1_Cout);
endmodule
// Booth radix 4
module BoothRadix4 (
    output [15:0] Sign,
    output [16:0] PP7,
    output [16:0] PP6,
    output [16:0] PP5,
    output [16:0] PP4,
    output [16:0] PP3,
    output [16:0] PP2,
    output [16:0] PP1,
    output [16:0] PP0,
    input [15:0] InputA,             // Bei Cheng Shu
    input [15:0] InputB              // Cheng Shu
);

    wire [16:0] tmp;
    wire [16:0] A;
    wire [16:0] _A;
    wire [16:0] A2;
    wire [16:0] _A2;

    assign A = (InputA[15] == 1'b1) ? {1'b1, InputA} : {1'b0, InputA};

    assign tmp = {InputB, 1'b0};
    assign A2 = A + A;
    assign _A = (~A + 1'b1);
    assign _A2 = (~A2 + 1'b1);

    assign PP0 = (tmp[2:0] == 3'b001) ? A :
            (tmp[2:0] == 3'b010) ? A :
            (tmp[2:0] == 3'b011) ? A2 :
            (tmp[2:0] == 3'b100) ? _A2 :
            (tmp[2:0] == 3'b101) ? _A :
            (tmp[2:0] == 3'b110) ? _A : 17'b0;
    buf (Sign[0], 1'b0);
    buf (Sign[1], PP0[16]);

    assign PP1 = (tmp[4:2] == 3'b001) ? A :
            (tmp[4:2] == 3'b010) ? A :
            (tmp[4:2] == 3'b011) ? A2 :
            (tmp[4:2] == 3'b100) ? _A2 :
            (tmp[4:2] == 3'b101) ? _A :
            (tmp[4:2] == 3'b110) ? _A : 17'b0;
    buf (Sign[2], 1'b0);
    buf (Sign[3], PP1[16]);

    assign PP2 = (tmp[6:4] == 3'b001) ? A :
            (tmp[6:4] == 3'b010) ? A :
            (tmp[6:4] == 3'b011) ? A2 :
            (tmp[6:4] == 3'b100) ? _A2 :
            (tmp[6:4] == 3'b101) ? _A :
            (tmp[6:4] == 3'b110) ? _A : 17'b0;
    buf (Sign[4], 1'b0);
    buf (Sign[5], PP2[16]);

    assign PP3 = (tmp[8:6] == 3'b001) ? A :
            (tmp[8:6] == 3'b010) ? A :
            (tmp[8:6] == 3'b011) ? A2 :
            (tmp[8:6] == 3'b100) ? _A2 :
            (tmp[8:6] == 3'b101) ? _A :
            (tmp[8:6] == 3'b110) ? _A : 17'b0;
    buf (Sign[6], 1'b0);
    buf (Sign[7], PP3[16]);

    assign PP4 = (tmp[10:8] == 3'b001) ? A :
            (tmp[10:8] == 3'b010) ? A :
            (tmp[10:8] == 3'b011) ? A2 :
            (tmp[10:8] == 3'b100) ? _A2 :
            (tmp[10:8] == 3'b101) ? _A :
            (tmp[10:8] == 3'b110) ? _A : 17'b0;
    buf (Sign[8], 1'b0);
    buf (Sign[9], PP4[16]);

    assign PP5 = (tmp[12:10] == 3'b001) ? A :
            (tmp[12:10] == 3'b010) ? A :
            (tmp[12:10] == 3'b011) ? A2 :
            (tmp[12:10] == 3'b100) ? _A2 :
            (tmp[12:10] == 3'b101) ? _A :
            (tmp[12:10] == 3'b110) ? _A : 17'b0;
    buf (Sign[10], 1'b0);
    buf (Sign[11], PP5[16]);

    assign PP6 = (tmp[14:12] == 3'b001) ? A :
            (tmp[14:12] == 3'b010) ? A :
            (tmp[14:12] == 3'b011) ? A2 :
            (tmp[14:12] == 3'b100) ? _A2 :
            (tmp[14:12] == 3'b101) ? _A :
            (tmp[14:12] == 3'b110) ? _A : 17'b0;
    buf (Sign[12], 1'b0);
    buf (Sign[13], PP6[16]);

    assign PP7 = (tmp[16:14] == 3'b001) ? A :
            (tmp[16:14] == 3'b010) ? A :
            (tmp[16:14] == 3'b011) ? A2 :
            (tmp[16:14] == 3'b100) ? _A2 :
            (tmp[16:14] == 3'b101) ? _A :
            (tmp[16:14] == 3'b110) ? _A : 17'b0;
    buf (Sign[14], 1'b0);
    buf (Sign[15], PP7[16]);

endmodule
// Wallace tree radix 4
// Create by verilog.py power by Hua777: github.com/Hua777
module WallaceTree16X16Radix4 (
    output [31:0] OPA,
    output [31:0] OPB,
    input [16:0] PP7,
    input [16:0] PP6,
    input [16:0] PP5,
    input [16:0] PP4,
    input [16:0] PP3,
    input [16:0] PP2,
    input [16:0] PP1,
    input [16:0] PP0
);

    // First
    wire [16:0] A0S;
    wire [16:0] A0C;
    wire [16:0] A1S;
    wire [16:0] A1C;

    // Second
    wire [17:0] B0S;
    wire [17:0] B0C;
    wire [16:0] B1S;
    wire [16:0] B1C;

    // Third
    wire [22:0] C0S;
    wire [22:0] C0C;

    // Fourth
    wire [24:0] D0S;
    wire [24:0] D0C;

    HA ha_A_0_0 (A0S[0], A0C[0], PP0[2], PP1[0]);
    HA ha_A_0_1 (A0S[1], A0C[1], PP0[3], PP1[1]);
    FA fa_A_0_2 (A0S[2], A0C[2], PP0[4], PP1[2], PP2[0]);
    FA fa_A_0_3 (A0S[3], A0C[3], PP0[5], PP1[3], PP2[1]);
    FA fa_A_0_4 (A0S[4], A0C[4], PP0[6], PP1[4], PP2[2]);
    FA fa_A_0_5 (A0S[5], A0C[5], PP0[7], PP1[5], PP2[3]);
    FA fa_A_0_6 (A0S[6], A0C[6], PP0[8], PP1[6], PP2[4]);
    FA fa_A_0_7 (A0S[7], A0C[7], PP0[9], PP1[7], PP2[5]);
    FA fa_A_0_8 (A0S[8], A0C[8], PP0[10], PP1[8], PP2[6]);
    FA fa_A_0_9 (A0S[9], A0C[9], PP0[11], PP1[9], PP2[7]);
    FA fa_A_0_10 (A0S[10], A0C[10], PP0[12], PP1[10], PP2[8]);
    FA fa_A_0_11 (A0S[11], A0C[11], PP0[13], PP1[11], PP2[9]);
    FA fa_A_0_12 (A0S[12], A0C[12], PP0[14], PP1[12], PP2[10]);
    FA fa_A_0_13 (A0S[13], A0C[13], PP0[15], PP1[13], PP2[11]);
    FA fa_A_0_14 (A0S[14], A0C[14], PP0[16], PP1[14], PP2[12]);
    HA ha_A_0_15 (A0S[15], A0C[15], PP1[15], PP2[13]);
    HA ha_A_0_16 (A0S[16], A0C[16], PP1[16], PP2[14]);
    HA ha_A_1_0 (A1S[0], A1C[0], PP3[2], PP4[0]);
    HA ha_A_1_1 (A1S[1], A1C[1], PP3[3], PP4[1]);
    FA fa_A_1_2 (A1S[2], A1C[2], PP3[4], PP4[2], PP5[0]);
    FA fa_A_1_3 (A1S[3], A1C[3], PP3[5], PP4[3], PP5[1]);
    FA fa_A_1_4 (A1S[4], A1C[4], PP3[6], PP4[4], PP5[2]);
    FA fa_A_1_5 (A1S[5], A1C[5], PP3[7], PP4[5], PP5[3]);
    FA fa_A_1_6 (A1S[6], A1C[6], PP3[8], PP4[6], PP5[4]);
    FA fa_A_1_7 (A1S[7], A1C[7], PP3[9], PP4[7], PP5[5]);
    FA fa_A_1_8 (A1S[8], A1C[8], PP3[10], PP4[8], PP5[6]);
    FA fa_A_1_9 (A1S[9], A1C[9], PP3[11], PP4[9], PP5[7]);
    FA fa_A_1_10 (A1S[10], A1C[10], PP3[12], PP4[10], PP5[8]);
    FA fa_A_1_11 (A1S[11], A1C[11], PP3[13], PP4[11], PP5[9]);
    FA fa_A_1_12 (A1S[12], A1C[12], PP3[14], PP4[12], PP5[10]);
    FA fa_A_1_13 (A1S[13], A1C[13], PP3[15], PP4[13], PP5[11]);
    FA fa_A_1_14 (A1S[14], A1C[14], PP3[16], PP4[14], PP5[12]);
    HA ha_A_1_15 (A1S[15], A1C[15], PP4[15], PP5[13]);
    HA ha_A_1_16 (A1S[16], A1C[16], PP4[16], PP5[14]);

    HA ha_B_0_0 (B0S[0], B0C[0], A0S[1], A0C[0]);
    HA ha_B_0_1 (B0S[1], B0C[1], A0S[2], A0C[1]);
    HA ha_B_0_2 (B0S[2], B0C[2], A0S[3], A0C[2]);
    FA fa_B_0_3 (B0S[3], B0C[3], A0S[4], A0C[3], PP3[0]);
    FA fa_B_0_4 (B0S[4], B0C[4], A0S[5], A0C[4], PP3[1]);
    FA fa_B_0_5 (B0S[5], B0C[5], A0S[6], A0C[5], A1S[0]);
    FA fa_B_0_6 (B0S[6], B0C[6], A0S[7], A0C[6], A1S[1]);
    FA fa_B_0_7 (B0S[7], B0C[7], A0S[8], A0C[7], A1S[2]);
    FA fa_B_0_8 (B0S[8], B0C[8], A0S[9], A0C[8], A1S[3]);
    FA fa_B_0_9 (B0S[9], B0C[9], A0S[10], A0C[9], A1S[4]);
    FA fa_B_0_10 (B0S[10], B0C[10], A0S[11], A0C[10], A1S[5]);
    FA fa_B_0_11 (B0S[11], B0C[11], A0S[12], A0C[11], A1S[6]);
    FA fa_B_0_12 (B0S[12], B0C[12], A0S[13], A0C[12], A1S[7]);
    FA fa_B_0_13 (B0S[13], B0C[13], A0S[14], A0C[13], A1S[8]);
    FA fa_B_0_14 (B0S[14], B0C[14], A0S[15], A0C[14], A1S[9]);
    FA fa_B_0_15 (B0S[15], B0C[15], A0S[16], A0C[15], A1S[10]);
    FA fa_B_0_16 (B0S[16], B0C[16], PP2[15], A0C[16], A1S[11]);
    HA ha_B_0_17 (B0S[17], B0C[17], PP2[16], A1S[12]);
    HA ha_B_1_0 (B1S[0], B1C[0], A1C[3], PP6[0]);
    HA ha_B_1_1 (B1S[1], B1C[1], A1C[4], PP6[1]);
    FA fa_B_1_2 (B1S[2], B1C[2], A1C[5], PP6[2], PP7[0]);
    FA fa_B_1_3 (B1S[3], B1C[3], A1C[6], PP6[3], PP7[1]);
    FA fa_B_1_4 (B1S[4], B1C[4], A1C[7], PP6[4], PP7[2]);
    FA fa_B_1_5 (B1S[5], B1C[5], A1C[8], PP6[5], PP7[3]);
    FA fa_B_1_6 (B1S[6], B1C[6], A1C[9], PP6[6], PP7[4]);
    FA fa_B_1_7 (B1S[7], B1C[7], A1C[10], PP6[7], PP7[5]);
    FA fa_B_1_8 (B1S[8], B1C[8], A1C[11], PP6[8], PP7[6]);
    FA fa_B_1_9 (B1S[9], B1C[9], A1C[12], PP6[9], PP7[7]);
    FA fa_B_1_10 (B1S[10], B1C[10], A1C[13], PP6[10], PP7[8]);
    FA fa_B_1_11 (B1S[11], B1C[11], A1C[14], PP6[11], PP7[9]);
    FA fa_B_1_12 (B1S[12], B1C[12], A1C[15], PP6[12], PP7[10]);
    FA fa_B_1_13 (B1S[13], B1C[13], A1C[16], PP6[13], PP7[11]);
    HA ha_B_1_14 (B1S[14], B1C[14], PP6[14], PP7[12]);
    HA ha_B_1_15 (B1S[15], B1C[15], PP6[15], PP7[13]);
    HA ha_B_1_16 (B1S[16], B1C[16], PP6[16], PP7[14]);

    HA ha_C_0_0 (C0S[0], C0C[0], B0S[1], B0C[0]);
    HA ha_C_0_1 (C0S[1], C0C[1], B0S[2], B0C[1]);
    HA ha_C_0_2 (C0S[2], C0C[2], B0S[3], B0C[2]);
    HA ha_C_0_3 (C0S[3], C0C[3], B0S[4], B0C[3]);
    HA ha_C_0_4 (C0S[4], C0C[4], B0S[5], B0C[4]);
    FA fa_C_0_5 (C0S[5], C0C[5], B0S[6], B0C[5], A1C[0]);
    FA fa_C_0_6 (C0S[6], C0C[6], B0S[7], B0C[6], A1C[1]);
    FA fa_C_0_7 (C0S[7], C0C[7], B0S[8], B0C[7], A1C[2]);
    FA fa_C_0_8 (C0S[8], C0C[8], B0S[9], B0C[8], B1S[0]);
    FA fa_C_0_9 (C0S[9], C0C[9], B0S[10], B0C[9], B1S[1]);
    FA fa_C_0_10 (C0S[10], C0C[10], B0S[11], B0C[10], B1S[2]);
    FA fa_C_0_11 (C0S[11], C0C[11], B0S[12], B0C[11], B1S[3]);
    FA fa_C_0_12 (C0S[12], C0C[12], B0S[13], B0C[12], B1S[4]);
    FA fa_C_0_13 (C0S[13], C0C[13], B0S[14], B0C[13], B1S[5]);
    FA fa_C_0_14 (C0S[14], C0C[14], B0S[15], B0C[14], B1S[6]);
    FA fa_C_0_15 (C0S[15], C0C[15], B0S[16], B0C[15], B1S[7]);
    FA fa_C_0_16 (C0S[16], C0C[16], B0S[17], B0C[16], B1S[8]);
    FA fa_C_0_17 (C0S[17], C0C[17], A1S[13], B0C[17], B1S[9]);
    HA ha_C_0_18 (C0S[18], C0C[18], A1S[14], B1S[10]);
    HA ha_C_0_19 (C0S[19], C0C[19], A1S[15], B1S[11]);
    HA ha_C_0_20 (C0S[20], C0C[20], A1S[16], B1S[12]);
    HA ha_C_0_21 (C0S[21], C0C[21], PP5[15], B1S[13]);
    HA ha_C_0_22 (C0S[22], C0C[22], PP5[16], B1S[14]);

    HA ha_D_0_0 (D0S[0], D0C[0], C0S[1], C0C[0]);
    HA ha_D_0_1 (D0S[1], D0C[1], C0S[2], C0C[1]);
    HA ha_D_0_2 (D0S[2], D0C[2], C0S[3], C0C[2]);
    HA ha_D_0_3 (D0S[3], D0C[3], C0S[4], C0C[3]);
    HA ha_D_0_4 (D0S[4], D0C[4], C0S[5], C0C[4]);
    HA ha_D_0_5 (D0S[5], D0C[5], C0S[6], C0C[5]);
    HA ha_D_0_6 (D0S[6], D0C[6], C0S[7], C0C[6]);
    HA ha_D_0_7 (D0S[7], D0C[7], C0S[8], C0C[7]);
    FA fa_D_0_8 (D0S[8], D0C[8], C0S[9], C0C[8], B1C[0]);
    FA fa_D_0_9 (D0S[9], D0C[9], C0S[10], C0C[9], B1C[1]);
    FA fa_D_0_10 (D0S[10], D0C[10], C0S[11], C0C[10], B1C[2]);
    FA fa_D_0_11 (D0S[11], D0C[11], C0S[12], C0C[11], B1C[3]);
    FA fa_D_0_12 (D0S[12], D0C[12], C0S[13], C0C[12], B1C[4]);
    FA fa_D_0_13 (D0S[13], D0C[13], C0S[14], C0C[13], B1C[5]);
    FA fa_D_0_14 (D0S[14], D0C[14], C0S[15], C0C[14], B1C[6]);
    FA fa_D_0_15 (D0S[15], D0C[15], C0S[16], C0C[15], B1C[7]);
    FA fa_D_0_16 (D0S[16], D0C[16], C0S[17], C0C[16], B1C[8]);
    FA fa_D_0_17 (D0S[17], D0C[17], C0S[18], C0C[17], B1C[9]);
    FA fa_D_0_18 (D0S[18], D0C[18], C0S[19], C0C[18], B1C[10]);
    FA fa_D_0_19 (D0S[19], D0C[19], C0S[20], C0C[19], B1C[11]);
    FA fa_D_0_20 (D0S[20], D0C[20], C0S[21], C0C[20], B1C[12]);
    FA fa_D_0_21 (D0S[21], D0C[21], C0S[22], C0C[21], B1C[13]);
    FA fa_D_0_22 (D0S[22], D0C[22], B1S[15], C0C[22], B1C[14]);
    HA ha_D_0_23 (D0S[23], D0C[23], B1S[16], B1C[15]);
    HA ha_D_0_24 (D0S[24], D0C[24], PP7[15], B1C[16]);

    // Output
    assign OPA = {1'b0, PP7[16], D0S[24:0], C0S[0], B0S[0], A0S[0], PP0[1], PP0[0]};
    assign OPB = {1'b0, D0C[24:0], 6'b000000};

endmodule
// Carry select adder 3-bit (
module CarrySelectAdder3 (
    output [2:0] Sum,
    output Cout,
    input [2:0] A,
    input [2:0] B,
    input Cin
);
    wire [2:0] g, p, c0, c1, c;
    assign g = A & B;
    assign p = A | B;
    // CLA cin 0
    assign c0[0] = g[0];
    assign c0[1] = (p[1] & c0[0]) | g[1];
    assign c0[2] = (p[2] & c0[1]) | g[2];
    // CLA cin 1
    assign c1[0] = g[0] | p[0];
    assign c1[1] = (p[1] & c1[0]) | g[1];
    assign c1[2] = (p[2] & c1[1]) | g[2];
    // cs
    assign c = (Cin ? c1 : c0);
    // sum
    assign Sum = A ^ B ^ {c[1:0], Cin};
    // carry
    assign Cout = c[2];
endmodule
// Carry select adder 4-bit (
module CarrySelectAdder4 (
    output [3:0] Sum,
    output Cout,
    input [3:0] A,
    input [3:0] B,
    input Cin
);
    wire [3:0] g, p, c0, c1, c;
    assign g = A & B;
    assign p = A | B;
    // CLA cin 0
    assign c0[0] = g[0];
    assign c0[1] = (p[1] & c0[0]) | g[1];
    assign c0[2] = (p[2] & c0[1]) | g[2];
    assign c0[3] = (p[3] & c0[2]) | g[3];
    // CLA cin 1
    assign c1[0] = g[0] | p[0];
    assign c1[1] = (p[1] & c1[0]) | g[1];
    assign c1[2] = (p[2] & c1[1]) | g[2];
    assign c1[3] = (p[3] & c1[2]) | g[3];
    // cs
    assign c = (Cin ? c1 : c0);
    // sum
    assign Sum = A ^ B ^ {c[2:0], Cin};
    // carry
    assign Cout = c[3];
endmodule
// Carry select adder 5-bit (
module CarrySelectAdder5 (
    output [4:0] Sum,
    output Cout,
    input [4:0] A,
    input [4:0] B,
    input Cin
);
    wire [4:0] g, p, c0, c1, c;
    assign g = A & B;
    assign p = A | B;
    // CLA cin 0
    assign c0[0] = g[0];
    assign c0[1] = (p[1] & c0[0]) | g[1];
    assign c0[2] = (p[2] & c0[1]) | g[2];
    assign c0[3] = (p[3] & c0[2]) | g[3];
    assign c0[4] = (p[4] & c0[3]) | g[4];
    // CLA cin 1
    assign c1[0] = g[0] | p[0];
    assign c1[1] = (p[1] & c1[0]) | g[1];
    assign c1[2] = (p[2] & c1[1]) | g[2];
    assign c1[3] = (p[3] & c1[2]) | g[3];
    assign c1[4] = (p[4] & c1[3]) | g[4];
    // cs
    assign c = (Cin ? c1 : c0);
    // sum
    assign Sum = A ^ B ^ {c[3:0], Cin};
    // carry
    assign Cout = c[4];
endmodule
// Carry select adder 6-bit (
module CarrySelectAdder6 (
    output [5:0] Sum,
    output Cout,
    input [5:0] A,
    input [5:0] B,
    input Cin
);
    wire [5:0] g, p, c0, c1, c;
    assign g = A & B;
    assign p = A | B;
    // CLA cin 0
    assign c0[0] = g[0];
    assign c0[1] = (p[1] & c0[0]) | g[1];
    assign c0[2] = (p[2] & c0[1]) | g[2];
    assign c0[3] = (p[3] & c0[2]) | g[3];
    assign c0[4] = (p[4] & c0[3]) | g[4];
    assign c0[5] = (p[5] & c0[4]) | g[5];
    // CLA cin 1
    assign c1[0] = g[0] | p[0];
    assign c1[1] = (p[1] & c1[0]) | g[1];
    assign c1[2] = (p[2] & c1[1]) | g[2];
    assign c1[3] = (p[3] & c1[2]) | g[3];
    assign c1[4] = (p[4] & c1[3]) | g[4];
    assign c1[5] = (p[5] & c1[4]) | g[5];
    // cs
    assign c = (Cin ? c1 : c0);
    // sum
    assign Sum = A ^ B ^ {c[4:0], Cin};
    // carry
    assign Cout = c[5];
endmodule
// Carry select adder 7-bit (
module CarrySelectAdder7 (
    output [6:0] Sum,
    output Cout,
    input [6:0] A,
    input [6:0] B,
    input Cin
);
    wire [6:0] g, p, c0, c1, c;
    assign g = A & B;
    assign p = A | B;
    // CLA cin 0
    assign c0[0] = g[0];
    assign c0[1] = (p[1] & c0[0]) | g[1];
    assign c0[2] = (p[2] & c0[1]) | g[2];
    assign c0[3] = (p[3] & c0[2]) | g[3];
    assign c0[4] = (p[4] & c0[3]) | g[4];
    assign c0[5] = (p[5] & c0[4]) | g[5];
    assign c0[6] = (p[6] & c0[5]) | g[6];
    // CLA cin 1
    assign c1[0] = g[0] | p[0];
    assign c1[1] = (p[1] & c1[0]) | g[1];
    assign c1[2] = (p[2] & c1[1]) | g[2];
    assign c1[3] = (p[3] & c1[2]) | g[3];
    assign c1[4] = (p[4] & c1[3]) | g[4];
    assign c1[5] = (p[5] & c1[4]) | g[5];
    assign c1[6] = (p[6] & c1[5]) | g[6];
    // cs
    assign c = (Cin ? c1 : c0);
    // sum
    assign Sum = A ^ B ^ {c[5:0], Cin};
    // carry
    assign Cout = c[6];
endmodule
// Square root carry select adder 32-bit
module SquareRootCarrySelectAdder32 (
    output [31:0] Sum,
    output Cout,
    input [31:0] A,
    input [31:0] B,
    input Cin
);
    // 3 4 5 6 7 7
    wire CoutA, CoutB, CoutC, CoutD, CoutE;
    CarrySelectAdder3 csa3 (Sum[2:0], CoutA, A[2:0], B[2:0], Cin);
    CarrySelectAdder4 csa4 (Sum[6:3], CoutB, A[6:3], B[6:3], CoutA);
    CarrySelectAdder5 csa5 (Sum[11:7], CoutC, A[11:7], B[11:7], CoutB);
    CarrySelectAdder6 csa6 (Sum[17:12], CoutD, A[17:12], B[17:12], CoutC);
    CarrySelectAdder7 csa7_0 (Sum[24:18], CoutE, A[24:18], B[24:18], CoutD);
    CarrySelectAdder7 csa7_1 (Sum[31:25], Cout, A[31:25], B[31:25], CoutE);
    
endmodule
// Final
module Mul (
    output [31:0] R,
    input [15:0] X,
    input [15:0] Y
);

    wire [16:0] PP0;
    wire [16:0] PP1;
    wire [16:0] PP2;
    wire [16:0] PP3;
    wire [16:0] PP4;
    wire [16:0] PP5;
    wire [16:0] PP6;
    wire [16:0] PP7;

    wire [31:0] OPA;
    wire [31:0] OPB;

    wire [15:0] Sign;
    wire [31:0] SignCompensate;

    wire [31:0] TmpResult;

    BoothRadix4 br4 (Sign, PP7, PP6, PP5, PP4, PP3, PP2, PP1, PP0, X, Y);

    WallaceTree16X16Radix4 wt16x16r4 (OPA, OPB, PP7, PP6, PP5, PP4, PP3, PP2, PP1, PP0);
    
    // PP sign
    SquareRootCarrySelectAdder32 srcsa32_0 (.Sum(SignCompensate), .Cout(), .A({~Sign, 16'b0}), .B({15'b0, 1'b1, 16'b0}), .Cin(1'b0));

    // Wallace tree final two numbers
    SquareRootCarrySelectAdder32 srcsa32_1 (.Sum(TmpResult), .Cout(), .A(OPA), .B(OPB), .Cin(1'b0));

    // PP sign set to result number
    SquareRootCarrySelectAdder32 srcsa32_2 (.Sum(R), .Cout(), .A(TmpResult), .B(SignCompensate), .Cin(1'b0));

endmodule

module Outputer (
    output reg Ready,
    output reg Valid,
    output reg [31:0] R,
    input [31:0] tmpR,
    input Clk,
    input Rst
);
    reg [3:0] Counter;

    always @ (posedge Clk or negedge Rst) begin
        if (Rst == 1'b0) begin
            Counter = 4'd8;
        end
        else if (Counter > 4'd0) begin
            Counter = Counter - 1'b1;
        end
        else begin
            Counter = 4'd8;
        end
    end

    always @ (posedge Clk) begin
        if (Counter == 4'd8) begin
            R = 32'd0;
            Valid = 1'b0;
            Ready = 1'b1;
        end
        else if (Counter == 4'd0) begin
            R = tmpR;
            Valid = 1'b1;
            Ready = 1'b0;
        end
        else begin
            R = 32'd0;
            Valid = 1'b0;
            Ready = 1'b0;
        end
    end
endmodule

module multiplier (
    output Ready,
    output Valid,
    output [31:0] R,
    input [15:0] X,
    input [15:0] Y,
    input Clk,
    input Rst
);

    wire [31:0] tmpR;
    Mul mul_1 (tmpR, X, Y);
    Outputer o_0 (Ready, Valid, R, tmpR, Clk, Rst);

endmodule

// Check for multiple
module MulCheck (p, a, b);

    input signed [15:0] a, b;
    output signed [31:0] p;
    assign p = a * b;

endmodule