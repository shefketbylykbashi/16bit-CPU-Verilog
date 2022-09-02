`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 11:04:25
// Design Name: 
// Module Name: ALU_1b
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


module ALU_1b(
    input A,
    input B,
    input CIN,
    input BInvert,
    input LESS,
    input [2:0] ALUCtrl,
    output REZ,
    output COUT
    );
    
    wire notB, mB, teliDHE, teliOSE, teliMBL, teliXOR, teliMOD;
    
    assign notB = ~B;
    
    mux2ne1 m2(B, notB, BInvert, mB);
    
    assign teliDHE = A & mB;
    assign teliOSE = A | mB;
    
    
    assign teliXOR = A ^ mB;
    assign teliDIV = A / mB;

    mbledhesi_1b mbledhesi(A, mB, CIN, COUT, teliMBL);
    
    
    mux6ne1 muxi(teliDHE, teliOSE, teliMBL, teliXOR, teliMOD, LESS, ALUCtrl, REZ);
endmodule
