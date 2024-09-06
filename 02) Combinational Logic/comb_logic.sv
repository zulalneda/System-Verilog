`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2024 16:16:35
// Design Name: 
// Module Name: comb_logic
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


// d_o = a_i * b_i + c_i

module comb_logic(
    input logic [7:0] a_i,
    input logic [7:0] b_i,
    input logic [7:0] c_i,
    output logic [15:0] d_o

    );

    //assign d_o = (a_i * b_i) + c_i;

    always @(*)
    begin
        d_o = a_i * b_i + c_i;
    end


endmodule
