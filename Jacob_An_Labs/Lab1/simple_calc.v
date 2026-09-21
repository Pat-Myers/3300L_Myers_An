`timescale 1ns / 1ps

module simple_calc(x,y,op_sel,result,carry_out,overflow);
input [3:0] x,y;
input [1:0] op_sel;
output [7:0] result;
output carry_out, overflow;
wire [3:0] out;
wire [7:0] internalresult;

adder_subtractor add_sub(x,y,op_sel[0], out, carry_out, overflow);
csa_multiplier multiplier(x,y,internalresult);

Mux_2x1_8bit MainMux({4'b0000, out}, internalresult, op_sel[1], result); 
//assign result = internalresult;
/*always @(x,y,op_sel) begin
case(op_sel[1])
1'b1: begin assign result = internalresult; assign carry_out = 1'b0; assign overflow = 1'b0; end 
1'b0: begin assign result = {4'b0000, out}; assign carry_out = interalCout; assign overflow = internalOverflow; end
endcase
end*/


endmodule 