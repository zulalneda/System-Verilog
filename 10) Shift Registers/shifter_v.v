`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 13:00:46
// Design Name: 
// Module Name: shifter_v
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


module shifter_v(
    input wire clk,
    input wire signed [7:0] d_in,
    input wire [2:0] sel,
    input wire [2:0] shift_count,
    output wire signed [7:0] d_out
    );

    shifter shifte_Inst(
        .clk(clk),
        .d_in(d_in),
        .sel(sel),
        .shift_count(shift_count),
        .d_out(d_out)
    );
endmodule
