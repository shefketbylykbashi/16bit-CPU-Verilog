`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 12:18:18
// Design Name: 
// Module Name: CPU_test
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


module CPU_test();

reg Clock;

integer i;
initial
begin
for(i=0; i < 30; i=i+1) 
begin
#10 Clock = 0;
#10 Clock = 1;
end

#10 $stop;
end



CPU cpu16(Clock);
endmodule
