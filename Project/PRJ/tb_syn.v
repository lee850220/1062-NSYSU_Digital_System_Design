`timescale 1ns/10ps
`include "multiplier_syn.v"
`include "/data/software/PROCESS/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v" 


module TopTB;

    parameter TCLK = 1.66;
    reg clk, rst; 
    reg [7:0] cnt;
    wire valid, ready;

    reg signed [15:0] X, Y;
    wire signed [31:0] R;

    initial clk = 1'b0;
    initial cnt = 0;
    always #(TCLK / 2) clk = ~clk;

    
    always @ (posedge ready) begin
        /* random generate */
        if (cnt > 6) begin
            X = {$random} % 17'h10000;
            Y = {$random} % 17'h10000;
        end
        /* multiply 0 */
        else if (cnt > 0) begin
            X = {$random} % 17'h10000;
            Y = 0;
            cnt = cnt + 1;
        end
        /* large value */
        else begin
            X = -32767;
            Y = -32767;
            cnt = cnt + 1;
        end
        $display("a = %d, b = %d, a * b = %d", X, Y, R);
        $display("a = %b", X);
        $display("b = %b", Y);
        $display("a * b = %b\n", R);
    end

    initial begin
        rst = 0;
        #TCLK;
        rst = 1;
        #TCLK;
        repeat(1000) begin
            #TCLK ;
        end
        $finish;
    end

    initial begin
        $dumpfile("tb_syn.vcd");
        $dumpvars;
    end

    multiplier test (ready, valid, R, X, Y, clk, rst);

    initial $sdf_annotate("multiplier_syn.sdf", test);

endmodule