`timescale 1ns / 1ps

module mux_2x1_simple(
input x, y, s,
output m
);
assign m = ~s & x | s & y; // equivalent: assign m = s ? y : x;
endmodule