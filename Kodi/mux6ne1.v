`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 23:17:29
// Design Name: 
// Module Name: mux6ne1
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


module mux6ne1(
  input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input Hyrja4,
    input Hyrja5,
    input [2:0] S,
    output Rez
    );
    
assign Rez = S[2]?(S[1]?(S[0]?Hyrja4:Hyrja5):(S[0]?Hyrja2:Hyrja2)):(S[1]?(S[0]?Hyrja3:Hyrja1):
(S[0]?Hyrja2:Hyrja0));
    
endmodule
