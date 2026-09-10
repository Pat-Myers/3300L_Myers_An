`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2026 02:06:47 PM
// Design Name: 
// Module Name: Mux_B
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Mux_a(x, y, s, m);
    input x,y,s;
    output m;
    
    assign m = x&~s | y&s;
    
endmodule

module Mux8b2to1(x, y, s, m);
    input [7:0]x, y;
    input s;
    output [7:0]m;
    
    Mux_a m0(x[0], y[0], s, m[0]);
    Mux_a m1(x[1], y[1], s, m[1]);
    Mux_a m2(x[2], y[2], s, m[2]);
    Mux_a m3(x[3], y[3], s, m[3]);
    Mux_a m4(x[4], y[4], s, m[4]);
    Mux_a m5(x[5], y[5], s, m[5]);
    Mux_a m6(x[6], y[6], s, m[6]);
    Mux_a m7(x[7], y[7], s, m[7]);
    
endmodule