`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02.09.2024 14:05:33
// Design Name:
// Module Name: logrigs
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


module logrigs

  #(
     parameter N = 7
   )

   (
     input logic [N:0] a ,
     output logic [N:0] b
   );


  always_comb
  begin
    for(int i = 0; i < N - 1; i++)
    begin
      b[i] = a[i + 1];
    end
  end
endmodule
