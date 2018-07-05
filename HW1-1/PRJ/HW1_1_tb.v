`timescale 1ns / 1ns
`include "HW1_1_RTL.v"
`include "HW1_1.v"
module test_HW1_1;
	// Inputs
	reg [7:0]A;
	reg [7:0]B;
	reg Add_ctrl;
	// Outputs
	wire [7:0]SUM;
    wire [7:0]SUM_RTL;
	wire C_out;
    wire C_out_RTL;
    wire Overflow;
    wire Overflow_RTL;
	// Instantiate the Unit Under Test (UUT)
	
    HW1_1 uut (
		.A(A),
		.B(B),
		.Add_ctrl(Add_ctrl),
		.SUM(SUM),
		.C_out(C_out),
        .Overflow(Overflow)
	);
    
    HW1_1_RTL uut2 (
        .A(A),
		.B(B),
		.Add_ctrl(Add_ctrl),
		.SUM(SUM_RTL),
		.C_out(C_out_RTL),
        .Overflow(Overflow_RTL)
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
    $monitor($time, " gate level: A=%b B=%b Add_ctrl=%b SUM=%b Overflow=%b\n\t\t\ \ \ \ \ RTL level: A=%b B=%b Add_ctrl=%b SUM=%b Overflow=%b\n", A,B,Add_ctrl,SUM,Overflow,A,B,Add_ctrl,SUM,Overflow);
    
    initial 
        begin
        $dumpfile("HW1_1_sim.vcd");
        $dumpvars;
        end

endmodule

