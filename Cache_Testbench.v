`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2021 10:14:02 PM
// Design Name: 
// Module Name: Cache_Testbench
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


module Cache_Testbench;


reg clk; 
reg [1023:0] dataIn;
reg control;
reg [31:0] addr;
reg [7:0] progInput;
wire [7:0] dataOut;
wire [1023:0] memOut;
wire hit;

Cache_Source UUT (clk,dataIn,control,addr,progInput,dataOut,memOut,hit);
    initial 
    begin
        #200;
        assign clk = 0; 
        assign addr =4294967295'h00000000;
        assign control = 1;
        assign dataIn = 3'h01;
        assign progInput = 2'h00;
        #200;
        assign clk = 1; 
        
        #200;
        assign clk = 0; 
        assign addr =4294967295'h00000008;
        assign control = 1;
        assign dataIn = 3'h02;
        assign progInput = 2'h00;
        #200;
        assign clk = 1; 
        
        #200;
        assign clk = 0;  
        assign addr = 4294967295'h000003FF;
        assign control = 1;
        assign dataIn = 3'h03;
        assign progInput = 2'h00;
        #200;
        assign clk = 1; 
        
        #200;
        assign clk = 0; 
        assign addr = 4294967295'h00000400;
        assign control = 1;
        assign dataIn = 3'h04;
        assign progInput = 2'h00;
        #200;
        assign clk = 1; 
        
        #200;
        assign clk = 0; 
        assign addr = 4294967295'h00001400;
        assign control = 1;
        assign dataIn = 3'h05;
        assign progInput = 2'h00;
        #200;
        assign clk = 1; 
        
        $finish;       
end
endmodule
