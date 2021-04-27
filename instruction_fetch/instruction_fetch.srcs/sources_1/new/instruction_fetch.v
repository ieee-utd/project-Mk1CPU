`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 01:35:41 AM
// Design Name: 
// Module Name: instruction_fetch
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


module instruction_fetch(
    input ex_mem_pc,
    input wire [31:0] ex_mem_npc,
    output wire [31:0] if_id_instr,
    output wire [31:0] if_id_npc
    );
    
    wire [31:0] pc;
    wire [31:0] dataout;
    wire [31:0] npc, npc_mux;
    
    mux_if mux (.s0(npc),
                .s1(ex_mem_npc),
                .select(ex_mem_pc), 
                .npc(npc_mux));
                
    counter prog_count (.pc_out(pc),
                        .npc(npc_mux));
    
    instruction_mem mem (.data(dataout), 
                         .addr(pc));
    
    if_id if_id_1 (.instr_out(if_id_instr), 
                   .npc_out(if_id_npc), 
                   .instr_in(dataout),
                   .npc_in(npc));
    
    incrementer increment (.pc_out(npc),
                           .pc_in(pc));
    
endmodule
