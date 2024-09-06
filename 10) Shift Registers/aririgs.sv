`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02.09.2024 14:51:41
// Design Name:
// Module Name: aririgs
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


module aririgs
  #(
     parameter N = 8
   )

   (
     input logic signed [N - 1:0] a ,
     output logic signed [N - 1:0] b
   );


  always_comb
  begin
    for(int i = 0; i < N - 1; i++)
    begin
      b[i] = a[i + 1];
    end
    b [N-1] = a[N-1];
  end
endmodule
