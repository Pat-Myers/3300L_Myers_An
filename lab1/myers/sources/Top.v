`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2026 02:39:55 PM
// Design Name: 
// Module Name: Top
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


module Top(X, Y, op_sel, result, carry_out, overflow);
input [3:0] X, Y;
input [1:0] op_sel;
output [7:0] result;
output carry_out, overflow;

wire [7:0] AS, prod;
wire [3:0] as;

assign AS = {4'b0000, as};
adder_subtractor addsub(X, Y, op_sel[0], as, carry_out, overflow);
csa_multiplier mult(X, Y, prod);
Mux8b2to1 F_sel(AS, prod, op_sel[1], result);

endmodule
