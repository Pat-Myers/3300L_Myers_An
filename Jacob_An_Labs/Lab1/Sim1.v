`timescale 1ns / 1ps


module Simq();

//reg [3:0] x, y;
//reg [1:0] op_sel;
//wire [7:0] result;
//wire carryout,overflow;
//simple_calc uut(x,y,op_sel,result,carryout,overflow);
//initial begin
//x=4'b0110;y=4'b0011; op_sel = 2'b00;
//#1 op_sel = 2'b01;
//#1 op_sel = 2'b11;
//end




reg [3:0]m,q;
wire [7:0]p;
csa_multiplier uut(m,q,p);
initial begin
m=4'b0000;q=4'b0000;
#10 begin m=4'b1111; q=4'b1010; end
#10 begin m=4'b0101; q=4'b0101; end
#10 begin m=4'b1100; q=4'b1101; end
#10 begin m=4'b1111; q=4'b1010; end
#10 begin m=4'b1111; q=4'b1111; end
end
endmodule 
