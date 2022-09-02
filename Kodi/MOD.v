`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2022 22:07:56
// Design Name: 
// Module Name: MOD
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


module MOD(
    input[15:0] Hyrja1, //A
    input[15:0] Hyrja2, //B
    output[15:0] Dalja //MOD
    );

//Hyrja1 % Hyrja 2 = Dalja
integer numri, pjesetuesi;

initial
begin
assign numri = Hyrja1;
assign pjesetuesi = Hyrja2;



while(numri >= pjesetuesi) 
begin
 numri <= numri - pjesetuesi;
end
end
//assign Dalja = numri;

assign Dalja = numri;

endmodule