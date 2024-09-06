`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02.09.2024 14:43:50
// Design Name:
// Module Name: tb_logrigs
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


module tb_logrigs
  #(
     parameter N = 7
   );
  logic [N:0] a;
  logic [N:0] b;

  logrigs
    #(
      .N(N)
    )
    logrigs_Inst
    (
      .a(a),
      .b(b)
    );

  initial
  begin
    a = 8'b00010111;
    b = '0;
    #10;

    for(int i = 0; i < N; i++)
    begin
      $display("step %b: %b",i,b);
      #10;
    end

    $display("the result is: %b",b);
    $stop;
  end
endmodule
