`timescale 1ns / 1ps

module halfadder(x,y,s,c);
input x,y;
output s,c;
xor(s,x,y);
and(c,x,y);
endmodule
