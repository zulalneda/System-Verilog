`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 20:12:05
// Design Name: 
// Module Name: led
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


module led(
    input logic [2:0] sel,
    output logic led1, led2, led3
    );

    always_comb
    begin
        {led3, led2, led1} = 3'b0;
        if (sel[2])
        begin
            led3 = 1'b1;
        end
        if (sel[1])
        begin
            led2 = 1'b1;
        end
        if (sel[0])
        begin
            led1 = 1'b1;
        end
    end
endmodule
