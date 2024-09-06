`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 31.08.2024 01:16:43
// Design Name:
// Module Name: gray_codE
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

module gray_codE
  #(
     parameter N = 4
   )

   (
     input logic [N - 1:0] bin_in = '0,
     output logic [N - 1:0] gray_out = '0
   );



  always_comb
  begin
    gray_out[N-1] = bin_in[N-1];
    for(int i = 0; i < N-1; i++)
    begin
      gray_out[i] = bin_in[i + 1] ^ bin_in[i];
      /*
          gray_out[3] = bin_in[3];
          gray_out[2] = bin_in[3] ^bin_in[2];
          gray_out[1] = bin_in[2] ^bin_in[1];
          gray_out[0] = bin_in[1] ^bin_in[0];
      */
    end
  end
endmodule
