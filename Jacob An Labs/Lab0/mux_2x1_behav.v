`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 02:58:09 PM
// Design Name: 
// Module Name: mux_2x1_behav
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

module mux_2x1_behav(
input x, y, s,
output reg m // reg: assigned inside an always block
);
always @(*) begin
if (s) m = y;
else m = x; // every path assigns m -> no latch
end
endmodule
