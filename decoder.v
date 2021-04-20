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


module decoder(input[5:0] aLessThanB, input[5:0] aEqualB, input[5:0] aGreaterThanB, output[5:0] blt, output[5:0] bgt, output[5:0] beq, output[5:0] ble, output[5:0] bge, output[5:0] bne);

assign blt = aLessThanB & ~aEqualB & ~aGreaterThanB;
assign bgt = ~aLessThanB & ~aEqualB & aGreaterThanB;
assign beq = ~aLessThanB & aEqualB & ~aGreaterThanB;
assign ble = aLessThanB & aEqualB & ~aGreaterThanB;
assign bge = ~aLessThanB & aEqualB & aGreaterThanB;
assign bne = aLessThanB & ~aEqualB & aGreaterThanB;

endmodule

