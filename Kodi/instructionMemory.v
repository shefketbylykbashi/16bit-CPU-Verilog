`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 11:26:44
// Design Name: 
// Module Name: instructionMemory
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


module instructionMemory(
     input[15:0] PC, 
     output[15:0] Instruction
   );

     reg[7:0] iMem[127:0];

     initial $readmemb("InstMemory.mem", iMem);

     assign Instruction = {iMem[PC], iMem[PC+1]};

endmodule
