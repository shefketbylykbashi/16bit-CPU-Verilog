`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 11:31:03
// Design Name: 
// Module Name: DataPath
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


module DataPath(

input Clock, 
input RegDst,
input Branch,
input MemRead,
input MemWrite, 
input RegWrite,
input MemToReg,
input ALUSrc, 
input [1:0] ALUOp, 
output [2:0] opcode 
);


reg[15:0] pc_initial;
wire [15:0] pc_next;
wire[15:0] pc2;
wire[15:0] pcbeq;

wire [15:0] instruction;
wire [2:0] mux_regfile;
wire[15:0] readData1;
wire[15:0] readData2;
wire[15:0] writeData;
wire[15:0]  mux_ALU;
wire[15:0] ALU_Out;
wire[15:0] Zgjerimi;
wire[15:0] memToMux;
wire[15:0] shifter2bne, branchAdderToMux, bneAddress;  
wire[3:0] ALUCtrl;
wire zerof, overflow, carryout; 
wire andMuxBranch; 

initial
begin
    pc_initial = 16'd10; 
end

always@(posedge Clock)
begin
    pc_initial <= pc_next; 
    
end

assign pc2 = pc_initial + 2; 

assign shifter2beq = {{6{instruction[7]}}, instruction[7:0], 2'b00};

instructionMemory iMem(pc_initial, instruction); 

assign mux_regfile = (RegDst == 1'b1) ? instruction[6:4] : instruction[9:7]; 

assign Zgjerimi = {{8{instruction[7]}}, instruction[7:0]};  

RegisterFile RF(instruction[12:10], instruction[9:7], mux_regfile, RegWrite, Clock, writeData, readData1, readData2 ); 

assign mux_ALU = (ALUSrc == 1'b1) ? Zgjerimi : readData2; 

ALUControl AC(ALUOp, instruction[3:0], instruction[15:13], ALUCtrl); 

ALU_Extra ALU(readData1, mux_ALU, ALUCtrl[3], ALUCtrl[2:0], zerof,overflow ,ALU_Out, carryout);

DataMemory dataMem(ALU_Out, readData2, MemWrite, MemRead, Clock, memToMux);

assign writeData = (MemToReg == 1'b1) ? memToMux : ALU_Out;

assign andMuxBranch = ~(zerof & Branch);

assign beqAddress = pc2 + shifter2beq; 

assign pcbeq = (andMuxBranch == 1'b1) ? beqAddress : pc2;

assign pc_next = pcbeq;

assign opcode = instruction[15:13];

endmodule
