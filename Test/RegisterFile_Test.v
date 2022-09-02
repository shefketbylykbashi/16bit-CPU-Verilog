`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 19:19:37
// Design Name: 
// Module Name: RegisterFile_Test
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


module RegisterFile_Test();

reg[2:0] RS, RT, RD;
reg RegWrite, Clock;
reg[15:0] WriteData;
wire[15:0] ReadRS, ReadRT;

initial
begin
#0 Clock=1'b0;
#5 RD=3'd2; WriteData = 16'd5; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite = 1'b0;
#5 RD=3'd3; WriteData = 16'd7; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite=1'b0;
#5 RS=3'd2; RT=3'd3;
#5 $stop;

end
RegisterFile RF(RS, RT, RD, RegWrite, Clock,WriteData, ReadRS, ReadRT);
endmodule
