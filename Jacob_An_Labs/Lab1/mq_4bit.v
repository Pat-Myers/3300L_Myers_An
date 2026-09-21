`timescale 1ns / 1ps

module mq_4bit(m,q,mp);
input [3:0]m;
input q;
output [3:0]mp;
assign mp = m&{4{q}};
endmodule
