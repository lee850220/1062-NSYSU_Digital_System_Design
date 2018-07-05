`timescale 1ns / 1ns
`include "HW3_syn.v"
`include "/data/software/PROCESS/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v"

module tb_HW3_syn;
    
    //Inputs
    reg clk, reset;
    //Outputs
    wire HGS, HGL, HGR, HY, HR, FG, FY, FR;
    
    traffic_light TL (
        .HGS(HGS),
        .HGL(HGL), 
        .HGR(HGR), 
        .HY(HY), 
        .HR(HR), 
        .FG(FG), 
        .FY(FY), 
        .FR(FR), 
        .clk(clk), 
        .reset(reset)
        );
                                                                                                    
    
    initial begin
        clk = 1'b0;
        reset = 1'b0;
    end
    
    always begin
        #10 clk = ~clk;
    end
        
    initial begin
        #20 reset = 1'b1;
        #40 reset = 1'b0;
        #1200 $finish;
    end
    
    initial begin
        $dumpfile("HW3_syn.vcd");
        $dumpvars;
    end
    
    initial $sdf_annotate("HW3_syn.sdf", TL);
    
endmodule     