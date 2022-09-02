`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 22:01:53
// Design Name: 
// Module Name: ALU_Extra
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


module ALU_Extra(
    input [15:0] A,
    input [15:0] B,
    input BNegate,
    input [2:0] ALUCtrl,
    output Zero,
    output Overflow,
    output [15:0] REZ,
    output CarryOut
    );
    
    wire[15:0] operationrez;
    wire[15:0] slti_;
    wire[15:0] mod_;
    
    ALU_16b alu(A, B, BNegate, ALUCtrl, Zero, Overflow, operationrez, CarryOut);
    
    SLTI slti(A, B, slti_);
    MOD mod(A, B, mod_);
    
    mux3ne1 mux(operationrez, slti_, mod_, ALUCtrl, REZ);
    
endmodule
