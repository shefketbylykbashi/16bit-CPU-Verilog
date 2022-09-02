`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 11:22:19
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [2:0] OPCODE,
    output reg RegDst,
    output reg Branch,
    output reg RegWrite,
    output reg MemToReg,
    output reg MemRead,
    output reg MemWrite,
    output reg ALUSrc,
    output reg [1:0] ALUOp
    );
    
  always @(OPCODE)
  begin
  case(OPCODE)
  3'b000:  //R-Format
  begin
  assign RegDst = 1'b1;
  assign ALUSrc = 1'b0;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b1;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b10;
  assign Branch = 1'b0;
  end
  
  3'b001:  //ANDI
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b1;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b1;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b11;
  assign Branch = 1'b0;
  end
 
 
  3'b010:  //ORI
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b1;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b1;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b11;
  assign Branch = 1'b0;
  end 
  
  3'b011:  //ADDI
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b1;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b1;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b11;
  assign Branch = 1'b0;
  end
  
  3'b100:  //SLTI
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b1;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b1;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b11;
  assign Branch = 1'b0;
  end
  
  
  3'b101:  //LW
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b1;
  assign MemToReg = 1'b1;
  assign RegWrite = 1'b1;
  assign MemRead = 1'b1;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b00;
  assign Branch = 1'b0;
  end
  
  3'b110:  //SW
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b1;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b0;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b1;
  assign ALUOp = 2'b00;
  assign Branch = 1'b0;
  end

  3'b111:  //BNE
  begin
  assign RegDst = 1'b0;
  assign ALUSrc = 1'b0;
  assign MemToReg = 1'b0;
  assign RegWrite = 1'b0;
  assign MemRead = 1'b0;
  assign MemWrite = 1'b0;
  assign ALUOp = 2'b01;
  assign Branch = 1'b1;
  end
  
endcase
end
endmodule