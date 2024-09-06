`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02.09.2024 13:30:47
// Design Name:
// Module Name: loglefs
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

// arithmetic left shift örneği yapmayacağım çünkü logical ile aynı mantığı kullanıyor.
module loglefs

  #(
     parameter  N = 7
   )

   (
     input logic [N:0] a ,
     output logic [N:0] b 
   );

  always_comb
  begin
    for(int i = 0; i < N - 1;i++)
    begin
      b[i + 1] = a[i];
    end

  end

endmodule
