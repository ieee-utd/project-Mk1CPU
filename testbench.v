`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 07:15:08 PM
// Design Name: 
// Module Name: testbench
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

module testbench();
reg clk;
reg [15:0]operandA;
reg [15:0]operandB;
wire [15:0]A;
wire [15:0]B;
integer i;

swap UUT (clk,operandA,operandB,A,B);
initial 
begin
clk=0;
operandA=99;
operandB=64;

for(i=0;i<10;i=i+1)//5 simulated clock cycles
begin
#200;
clk=!clk;
end
$finish;

end
endmodule
