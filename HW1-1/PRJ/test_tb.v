`timescale 1ns / 1ns
`include "test.v"
module test_test;
	// Inputs
	reg [7:0]A;
	reg [7:0]B;
	reg Add_ctrl;
	// Outputs
	wire [7:0]SUM;
	wire C_out;
    //wire Overflow;
	// Instantiate the Unit Under Test (UUT)
	
    test uut (
		.A(A),
		.B(B),
		.ctrl(Add_ctrl),
		.S(SUM),
		.Cout(C_out)
        //.Overflow(Overflow)
	);
    
	initial begin
        //3 + (-1)
		A = 8'b00000011;
		B = 8'b11111111;
        Add_ctrl = 1;
		#20;
        //(-6) + (-4)
        A = 8'b11111010;
		B = 8'b11111100;             
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
    $monitor($time, " gate level: A=%b B=%b Add_ctrl=%b SUM=%b", A,B,Add_ctrl,SUM);
    
    initial 
        begin
        $dumpfile("test_sim.vcd");
        $dumpvars;
        end

endmodule

