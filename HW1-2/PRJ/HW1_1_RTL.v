`timescale 1ns / 1ns
//8Bit_addsub_carrylookahead
module HW1_1_RTL (
    input [7:0]A,
    input [7:0]B,
    input Add_ctrl,
    output reg [7:0]SUM,
    output reg C_out,
    output Overflow
    );
    always@(A or B or Add_ctrl)
        begin
        if (Add_ctrl == 1)
            {C_out, SUM} = A + B;
        else
            {C_out, SUM} = A - B;
        end
                     
    //check overflow
    assign Overflow = (A[7] & B[7] & Add_ctrl & ~SUM[7]) | (~A[7] & ~B[7] & Add_ctrl & SUM[7]) | 
                  (A[7] & ~B[7] & ~Add_ctrl & ~SUM[7]) | (~A[7] & B[7] & ~Add_ctrl & SUM[7]);       
             
endmodule