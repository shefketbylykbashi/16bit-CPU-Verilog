`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 11:01:43
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(
        input[1:0] ALUOp, 
        input[3:0] Funct,
        input[2:0] OPCode,
        output reg[3:0] ALUCtrl
    );
    
   always @(ALUOp)
   begin 
   
   case(ALUOp)
   
   2'b00: assign ALUCtrl = 4'b0100; // ALUOp = 00 kur kemi LW ose SW -> kemi mbledhje   
   2'b01: assign ALUCtrl = 4'b1100; //ALUOp = 01 kur kemi BEQ ose BNE -> kemi zbritje
   
   2'b10:
   
   case(Funct)
   4'b0000: assign ALUCtrl = 4'b0100;// ADD
   4'b0001: assign ALUCtrl = 4'b1100; // SUB BNGATE 1
   4'b1101: assign ALUCtrl = 4'b0011;// XOR
   4'b0010: assign ALUCtrl = 4'b0111;// MOD
   endcase
   
   
   2'b11:
   
   case(OPCode)
   3'b001: assign ALUCtrl = 4'b0000;// ANDI
   3'b010: assign ALUCtrl = 4'b0010;// ORI
   3'b011: assign ALUCtrl = 4'b0101;// ADDI
   3'b100: assign ALUCtrl = 4'b0001;// SLTI  
   endcase
   
   endcase
   end
endmodule