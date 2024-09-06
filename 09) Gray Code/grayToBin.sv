`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2024 01:22:10
// Design Name: 
// Module Name: grayToBin
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

module grayToBin
#(
    parameter N = 4
)

(
    input logic [N-1:0] gray_in = '0,
    output logic [N-1:0] bin_out = '0
);

assign bin_out [N-1] = gray_in [N-1]; // MSB değişmiyor

genvar i; //sadece generate blokları için kullanılır. İndeks atamaya yarar.

generate //bir donanım yapısının tekrar eden kopyalarını oluşturmak için kullanılır.
    for(i = 0; i < N - 1; i++)
    begin
        assign bin_out[i] = gray_in[i] ^ bin_out[i + 1];
    end
endgenerate

endmodule