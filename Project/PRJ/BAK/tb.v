`timescale 1ns/10ps
`include "/data/software/PROCESS/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v" 
`include "modules.v"

module TopTB;

    parameter TCLK = 10;
    reg clk;

    reg signed [15:0] x, y;
    wire signed [31:0] res;
    wire signed [31:0] res_check;

    initial clk = 1'b0;
    always #(TCLK / 2) clk = ~clk;

    reg signed [31:0] res_check1, res_check2, res_check3;
    reg [5:0] counter;
    initial counter = 0;
    
    always @ (posedge clk) begin
        $display("a = %d, b = %d, a * b = %d, correct = %d, %d", x, y, res, res_check, res == res_check);
        $display("a = %b", x);
        $display("b = %b", y);
        $display("a * b = %b", res);
        $display("Correct %b", res_check);
        $display("Sub     %b\n", res - res_check);
        res_check1 <= res_check;
        res_check2 <= res_check1;
        res_check3 <= res_check2;
        if (res != res_check)
            counter <= counter + 1;
    end

    initial begin
        repeat(200) begin
            x = {$random} % 17'h10000;
            y = {$random} % 17'h10000;
            #TCLK ;
        end
        $finish;
    end

    Top multiplier_test (
        .X (x),
        .Y (y),
        .R (res)
    );

    MulCheck multiplier_check0 (
        .a(x),
        .b(y),
        .p(res_check)
    );

endmodule