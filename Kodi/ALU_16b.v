`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 11:06:14
// Design Name: 
// Module Name: ALU_16b
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


module ALU_16b(
    input [15:0] A,
    input [15:0] B,
    input BNegate,
    input [2:0] ALUCtrl,
    output Zero,
    output Overflow,
    output [15:0] REZ,
    output CarryOut
    );

    wire [14:0] COUT;
    ALU_1b ALU0 (A[0], B[0], BNegate, BNegate, REZ[15], ALUCtrl, REZ[0], COUT[0]);
    ALU_1b ALU1 (A[1], B[1], COUT[0], BNegate, 1'b0, ALUCtrl, REZ[1], COUT[1]);
    ALU_1b ALU2 (A[2], B[2], COUT[1], BNegate, 1'b0, ALUCtrl, REZ[2], COUT[2]);
    ALU_1b ALU3 (A[3], B[3], COUT[2], BNegate, 1'b0, ALUCtrl, REZ[3], COUT[3]);
    ALU_1b ALU4 (A[4], B[4], COUT[3], BNegate, 1'b0, ALUCtrl, REZ[4], COUT[4]);
    ALU_1b ALU5 (A[5], B[5], COUT[4], BNegate, 1'b0, ALUCtrl, REZ[5], COUT[5]);
    ALU_1b ALU6 (A[6], B[6], COUT[5], BNegate, 1'b0, ALUCtrl, REZ[6], COUT[6]);
    ALU_1b ALU7 (A[7], B[7], COUT[6], BNegate, 1'b0, ALUCtrl, REZ[7], COUT[7]);
    ALU_1b ALU8 (A[8], B[8], COUT[7], BNegate, 1'b0, ALUCtrl, REZ[8], COUT[8]);
    ALU_1b ALU9 (A[9], B[9], COUT[8], BNegate, 1'b0, ALUCtrl, REZ[9], COUT[9]);
    ALU_1b ALU10 (A[10], B[10], COUT[9], BNegate, 1'b0, ALUCtrl, REZ[10], COUT[10]);
    ALU_1b ALU11 (A[11], B[11], COUT[10], BNegate, 1'b0, ALUCtrl, REZ[11], COUT[11]);
    ALU_1b ALU12 (A[12], B[12], COUT[11], BNegate, 1'b0, ALUCtrl, REZ[12], COUT[12]);
    ALU_1b ALU13 (A[13], B[13], COUT[12], BNegate, 1'b0, ALUCtrl, REZ[13], COUT[13]);
    ALU_1b ALU14 (A[14], B[14], COUT[13], BNegate, 1'b0, ALUCtrl, REZ[14], COUT[14]);
    ALU_1b ALU15 (A[15], B[15], COUT[14], BNegate, 1'b0, ALUCtrl, REZ[15], CarryOut);

    assign Zero = ~ (
        REZ[0] | REZ [1] | REZ[2] | REZ[3] |
        REZ[4] | REZ [5] | REZ[6] | REZ[7] |
        REZ[8] | REZ [9] | REZ[10] | REZ[11] |
        REZ[12] | REZ [13] | REZ[14] | REZ[15]);

    assign Overflow = COUT[14] ^ CarryOut;

endmodule