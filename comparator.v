`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2021 06:22:25 PM
// Design Name: 
// Module Name: comparator
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


module comparator(input a, input b, output aLessThanB, output aEqualB, output aGreaterThanB);

assign aLessThanB = ~a & b;
assign aEqualB = ~((~a & b) | (a & ~b));
assign aGreaterThanB = a & ~b;

endmodule
