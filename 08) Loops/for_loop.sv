`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 03:25:33
// Design Name: 
// Module Name: for_loop
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


module for_loop(
    input logic [7:0] din,
    output logic parity = '0
    );

    always_comb 
    begin
        for(int i = 0; i < 8; i++)
        begin
            parity = parity ^ din[i];   // 8 kere xor
        end
    end
endmodule
