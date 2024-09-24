`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.09.2024 13:01:36
// Design Name:
// Module Name: tb_blockram_dual_port
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


module tb_blockram_dual_port
  #(
     parameter RAM_WIDTH = 16,
     parameter RAM_DEPTH = 1024
   );

  logic clk = 0;
  logic write_enable_A;
  logic read_enable_B;
  logic [$clog2(RAM_DEPTH) - 1 : 0] address_A;
  logic [$clog2(RAM_DEPTH) - 1 : 0] address_B;
  logic [RAM_WIDTH - 1:0] data_in_A;
  logic [RAM_WIDTH - 1:0] data_out_B;

  blockram_dual_port
    #(
      .RAM_WIDTH(RAM_WIDTH),
      .RAM_DEPTH(RAM_DEPTH)
    )

    blockram_dual_port_Inst (.*);

  always #5 clk = ~clk;

  initial
  begin
    #50;
    @(negedge clk);
    write_enable_A <= 1'b1;
    address_A <= 0;
    data_in_A <= 16'habcd;

    #50;
    @(negedge clk);
    address_B <= 0;
    read_enable_B = 1'b1;
    @(negedge clk);
    read_enable_B <= 1'b0;

    $stop;

  end
endmodule
