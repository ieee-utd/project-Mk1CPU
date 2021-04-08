`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 01:50:31 AM
// Design Name: 
// Module Name: if_id
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


module if_id(
    input wire [31:0] instr_in,
    input wire [31:0] npc_in,
    output reg [31:0] instr_out,
    output reg [31:0] npc_out
    );
    initial
    begin
    instr_out <=0;
    npc_out <= 0;
    end
    
    always @ (*)
    begin
    
    #1
    instr_out <= instr_in;
    npc_out <= npc_in;
    
    end
    
endmodule
