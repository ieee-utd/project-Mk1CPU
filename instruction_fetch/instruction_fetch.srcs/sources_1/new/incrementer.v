`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 01:35:41 AM
// Design Name: 
// Module Name: incrementer
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


module incrementer(
    input wire [31:0] pc_in,
    output wire [0:0] pc_out
    );
    
    assign pc_out=pc_in + 1;
endmodule
