`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 19:24:57
// Design Name: 
// Module Name: InstMemory_Test
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


module InstMemory_Test();


reg[15:0] PC;
wire[15:0] Instruction;

initial
begin
#0 PC = 16'd9;
end

instructionMemory IM(PC, Instruction);
endmodule
