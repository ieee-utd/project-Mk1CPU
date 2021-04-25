`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2021 12:54:11 AM
// Design Name: 
// Module Name: loadImmediate_tb
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


module loadImmediate_tb();
reg clk; 
reg control_li;
reg [31:0] immediate;

wire [31:0] li_out;

load_store_instructions UUT (.clk(clk), 
.control_li(control_li), 
.immediate(immediate),
.li_out(li_out)); 
    
    initial 
        begin
            assign clk = 0; 
            assign control_li = 1; 
            assign immediate = 32'h00000012; 
         
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
