`timescale 1ns / 1ps

module csa_multiplier(m,q,p);
input [3:0] m,q;
output [7:0] p;
wire [3:0] rc0, rc1, rc2;
wire [2:0] rs0, rs1;
wire [3:0] mq0, mq1, mq2, mq3;

mq_4bit i0mq(m, q[0], mq0);
mq_4bit i1mq(m, q[1], mq1);
mq_4bit i2mq(m, q[2], mq2);
mq_4bit i3mq(m, q[3], mq3);

assign p[0] = mq0[0];
fulladder r0p1(mq0[1], mq1[0], 1'b0,   p[1],   rc0[0]);
fulladder r0p2(mq0[2], mq1[1], mq2[0], rs0[0], rc0[1]);
fulladder r0p3(mq0[3], mq1[2], mq2[1], rs0[1], rc0[2]);
fulladder r0p4(1'b0,   mq1[3], mq2[2], rs0[2], rc0[3]);

fulladder r1p2(rc0[0], rs0[0], 1'b0,   p[2],   rc1[0]);
fulladder r1p3(rc0[1], rs0[1], mq3[0], rs1[0], rc1[1]);
fulladder r1p4(rc0[2], rs0[2], mq3[1], rs1[1], rc1[2]);
fulladder r1p5(rc0[3], mq2[3], mq3[2], rs1[2], rc1[3]);

fulladder r2p3(rs1[0], rc1[0], 1'b0,   p[3],   rc2[0]);
fulladder r2p4(rs1[1], rc1[1], rc2[0], p[4],   rc2[1]);
fulladder r2p5(rs1[2], rc1[2], rc2[1], p[5],   rc2[2]);
fulladder r2p6(mq3[3], rc1[3], rc2[2], p[6],   p[7]);
endmodule
