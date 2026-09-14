`timescale 1ns / 1ps

module mux_2x1_struct(
input x, y, s,
output m
);
wire ns, a0, a1; // internal nets between the gates
not g0(ns, s); // ns = ~s
and g1(a0, x, ns); // a0 = x & ~s
and g2(a1, y, s); // a1 = y & s
or g3(m, a0, a1); // m = a0 | a1
endmodule