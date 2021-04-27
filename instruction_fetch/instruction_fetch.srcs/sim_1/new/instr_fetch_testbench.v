`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 02:04:52 AM
// Design Name: 
// Module Name: instr_fetch_testbench
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


module instr_fetch_testbench(
    );
    reg ex_mem_pc;
    reg [31:0] ex_mem_npc;
    wire [31:0] if_id_instr;
    wire [31:0] if_id_npc;
    
    instruction_fetch uut(.ex_mem_pc(ex_mem_pc),
                          .ex_mem_npc(ex_mem_npc),
                          .if_id_instr(if_id_instr),
                          .if_id_npc(if_id_npc));
                          
    initial
    begin
        ex_mem_npc=0;
        ex_mem_pc=0;
        #9
        ex_mem_pc=1;
        ex_mem_npc=5;
        #1
        ex_mem_pc=0;
        #10
        $stop;
    end
    
endmodule
