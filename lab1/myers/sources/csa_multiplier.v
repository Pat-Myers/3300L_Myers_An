`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2026 01:19:28 PM
// Design Name: 
// Module Name: csa_multiplier
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


module csa_multiplier(factor1, factor2, product);
input [3:0] factor1, factor2;
output [7:0]product;

wire [3:0] rc0, rc1, rc2;
wire [2:0] rs0, rs1;
wire [3:0] mq0, mq1, mq2, mq3;

mq4bit i0mq(factor1, factor2[0], mq0);
mq4bit i1mq(factor1, factor2[1], mq1);
mq4bit i2mq(factor1, factor2[2], mq2);
mq4bit i3mq(factor1, factor2[3], mq3);

//row 1
assign product[0]= mq0[0];
full_adder r0_0(mq1[0], mq0[1], 1'b0, product[1], rc0[0]);
full_adder r0_1(mq1[1], mq0[2], mq2[0], rs0[0], rc0[1]);
full_adder r0_2(mq1[2], mq0[3], mq2[1], rs0[1], rc0[2]);
full_adder r0_3(mq1[3], 1'b0, mq2[2], rs0[2], rc0[3]);

//row 2
full_adder r1_0(rs0[0], 1'b0, rc0[0], product[2], rc1[0]);
full_adder r1_1(rs0[1], mq3[0], rc0[1], rs1[0], rc1[1]);
full_adder r1_2(rs0[2], mq3[1], rc0[2], rs1[1],rc1[2]);
full_adder r1_3(mq2[3], mq3[2], rc0[3], rs1[2], rc1[3]);

//row 3
full_adder r2_0(rc1[0], rs1[0], 1'b0, product[3], rc2[0]);
full_adder r2_1(rc1[1], rs1[1], rc2[0], product[4], rc2[1]);
full_adder r2_2(rc1[2], rs1[2], rc2[1], product[5], rc2[2]);
full_adder r2_3(rc1[3], mq3[3], rc2[2], product[6], product[7]);
endmodule
