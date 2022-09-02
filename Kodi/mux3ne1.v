`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 22:09:02
// Design Name: 
// Module Name: mux3ne1
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


module mux3ne1(
    input[15:0] Hyrja0, //operacionet e ALU1b
    input[15:0] Hyrja1, //SLTI
    input[15:0] Hyrja2, //MOD
    input[2:0] S,
    output[15:0] Dalja
    );
    
  // s 000 h0  ANDI
  // s 001 h1  SLTI
  // s 010 h2  ORI
 // s 011 h3  XOR
 // s 100 h4  SUB
 // s 101 h5  ADDI
 // s 110 h6  LESS
 // s 111 h7  MOD 
 
assign Dalja = S[2] ? ( S[1] ? ( S[0] ? Hyrja2 : Hyrja0) : ( S[0] ? Hyrja0 : Hyrja0)) : (S[1] ? (S[0] ? Hyrja0 : Hyrja0) : (S[0] ? Hyrja1 : Hyrja0));
  
endmodule
