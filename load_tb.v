`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2021 07:23:09 PM
// Design Name: 
// Module Name: load_tb
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


module load_tb();

reg clk;
reg [31:0] read1;
reg [31:0] immediate;
reg [31:0] load_value; 
reg read_en;

wire [31:0] dataAddr; 
wire [31:0] readData_reg; // wire to read data out from memory

    

load_store_instructions UUT (.clk(clk), 
.read1(read1), 
.immediate(immediate), 
.dataAddr_reg(dataAddr), 
.readData_reg(readData_reg),    
.readEn(read_en), 
.load_value(load_value)); 

    initial 
         begin   
            assign clk = 0; 
            assign read_en = 1;
          //  assign write_en = 0; 
            assign read1 = 32'h0000005C; //0x5C = 92
            assign immediate = 32'h00000004;// 0x4 = 4
            

            #10; 
            assign clk = 1;
            assign load_value = 32'h00000003; // assign 0x3 into memory at the data address (0x96)
            
            #10;
            assign clk = 0; 

            #10
            assign clk = 1; 
                        
            #10
            assign clk = 0;
            $finish;         
        end
        
                   
endmodule
