`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 00:49:36
// Design Name: 
// Module Name: latch_if_ex
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


module latch_if_ex(
    input logic [7:0] din_a,
    input logic [7:0] din_b,
    output logic comp_equal,
    output logic comp_greater
    );

    /*

    always_comb 
    begin 
        if (din_a == din_b)
        begin
            comp_equal = 1'b1;
            comp_greater = 1'b0;
        end
         else if (din_a > din_b)
        begin
            comp_greater = 1'b1;
            comp_equal = 1'b0;
        end
        else
        begin
            comp_greater = 1'b0;
            comp_equal = 1'b0;
        end

    end
    */

    always_comb
    begin
        comp_equal = 1'b0;
        comp_greater = 1'b0;
        if(din_a == din_b)
            comp_equal = 1'b1;
        else if(din_a > din_b)
            comp_greater = 1'b1;
    end
endmodule
