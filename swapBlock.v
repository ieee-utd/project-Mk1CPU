`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 01:52:42 PM
// Design Name: 
// Module Name: swapBlock
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

module swap(input clk,input [15:0]operandA,input [15:0]operandB, output reg [15:0]A,output reg [15:0]B);
reg [15:0]temp=0;

always @(posedge clk)
begin
    if(temp==0)//Stage 1 of the swap instruction
    begin
    A=operandA;
    B=operandB;
    temp=operandA;
    end
    
    else if(temp==A)//Stage 2 of the swap instruction
    begin
    A=0;
    end
    
    else if(A==0)//Stage 3 of the swap instruction
    begin
    A=B;
    end
    
    else if(A==B)//Stage 4 of the swap instruction
    begin
    B=0;
    end
    
    else if(B==0)//Stage 5 of the swap instruction
    begin
    B=temp;
    end
    
    else if(B==temp)//Stage 6 of the swap instruction
    begin
    temp=0;
    end
end
endmodule

module loadWord(input clk,input active,input [15:0]in, output reg [15:0]R);
always @(posedge clk)
begin
if(active)begin
R=in|R;
end
else if(!active) begin//Destination would be Anded with 0 register to clear registers
R=0;
end
end
endmodule
