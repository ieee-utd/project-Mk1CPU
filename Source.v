`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2021 05:25:40 PM
// Design Name: 
// Module Name: Cache_Source
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
/*  char - 1 byte
    int - 4 byte
    long int - 8 bytes 
    double - 8 bytes     */   
    

module Cache_Source( 
input clk, 
input [1023:0] dataIn,
input control,
input [31:0] addr,
input [7:0] progInput,
output reg[7:0] dataOut,
output  reg[1023:0] memOut,
output hit
 );
 
parameter BLOCK_SIZE = 1024; 
parameter NUM_BLOCKS = 4; 
reg [19:0] tag;
reg [1:0] index;
reg [9:0] offset;
reg [1023:0] RegisterFile1 [3:0];
reg [20:0] tagTable [3:0]; // first bit is going to be valid bit, the rest is tag
reg offsetInteger;
reg [7:0] dataOut1; 
reg [1023:0] memOut1; 
reg temp = 1; 
assign hit = 1;

reg [31:0] newAddr; 
always @ (posedge clk) 
begin
    tag <= addr [31:12];
    index <= addr [ 11: 10];
    offset <= addr [ 9: 0] ; 
    offsetInteger <= offset [ 9:0];

    if ( !(( tagTable [index][19:0] == tag [19:0] ) && (tagTable [index][20] == 1 )) ) 
    begin
          temp <= 0;
          if (tagTable [index][20] == 1 )
          begin
               newAddr <= tagTable [index][19:0] << 11 + ( index << 8 );
               memOut <= RegisterFile1 [index][1023:0]; 
          end 
          tagTable[index][20:0] <=  20'b10000000000000000000  +  tag[19:0];
          RegisterFile1[index][1023:0] <= dataIn [ 1023:0 ];
    end
    if ( control )    
    begin
               dataOut <= RegisterFile1[index][offsetInteger +: 8]; 
    end 
    else
    begin 
               RegisterFile1[index] [offsetInteger +: 8] <= progInput [7:0];
    end
end

    

endmodule