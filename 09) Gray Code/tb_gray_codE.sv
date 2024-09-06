`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2024 01:18:24
// Design Name: 
// Module Name: tb_gray_codE
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


module tb_gray_codE
#(
    parameter N = 4
);
logic [N - 1:0] bin_in = '0;
logic [N-1:0] gray_out;

gray_codE
#(
    .N(N)
)

gray_codE_Inst
(
    .bin_in(bin_in),
    .gray_out(gray_out)
);

initial begin
    for(int j = 0; j < 16; j++)
    begin
        bin_in = j;
        $display("bin_in = %b, gray_out = %b", bin_in, gray_out);
        #10;
    end
end
endmodule
