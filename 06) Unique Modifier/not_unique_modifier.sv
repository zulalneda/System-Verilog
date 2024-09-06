`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04.08.2024 20:23:33
// Design Name:
// Module Name: not_unique_modifier
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


module not_unique_modifier(
    input logic [3:0] interrupt,
    input logic [7:0] a_i, b_i, c_i, d_i,
    output logic [7:0] a_o, b_o, c_o, d_o
  );

  always_comb
  begin
    {d_o, c_o, b_o, a_o} = 32'b0; // sinyallerini sıfırlamak için kullanılır. Her bir sinyalin toplam genişliği 32 bite eşit olacak şekilde 0 değerine atanır.
    unique case (interrupt)
      inside
      4'b1??? :
        a_o = a_i;
      4'b?1??:
        b_o = b_i;
      4'b??1?:
        c_o = c_i;
      4'b???1:
        d_o = d_i;
    endcase
  end
endmodule
