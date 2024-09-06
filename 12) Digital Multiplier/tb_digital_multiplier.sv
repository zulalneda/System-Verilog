`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03.09.2024 16:55:45
// Design Name:
// Module Name: tb_digital_multiplier
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


module tb_digital_multiplier
  #(
     parameter N = 8
   );

  logic [N-1:0] a;
  logic [N-1:0] b;
  logic [2*N - 1:0] result;
  logic [2*N - 1:0] resultTakip;

  digital_multiplier
    #(
      .N(N)
    )

    digital_multiplier_Inst
    (
      .a(a),
      .b(b),
      .result(result)
    );

  initial
  begin
    repeat(1000)
    begin
      a = $urandom();  // unsigned random (bildiğimiz sayı)
      b = $urandom();
      resultTakip = a * b;
      #5;
      assert(resultTakip == result)
            $display("true");
      else
        $fatal("false"); //hatalarda simülasyonu durdurur.
      #5;
    end
  end

endmodule
