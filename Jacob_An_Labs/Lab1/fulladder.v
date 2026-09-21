`timescale 1ns / 1ps

module fulladder(X,Y,Cin,S,Cout);
input X,Y,Cin;
output S,Cout;
wire c1, s1, c2;
halfadder first(X,Y,s1,c1);
halfadder second(Cin,s1,S,c2);
or(Cout,c1,c2);
endmodule
