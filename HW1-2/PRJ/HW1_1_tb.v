`timescale 1ns / 1ns
`include "HW1_1.v"
`include "HW1_1_syn.v"
`include "/data/software/PROCESS/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v" 

module test_HW1_1;
	// Inputs
	reg [7:0]A;
	reg [7:0]B;
	reg Add_ctrl;
	// Outputs
	wire [7:0]SUM;
    wire [7:0]SUM_syn;
	wire C_out;
    wire C_out_syn;
    wire Overflow;
    wire Overflow_syn;
	// Instantiate the Unit Under Test (UUT)
	
    HW1_1 uut (
		.A(A),
		.B(B),
		.Add_ctrl(Add_ctrl),
		.SUM(SUM),
		.C_out(C_out),
        .Overflow(Overflow)
	);
    
    HW1_1_syn uut2 (
		.A(A),
		.B(B),
		.Add_ctrl(Add_ctrl),
		.SUM(SUM_syn),
		.C_out(C_out_syn),
        .Overflow(Overflow_syn)
	);
    
	initial begin
        //(-6) + (-4)
        A = 8'b11111010;
		B = 8'b11111100;             
        Add_ctrl = 1;
        #20;
        //3 + (-1)
		A = 8'b00000011;
		B = 8'b11111111;
        Add_ctrl = 1;
		#20;
        //79 + 112
        A = 8'b01001111;
		B = 8'b01110000;             
        Add_ctrl = 1;
        #20;
        //(-2) - (-1)
        A = 8'b11111110;
		B = 8'b11111111;             
        Add_ctrl = 0;
        #20;
        //(-128) - 1
        A = 8'b10000000;
		B = 8'b00000001;             
        Add_ctrl = 0;
        #20;
        //64 - (-127)
        A = 8'b01000000;
		B = 8'b10000001;             
        Add_ctrl = 0;
        #20;
		
    $finish;
	end
    
    initial
    $monitor($time, " gate level: A=%b B=%b Add_ctrl=%b SUM=%b Overflow=%b\n\t\t\ \ \ \ \ syn version: A=%b B=%b Add_ctrl=%b SUM=%b Overflow=%b\n", A,B,Add_ctrl,SUM,Overflow,A,B,Add_ctrl,SUM_syn,Overflow_syn);
    
    initial 
        begin
        $dumpfile("HW1_1_syn_sim.vcd");
        $dumpvars;
        end
    
    initial $sdf_annotate("HW1_1_syn.sdf", uut2);

endmodule

