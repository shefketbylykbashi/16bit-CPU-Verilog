`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 18:09:53
// Design Name: 
// Module Name: ALUControl_Test
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


module ALUControl_Test();
    reg [1:0] ALUOp; 
    reg [3:0] Funct;
    reg [2:0] OPCode;
    wire [3:0] ALUCtrl;
    

initial
begin
#0 ALUOp=2'b00; Funct = 4'bXXXX; OPCode = 3'BXXX;
#10 ALUOp=2'b01; Funct = 4'bXXXX; OPCode = 3'BXXX;
#10 ALUOp=2'b10; Funct = 4'b0000;OPCode = 3'BXXX; //ADD
#10 ALUOp=2'b10; Funct = 4'b0001;OPCode = 3'BXXX; //SUB
#10 ALUOp=2'b10; Funct = 4'b1101; OPCode = 3'BXXX; //XOR
#10 ALUOp=2'b11;Funct = 4'bXXXX; OPCode = 3'b001;//ANDI
#10 ALUOp=2'b11; Funct = 4'bXXXX;OPCode = 3'b010;//ORI
#10 ALUOp=2'b11; Funct = 4'bXXXX;OPCode = 3'b011;//ADDI

#10
$stop;
end
ALUControl ALUControlTest(ALUOp, Funct, OPCode,ALUCtrl);
endmodule
