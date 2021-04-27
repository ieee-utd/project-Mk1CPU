`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 01:35:41 AM
// Design Name: 
// Module Name: instruction_mem
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


module instruction_mem(
    input [31:0] addr,
    output reg [31:0] data
    );
    reg [31:0] MEM[0:127];
    
    initial
    begin
    MEM[0]<='hA00000AA;
    MEM[1]<='h10000011;
    MEM[2]<='h20000022;
    MEM[3]<='h30000033;
    MEM[4]<='h40000044;
    MEM[5]<='h50000055;
    MEM[6]<='h60000066;
    MEM[7]<='h70000077;
    MEM[8]<='h80000088;
    MEM[9]<='h90000099;    
    end
    
    always @ (addr)
    begin
        data<=MEM[addr];
    end
    
    
endmodule
