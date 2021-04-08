`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 01:35:41 AM
// Design Name: 
// Module Name: mux_if
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


module mux_if(
    input [31:0] s0,
    input [31:0] s1,
    input select,
    output [31:0] npc
    );
    assign npc = select > 0 ? s1 : s0;
    
endmodule
