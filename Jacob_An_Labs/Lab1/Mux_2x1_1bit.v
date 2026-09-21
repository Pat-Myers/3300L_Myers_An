`timescale 1ns / 1ps

module Mux_2x1_1bit(a,b,s,f);
input a,b,s;
output f;
assign f = s ? b : a;
endmodule
