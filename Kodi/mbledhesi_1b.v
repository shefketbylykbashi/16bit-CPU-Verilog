`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 10:59:27
// Design Name: 
// Module Name: mbledhesi_1b
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


module mbledhesi_1b(
    input A,
    input B,
    input CIN,
    output COUT,
    output SHUMA
    );
    
    assign SHUMA = CIN ^ A ^ B;
    assign COUT = CIN & A | CIN & B | A & B;
endmodule