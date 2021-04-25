`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2021 03:05:11 AM
// Design Name: 
// Module Name: store_tb
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


module store_tb();

reg clk; 
reg [31:0] read1; 
reg [31:0] immediate; 
reg [31:0] data_in; 
reg write_en;

wire [31:0] store_reg; // place to show what value was stored in memory
wire [31:0] dataAddr; 

  
load_store_instructions UUT (.clk(clk), 
.read1(read1), 
.immediate(immediate), 
.data_in(data_in),
.dataAddr_reg(dataAddr),     
.writeEn(write_en), 
.store_reg(store_reg)); 

    initial
        begin
            assign clk = 0; 
            assign write_en = 1; 
            assign read1 = 32'h00000005C; //0x5C = 92
            assign immediate = 32'h00000004; //0x4 = 4
            assign data_in = 32'h00000007; //0x7 = 7
            
            
            #10; 
            assign clk = 1;
            
            #10;
            assign clk = 0; 

            #10
            assign clk = 1; 
                        
            #10
            assign clk = 0;
            $finish;         
        end
        
                   
endmodule
