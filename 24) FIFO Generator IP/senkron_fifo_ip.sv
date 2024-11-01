`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01.11.2024 15:58:50
// Design Name:
// Module Name: senkron_fifo_ip
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


module senkron_fifo_ip
  (
    input logic clk,
    input logic srst,  //system reset
    input logic [7:0] din,
    input logic wr_en,
    input logic rd_en,
    output logic [7:0] dout,
    output logic full,
    output logic empty,
    output logic [8:0] data_count,
    output logic wr_rst_busy,
    output logic rd_rst_busy
  );

  fifo_generator_0 senkron_fifo_ip (
                     .clk(clk),                  // input wire clk
                     .srst(srst),                // input wire srst
                     .din(din),                  // input wire [7 : 0] din
                     .wr_en(wr_en),              // input wire wr_en
                     .rd_en(rd_en),              // input wire rd_en
                     .dout(dout),                // output wire [7 : 0] dout
                     .full(full),                // output wire full
                     .empty(empty),              // output wire empty
                     .data_count(data_count),    // output wire [8 : 0] data_count
                     .wr_rst_busy(wr_rst_busy),  // output wire wr_rst_busy
                     .rd_rst_busy(rd_rst_busy)  // output wire rd_rst_busy
                   );


endmodule
