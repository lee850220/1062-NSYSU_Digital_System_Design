module test (
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output reg Cout,
    output reg [7:0]S
    );
    
    always@(A or B or ctrl)
        begin
        if(ctrl == 1)
            {Cout, S} = A + B;
        else
            {Cout, S} = A - B;
        end
endmodule
    