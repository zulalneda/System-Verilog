`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12.09.2024 14:38:31
// Design Name:
// Module Name: tb_non_blocking
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


module tb_non_blocking();

  bit clk;
  logic rstn;
  logic ena = 0;
  logic [7:0] A;
  logic [7:0] B;
  logic [7:0] dout_non_blocking;
  logic [7:0] dout_blocking;

  non_blocking non_blocking_Inst (.*);

  always #5 clk = ~clk;

  initial
  begin
    rstn <= 1'b0; //devreyi sıfırla. aktif düşük hale getir
    @(negedge clk); // bekle
    @(negedge clk); // bekle
    rstn <= 1'b1; //devreyi çalışır hale getir.

    A <= 5;
    B <= 7;

    #100;
    ena <= 1;
    #100;
    $stop;
  end
endmodule
