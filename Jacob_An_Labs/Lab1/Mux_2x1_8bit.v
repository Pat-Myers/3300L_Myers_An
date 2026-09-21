`timescale 1ns / 1ps


module Mux_2x1_8bit(A,B,S,f);
input [7:0] A,B;
input S;
output [7:0] f;
Mux_2x1_1bit mux0(A[0],B[0],S,f[0]);
Mux_2x1_1bit mux1(A[1],B[1],S,f[1]);
Mux_2x1_1bit mux2(A[2],B[2],S,f[2]);
Mux_2x1_1bit mux3(A[3],B[3],S,f[3]);
Mux_2x1_1bit mux4(A[4],B[4],S,f[4]);
Mux_2x1_1bit mux5(A[5],B[5],S,f[5]);
Mux_2x1_1bit mux6(A[6],B[6],S,f[6]);
Mux_2x1_1bit mux7(A[7],B[7],S,f[7]);
endmodule

module Mux_2x1_1bit(A,B,S,f);
input A, B, S;
output f;
assign f = S ? B : A;
endmodule 
