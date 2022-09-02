`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 12:16:14
// Design Name: 
// Module Name: CPU
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


module CPU(
input Clock);


//TELAT E BRENDSHEM TE CPU, SHIH CPU.PDF
wire [2:0] opcode; //D_OUT_1
//CU_OUT_x
wire RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;
wire [1:0] ALUOp;

//inicializimi i Datapath    
DataPath DP
(
Clock,
RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc,
ALUOp,
opcode
);

//Inicializimi i COntrol Unit
ControlUnit CU(opcode,
RegDst,  
Branch,
RegWrite,
MemToReg,
MemRead, 
MemWrite, 
ALUSrc,
ALUOp
);

endmodule
