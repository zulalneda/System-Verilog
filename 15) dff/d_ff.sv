`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 15:01:26
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input clk,
    input reset,
    input d,
    output reg q // reg ifadesi çıkış değerinin bir değer tutabileceğini belirtir. sequential logic için ve always blokları için kullanılır.

    );

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            q <= 1'b0;
        end
        else begin
            q <= d;
        end
    end
endmodule
