`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aadi Bhandary
// 
// Create Date: 01/27/2021 01:21:37 PM
// Design Name: 
// Module Name: testbench
// Project Name: ALU
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

//Just a test Bench that has operand 1 (85) and operand 2 (93)
module testbench();

reg [18:0]inst;
reg clk;
wire [15:0]R;

ALU UUT (inst,clk,R);
initial
begin
clk=0;
inst[18]=0;
inst[17]=1;
inst[16]=0;
inst[15]=0;
inst[14]=1;
inst[13]=0;
inst[12]=1;
inst[11]=0;
inst[10]=1;
inst[9]=0;
inst[8]=1;
inst[7]=0;
inst[6]=1;
inst[5]=0;
inst[4]=1;
inst[3]=1;
inst[2]=1;
inst[1]=0;
inst[0]=1;
#200;
clk=1;
#200;
$finish;
end 

endmodule