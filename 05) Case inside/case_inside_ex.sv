`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 17:06:30
// Design Name: 
// Module Name: case_inside_ex
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


module case_inside_ex(
    input logic [3:0] sel,
    input logic [3:0] a,
    input logic [3:0] b,
    input logic [3:0] c,
    input logic [3:0] d,
    output logic [3:0] dout

    );

    always_comb
    begin
        case (sel) inside
            4'b1???:
                dout = a;
            4'b?1??:
                dout = b;
            4'b??1?:
                dout = c;
            4'b???1:
                dout = d;
            default:
                dout = '0; // = 4'b0000; (oyhers -> '0' //VHDL)
        endcase
    end
endmodule
