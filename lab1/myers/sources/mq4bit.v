`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2026 01:25:47 PM
// Design Name: 
// Module Name: mq4bit
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


module mq4bit(m, q, mq);
input [3:0] m;
input q;
output [3:0] mq;

assign mq = m & {4{q}};

/*generate
    genvar k;
    
    for (k = 0; k < 4; k = k+1)
        begin:multiplybits
            assign mq[k] = m[k] & q;
        end
    endgenerate*/
endmodule
