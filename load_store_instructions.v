`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2021 05:39:24 PM
// Design Name: 
// Module Name: load_instruction
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


module load_store_instructions(input clk,
    input [31:0] read1, 
    input [31:0] data_in, // data content to go to memory
    input [31:0] immediate, 
    input writeEn,
    input readEn,  
    input control_li,   // control signal for li instruction 
                    
    output reg [31:0] dataAddr_reg,  // register for data address (read1+immediate)
    output reg [31:0] readData_reg,  // register to read from memory to register file  
    output reg [31:0] read1_reg,  // read1 from register file
    output reg [31:0] data_in_reg, //data to write from reg file to memory
    output reg [31:0] immediate_reg,  // register to hold the immediate value   
    output reg [31:0] li_out,            //output for li
    input [31:0] load_value,     // represents value in memory address to go to register file in load instruction
    output reg [31:0] store_reg
    );
    
    reg zero_reg = 32'h00000000;  // $0 register w/ 32 bits of 0
    reg [31:0] mem [0:255]; //memory with 32 bits for each 256 rows
    integer i; 
     
    initial 
        begin
           for (i=0; i<256; i=i+1) //intialize memory to 0
                mem[i] = 32'b0; 
                               
            data_in_reg <= data_in; 
            read1_reg <= read1;
            immediate_reg <= immediate;
        end
 
    always @(posedge clk)
        begin
             //store 
            if (writeEn) // when write enable then put data into memory
                begin
                   dataAddr_reg = read1 + immediate;
	               mem[dataAddr_reg] <= data_in;
	               store_reg = mem[dataAddr_reg];   
                end
             
             //load   
            else if (readEn) // when read enable then read out data from memory to register file
                begin
                   dataAddr_reg = read1 + immediate;
                   mem[dataAddr_reg] = load_value; 
                   readData_reg <= mem[dataAddr_reg];              
                end
                
            // load immediate    
           else if (control_li) 
                begin
                li_out = zero_reg | immediate; 
                end
                   
        end
endmodule
