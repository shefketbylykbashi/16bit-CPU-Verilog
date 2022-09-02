`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 17:20:03
// Design Name: 
// Module Name: ALU_1b_Test
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


module ALU_1b_Test(

    );
    reg A,B,CIN,BInvert,LESS;
    reg [2:0] ALUCtrl;
    wire REZ, COUT;

initial
$monitor("A=%b, B=%b, CIN=%b, BInvert=%b, LESS=%b, ALUCtrl=%b, REZ=%b, COUT=%b", A,B,CIN,BInvert,LESS, ALUCtrl, REZ, COUT);

initial 
begin
#0 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; LESS = 1'b0; ALUCtrl = 3'b000; //and
#5 A=1'b1; B=1'b0; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; ALUCtrl = 3'b010; //or
#5 A=1'b1; B=1'b0; CIN=1'b0; BInvert=1'b1; LESS = 1'b0; ALUCtrl = 3'b110; //sub 
#5 A=1'b1; B=1'b0; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; ALUCtrl = 3'b011; //xor
#5 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; ALUCtrl = 3'b100; //mod
#5 $stop;
end

ALU_1b alu(
     A,
     B,
     CIN,

     BInvert,
     LESS,
     ALUCtrl,
     REZ,
     COUT
    );
endmodule
