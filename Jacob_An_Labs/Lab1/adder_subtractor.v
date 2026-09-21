`timescale 1ns / 1ps

module adder_subtractor (X, Y, carryin, S, carryout, overflow);
    parameter  n = 4;
    input carryin;
    input [n-1:0] X, Y;
    output reg [n-1:0] S;
    output reg carryout, overflow;
    wire [n-1:0] switch;
    assign switch = Y^{n{carryin}};
    
    always @(X, Y, carryin)
    begin
    {carryout, S} = X + switch + carryin;
    overflow = (X[n-1] & switch[n-1] & ~S[n-1]) | (~X[n-1] & ~switch[n-1] & S[n-1]);
    end
endmodule
