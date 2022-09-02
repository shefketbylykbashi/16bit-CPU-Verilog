`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 17:44:23
// Design Name: 
// Module Name: ALU_16b_Test
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


module ALU_16b_Test(

    );
    reg [15:0] A;
    reg [15:0] B;
    reg [2:0] ALUCtrl;          //2 bit 
    reg BNegate;
    wire Zero;
    wire Overflow;
    wire [15:0] REZ;
    wire CarryOut;
    

initial
$monitor("A=%d, B=%d,BNgate=%b , ALUCtrl=%b, Zero=%b,Overflow =%b ,REZ=%d, CarryOut=%b", A, B,  BNegate,ALUCtrl, Zero,Overflow, REZ, CarryOut);
initial
begin

//ADD
#0 A=16'd5; B=16'd5;ALUCtrl=3'b100;BNegate=1'b0;
#10 A=16'd6; B=16'd3;ALUCtrl=3'b100;BNegate=1'b0;

//SUB
#10 A=16'd5; B=16'd5;ALUCtrl=3'b100;BNegate=1'b1;
#10 A=16'd6; B=16'd3;ALUCtrl=2'b100;BNegate=1'b1;

//XOR
#0 A=16'd10; B=16'd20;ALUCtrl=3'b011;BNegate=1'b0;
#10 A=16'd10; B=16'd40;ALUCtrl=3'b011;BNegate=1'b0;
//AND
#10 A=16'd10; B=16'd10;ALUCtrl=3'b000;BNegate=1'b0;
#10 A=16'd40; B=16'd30;ALUCtrl=3'b000;BNegate=1'b0;

//OR
#10 A=16'd5; B=16'd5;ALUCtrl=3'b010;BNegate=1'b0;
#10 A=16'd6; B=16'd3;ALUCtrl=3'b010;BNegate=1'b0;
#10
$stop;
end
ALU_16b ALU16bitTest(A,B,BNegate,ALUCtrl,Zero,Overflow, REZ ,CarryOut);
endmodule