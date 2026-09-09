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

module Mux3b2to1(x, y, s, m);
    input [2:0]x, y;
    input s;
    output [2:0]m;
    
    Mux_a m0(x[0], y[0], s, m[0]);
    Mux_a m1(x[1], y[1], s, m[1]);
    Mux_a m2(x[2], y[2], s, m[2]);
     
endmodule

module Mux3b4to1(x, y, z, w, s, M, si);
    input [2:0]x, y, z, w;
    input [1:0]s;
    output [2:0]M;
    output [1:0]si;
    
    wire [2:0]m1, m2;
    
    assign s = si;
    Mux3b2to1 M0(x, y, s[0], m1);
    Mux3b2to1 M1(z, w, s[0], m2);
    Mux3b2to1 M2(m1, m2, s[1],M);
    
endmodule