`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2026 02:31:39 PM
// Design Name: 
// Module Name: csa_multiplierSIM
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


module csa_multiplierSIM;
reg [3:0]m, q;
wire [7:0]p;

csa_multiplier uut(m, q, p);
initial 
    begin
        #60 $finish; 
    end
initial
    begin
        m = 4'd0; q = 4'd10;
        #10 m = 4'd5; q = 4'd5;
        #10 m = 4'd9;
        #10 m = 4'd12; q = 4'd13;
        #10 m = 4'd15; q = 4'd10;
        $finish;
    end

endmodule
