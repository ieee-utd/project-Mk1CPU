`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2021 08:10:07 PM
// Design Name: 
// Module Name: decoder
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


module decoder(input aLessThanB, input aEqualB, input aGreaterThanB, output blt, output bgt, output beq, output ble, output bge, output bne);

assign blt = aLessThanB & ~aEqualB & ~aGreaterThanB;
assign bgt = ~aLessThanB & ~aEqualB & aGreaterThanB;
assign beq = ~aLessThanB & aEqualB & ~aGreaterThanB;
assign ble = aLessThanB & aEqualB & ~aGreaterThanB;
assign bge = ~aLessThanB & aEqualB & aGreaterThanB;
assign bne = aLessThanB & ~aEqualB & aGreaterThanB;

endmodule

