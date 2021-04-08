`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aadi Bhandary 
// 
// Create Date: 01/27/2021 01:17:27 PM
// Design Name: 
// Module Name: 
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

//This is the module for a full adder
module FullAdder(input A,input B, input Cin,output S,output Cout);
wire f1;
wire f2;
wire f3;
wire f4;
assign f1=A^B;
assign f2=f1&Cin;
assign f3=A&B;
assign S=f1^Cin;
assign Cout=f2|f3;
endmodule

//This circuit is not implemented, but it represents a switchable adder+subtractor
module EightBitAddAndSub(input [7:0]A,input [7:0]B, input Cin,output [7:0]S,output Cout);
wire f1;
wire f2;
wire f3;
wire f4;
wire f5;
wire f6;
wire f7;
FullAdder first(A[0],(B[0]^Cin),Cin,S[0],f1);
FullAdder second(A[1],(B[1]^Cin),f1,S[1],f2);
FullAdder third(A[2],(B[2]^Cin),f2,S[2],f3);
FullAdder fourth(A[3],(B[3]^Cin),f3,S[3],f4);
FullAdder fifth(A[4],(B[4]^Cin),f4,S[4],f5);
FullAdder sixth(A[5],(B[5]^Cin),f5,S[5],f6);
FullAdder seventh(A[6],(B[6]^Cin),f6,S[6],f7);
FullAdder eigth(A[7],(B[7]^Cin),f7,S[7],Cout);
endmodule

//This unit represents the 8 bit subtractor
module EightBitSub(input [7:0]A,input [7:0]B, input Cin,output [7:0]S);
wire f1;
wire f2;
wire f3;
wire f4;
wire f5;
wire f6;
wire f7;
wire f8;
FullAdder first(A[0],(B[0]^Cin),Cin,S[0],f1);
FullAdder second(A[1],(B[1]^Cin),f1,S[1],f2);
FullAdder third(A[2],(B[2]^Cin),f2,S[2],f3);
FullAdder fourth(A[3],(B[3]^Cin),f3,S[3],f4);
FullAdder fifth(A[4],(B[4]^Cin),f4,S[4],f5);
FullAdder sixth(A[5],(B[5]^Cin),f5,S[5],f6);
FullAdder seventh(A[6],(B[6]^Cin),f6,S[6],f7);
FullAdder eigth(A[7],(B[7]^Cin),f7,S[7],f8);
endmodule

//This unit represents the 8 bit adder
module EightBitAdd(input [7:0]A,input [7:0]B, input Cin,output [7:0]S,output Cout);
wire f1;
wire f2;
wire f3;
wire f4;
wire f5;
wire f6;
wire f7;
FullAdder first(A[0],B[0],Cin,S[0],f1);
FullAdder second(A[1],B[1],f1,S[1],f2);
FullAdder third(A[2],B[2],f2,S[2],f3);
FullAdder fourth(A[3],B[3],f3,S[3],f4);
FullAdder fifth(A[4],B[4],f4,S[4],f5);
FullAdder sixth(A[5],B[5],f5,S[5],f6);
FullAdder seventh(A[6],B[6],f6,S[6],f7);
FullAdder eigth(A[7],B[7],f7,S[7],Cout);
endmodule

//This unit represents the 8 bit multiplier
module EightBitMultiplier(input [7:0]A,input [7:0]B, input Cin,output [15:0]S);
wire [7:0]f1;
wire [7:0]f2;
wire [7:0]r1;

wire [7:0]f3;
wire [7:0]f4;
wire [7:0]r2;

wire [7:0]f5;
wire [7:0]f6;
wire [7:0]r3;

wire [7:0]f7;
wire [7:0]f8;
wire [7:0]r4;

wire [7:0]f9;
wire [7:0]f10;
wire [7:0]r5;

wire [7:0]f11;
wire [7:0]f12;
wire [7:0]r6;

wire [7:0]f13;
wire [7:0]f14;
wire [7:0]r7;

wire c[7:1];


assign S[0]=A[0]&B[0];
assign f1[0]=A[1]&B[0];
assign f1[1]=A[2]&B[0];
assign f1[2]=A[3]&B[0];
assign f1[3]=A[4]&B[0];
assign f1[4]=A[5]&B[0];
assign f1[5]=A[6]&B[0];
assign f1[6]=A[7]&B[0];
assign f1[7]=Cin;


assign f2[0]=A[0]&B[1];
assign f2[1]=A[1]&B[1];
assign f2[2]=A[2]&B[1];
assign f2[3]=A[3]&B[1];
assign f2[4]=A[4]&B[1];
assign f2[5]=A[5]&B[1];
assign f2[6]=A[6]&B[1];
assign f2[7]=A[7]&B[1];
EightBitAdd firstRow(f1,f2,Cin,r1,c[1]);
//First Row Complete

assign S[1]=r1[0];
assign f3[0]=r1[1];
assign f3[1]=r1[2];
assign f3[2]=r1[3];
assign f3[3]=r1[4];
assign f3[4]=r1[5];
assign f3[5]=r1[6];
assign f3[6]=r1[7];
assign f3[7]=c[1];

assign f4[0]=A[0]&B[2];
assign f4[1]=A[1]&B[2];
assign f4[2]=A[2]&B[2];
assign f4[3]=A[3]&B[2];
assign f4[4]=A[4]&B[2];
assign f4[5]=A[5]&B[2];
assign f4[6]=A[6]&B[2];
assign f4[7]=A[7]&B[2];
EightBitAdd secondRow(f3,f4,Cin,r2,c[2]);

assign S[2]=r2[0];
assign f5[0]=r2[1];
assign f5[1]=r2[2];
assign f5[2]=r2[3];
assign f5[3]=r2[4];
assign f5[4]=r2[5];
assign f5[5]=r2[6];
assign f5[6]=r2[7];
assign f5[7]=c[2];

assign f6[0]=A[0]&B[3];
assign f6[1]=A[1]&B[3];
assign f6[2]=A[2]&B[3];
assign f6[3]=A[3]&B[3];
assign f6[4]=A[4]&B[3];
assign f6[5]=A[5]&B[3];
assign f6[6]=A[6]&B[3];
assign f6[7]=A[7]&B[3];
EightBitAdd thirdRow(f5,f6,Cin,r3,c[3]);

assign S[3]=r3[0];
assign f7[0]=r3[1];
assign f7[1]=r3[2];
assign f7[2]=r3[3];
assign f7[3]=r3[4];
assign f7[4]=r3[5];
assign f7[5]=r3[6];
assign f7[6]=r3[7];
assign f7[7]=c[3];

assign f8[0]=A[0]&B[4];
assign f8[1]=A[1]&B[4];
assign f8[2]=A[2]&B[4];
assign f8[3]=A[3]&B[4];
assign f8[4]=A[4]&B[4];
assign f8[5]=A[5]&B[4];
assign f8[6]=A[6]&B[4];
assign f8[7]=A[7]&B[4];
EightBitAdd fourthRow(f7,f8,Cin,r4,c[4]);

assign S[4]=r4[0];
assign f9[0]=r4[1];
assign f9[1]=r4[2];
assign f9[2]=r4[3];
assign f9[3]=r4[4];
assign f9[4]=r4[5];
assign f9[5]=r4[6];
assign f9[6]=r4[7];
assign f9[7]=c[4];

assign f10[0]=A[0]&B[5];
assign f10[1]=A[1]&B[5];
assign f10[2]=A[2]&B[5];
assign f10[3]=A[3]&B[5];
assign f10[4]=A[4]&B[5];
assign f10[5]=A[5]&B[5];
assign f10[6]=A[6]&B[5];
assign f10[7]=A[7]&B[5];
EightBitAdd fifthRow(f9,f10,Cin,r5,c[5]);

assign S[5]=r5[0];
assign f11[0]=r5[1];
assign f11[1]=r5[2];
assign f11[2]=r5[3];
assign f11[3]=r5[4];
assign f11[4]=r5[5];
assign f11[5]=r5[6];
assign f11[6]=r5[7];
assign f11[7]=c[5];

assign f12[0]=A[0]&B[6];
assign f12[1]=A[1]&B[6];
assign f12[2]=A[2]&B[6];
assign f12[3]=A[3]&B[6];
assign f12[4]=A[4]&B[6];
assign f12[5]=A[5]&B[6];
assign f12[6]=A[6]&B[6];
assign f12[7]=A[7]&B[6];
EightBitAdd sixthRow(f11,f12,Cin,r6,c[6]);

assign S[6]=r6[0];
assign f13[0]=r6[1];
assign f13[1]=r6[2];
assign f13[2]=r6[3];
assign f13[3]=r6[4];
assign f13[4]=r6[5];
assign f13[5]=r6[6];
assign f13[6]=r6[7];
assign f13[7]=c[6];

assign f14[0]=A[0]&B[7];
assign f14[1]=A[1]&B[7];
assign f14[2]=A[2]&B[7];
assign f14[3]=A[3]&B[7];
assign f14[4]=A[4]&B[7];
assign f14[5]=A[5]&B[7];
assign f14[6]=A[6]&B[7];
assign f14[7]=A[7]&B[7];
EightBitAdd seventhRow(f13,f14,Cin,r7,c[7]);

assign S[7]=r7[0];
assign S[8]=r7[1];
assign S[9]=r7[2];
assign S[10]=r7[3];
assign S[11]=r7[4];
assign S[12]=r7[5];
assign S[13]=r7[6];
assign S[14]=r7[7];
assign S[15]=c[7];
endmodule

module EightBitAnd(input [7:0]A,input [7:0]B,output [7:0]R);
assign R[0]=A[0]&B[0];
assign R[1]=A[1]&B[1];
assign R[2]=A[2]&B[2];
assign R[3]=A[3]&B[3];
assign R[4]=A[4]&B[4];
assign R[5]=A[5]&B[5];
assign R[6]=A[6]&B[6];
assign R[7]=A[7]&B[7];
endmodule

module EightBitOr(input [7:0]A,input [7:0]B,output [7:0]R);
assign R[0]=A[0]|B[0];
assign R[1]=A[1]|B[1];
assign R[2]=A[2]|B[2];
assign R[3]=A[3]|B[3];
assign R[4]=A[4]|B[4];
assign R[5]=A[5]|B[5];
assign R[6]=A[6]|B[6];
assign R[7]=A[7]|B[7];
endmodule

//We combine all our sub modules into one ALU. It is 18 bits in length: 3 for control, 8 for operand 1 and 8 for operand 2. It returns 16 bits
//It also includes a single cycle multiplier just because
module ALU(input [18:0]inst,input clk,output reg [15:0]R);
//operands
wire [7:0]op1;
wire [7:0]op2;

assign op1[0]=inst[8];
assign op1[1]=inst[9];
assign op1[2]=inst[10];
assign op1[3]=inst[11];
assign op1[4]=inst[12];
assign op1[5]=inst[13];
assign op1[6]=inst[14];
assign op1[7]=inst[15];

assign op2[0]=inst[0];
assign op2[1]=inst[1];
assign op2[2]=inst[2];
assign op2[3]=inst[3];
assign op2[4]=inst[4];
assign op2[5]=inst[5];
assign op2[6]=inst[6];
assign op2[7]=inst[7];
//Results
wire [7:0]rAdd;
wire rCarry;
wire [7:0]rSub;
wire [15:0]rMul;
wire [7:0]rAnd;
wire [7:0]rOr;

EightBitAdd addBlock(op1,op2,inst[16],rAdd,rCarry);
EightBitSub subBlock(op1,op2,inst[16],rSub);
EightBitMultiplier mulBlock(op1,op2,inst[16],rMul);
EightBitAnd andBlock(op1,op2,rAnd);
EightBitOr orBlock(op1,op2,rOr);


//Things get funky here. We gotta initialize the branches 
always @ (posedge clk)begin

if((inst[18]==0)&(inst[17]==0)&(inst[16]==0))begin
    R[0]<=rAdd[0];
    R[1]<=rAdd[1];
    R[2]<=rAdd[2];
    R[3]<=rAdd[3];
    R[4]<=rAdd[4];
    R[5]<=rAdd[5];
    R[6]<=rAdd[6];
    R[7]<=rAdd[7];
    R[8]<=rCarry;
    R[9]<=0;
    R[10]<=0;
    R[11]<=0;
    R[12]<=0;
    R[13]<=0;
    R[14]<=0;
    R[15]<=0;
end
else if((inst[18]==0)&(inst[17]==0)&(inst[16]==1))begin
    R[0]<=rSub[0];
    R[1]<=rSub[1];
    R[2]<=rSub[2];
    R[3]<=rSub[3];
    R[4]<=rSub[4];
    R[5]<=rSub[5];
    R[6]<=rSub[6];
    R[7]<=rSub[7];
    R[8]<=0;
    R[9]<=0;
    R[10]<=0;
    R[11]<=0;
    R[12]<=0;
    R[13]<=0;
    R[14]<=0;
    R[15]<=0;
end
else if((inst[18]==0)&(inst[17]==1)&(inst[16]==0))begin
    R[0]<=rMul[0];
    R[1]<=rMul[1];
    R[2]<=rMul[2];
    R[3]<=rMul[3];
    R[4]<=rMul[4];
    R[5]<=rMul[5];
    R[6]<=rMul[6];
    R[7]<=rMul[7];
    R[8]<=rMul[8];
    R[9]<=rMul[9];
    R[10]<=rMul[10];
    R[11]<=rMul[11];
    R[12]<=rMul[12];
    R[13]<=rMul[13];
    R[14]<=rMul[14];
    R[15]<=rMul[15];
end
else if((inst[18]==0)&(inst[17]==1)&(inst[16]==1))begin
    R[0]<=rAnd[0];
    R[1]<=rAnd[1];
    R[2]<=rAnd[2];
    R[3]<=rAnd[3];
    R[4]<=rAnd[4];
    R[5]<=rAnd[5];
    R[6]<=rAnd[6];
    R[7]<=rAnd[7];
end
else if((inst[18]==1)&(inst[17]==0)&(inst[16]==0))begin
    R[0]<=rOr[0];
    R[1]<=rOr[1];
    R[2]<=rOr[2];
    R[3]<=rOr[3];
    R[4]<=rOr[4];
    R[5]<=rOr[5];
    R[6]<=rOr[6];
    R[7]<=rOr[7];
end

end

endmodule
