`timescale 1ns / 1ns

module traffic_light (
    output HGS, HGL, HGR, HY, HR, FG, FY, FR,
    input clk, reset    
    );
    
    wire [1:0] ST_connect, T_connect;
    
    controller Controller (
        .HGS(HGS),
        .HGL(HGL), 
        .HGR(HGR), 
        .HY(HY), 
        .HR(HR), 
        .FG(FG), 
        .FY(FY), 
        .FR(FR), 
        .ST_out(ST_connect), 
        .Trigger(T_connect),  
        .clk(clk), 
        .reset(reset)
        );
                                                                                                    
    counter Counter (
        .Trigger_out(T_connect),
        .clk(clk),
        .reset(reset),
        .ST(ST_connect)
        );
endmodule

module controller (
    output HGS, HGL, HGR, HY, HR, FG, FY, FR, 
    output reg[1:0] ST_out,
    input [1:0]Trigger,
    input clk, reset
    );
    
    reg[1:0] ST; // state & nxt state 
    reg[2:0] state, nxt_state;
    
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;
    parameter TL = 2'b11, TN = 2'b10, TS = 2'b01;
    assign HGS = (state == S0);
    assign HGL = (state == S4);
    assign HGR = (state == S0);
    assign HY = (state == S1) || (state == S5);
    assign HR = (state == S2) || (state == S3) || (state == S4) || (state == S5);
    assign FG = (state == S2);
    assign FY = (state == S3);
    assign FR = (state == S0) || (state == S1) || (state == S4) || (state == S5);
    
    // flip-flops
    always @ (posedge clk or posedge reset)
        if (reset) // an asynchronuous reset                                                                                           
        begin
            state <= S0;
            ST_out <= 2'b00;
        end
        else begin
            state <= nxt_state;
            ST_out <= ST;
        end
    
    // Combinational circuit
    always @ (state or Trigger)                                                                                             
        case (state) // state transition
            S0: if (Trigger == TL) begin
                    nxt_state = S1;
                    ST = TS;
                end
                else begin
                    nxt_state = S0;
                    ST = 2'b00;
                end
            S1: if (Trigger == TS) begin
                    nxt_state = S4;
                    ST = TN;
                end
                else begin
                    nxt_state = S1;
                    ST = 2'b00;
                end
            S2: if (Trigger == TL) begin
                    nxt_state = S3;
                    ST = TS;
                end
                else begin
                    nxt_state = S2;
                    ST = 2'b00;
                end
            S3: if (Trigger == TS) begin
                    nxt_state = S0;
                    ST = TL;
                end
                else begin
                    nxt_state = S3;
                    ST = 2'b00;
                end
            S4: if (Trigger == TN) begin
                    nxt_state = S5;
                    ST = TS;
                end
                else begin
                    nxt_state = S4;
                    ST = 2'b00;
                end
            S5: if (Trigger == TS) begin
                    nxt_state = S2;
                    ST = TL;
                end
                else begin
                    nxt_state = S5;
                    ST = 2'b00;
                end
        endcase
        
endmodule

module counter (
    output reg [1:0]Trigger_out,
    input clk, reset,
    input [1:0] ST 
    );
    
    reg [5:0]count;
    reg [1:0]state;
    
    parameter L = 7, N = 5, S = 3;
    parameter TL = 2'b11, TN = 2'b10, TS = 2'b01;
    
    always @ (posedge clk) begin
        if (reset) begin
            count <= L;
            Trigger_out <= 2'b00; 
            state <= TL;
        end       
        else begin
            if (ST == 2'b00 && count != 0) begin
                count <= count - 1;
            end
            else begin
                state <= ST;
                case (ST)
                    TL: count <= L;
                    TN: count <= N;
                    TS: count <= S;
                endcase
            end
            
            if (count == 0) begin
                Trigger_out <= state;
            end
        end
    end
    
    
endmodule          
            
                                                                  