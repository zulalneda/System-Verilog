`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 03:57:51
// Design Name: 
// Module Name: for_repeat
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


module for_repeat(
    input logic [7:0] din,
    output logic [7:0] dout = '0
    );

    always_comb
    begin
        repeat (3) begin
            dout = dout + din; //add 3 times
        end
    end
endmodule
