`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2024 01:24:31
// Design Name: 
// Module Name: tb_grayToBin
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


module tb_grayToBin
    #(
        parameter N = 4
    );

    logic [N-1:0] gray_in = '0;
    logic [N-1:0] bin_out;

    grayToBin
    #(
        .N(N)
    )

    grayToBin_Inst
    (
        .gray_in(gray_in), // parantez içi hangi sinyale bağlayacaksak
        .bin_out(bin_out)
    );

    initial begin
        for(int)
    end
endmodule
