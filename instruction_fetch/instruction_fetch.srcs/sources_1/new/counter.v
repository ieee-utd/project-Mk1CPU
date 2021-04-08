`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 01:35:41 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input [31:0] npc,
    output reg [31:0] pc_out
    );
    
    initial
    begin
        pc_out<=0;
    end
    
    always @ (npc)
    begin
        #1
        pc_out<=npc;
    end
endmodule
