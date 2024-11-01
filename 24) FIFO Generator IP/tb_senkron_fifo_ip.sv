`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01.11.2024 15:59:15
// Design Name:
// Module Name: tb_senkron_fifo_ip
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


module tb_senkron_fifo_ip();

  logic clk = 0;
  logic srst;  //system reset
  logic [7:0] din;
  logic wr_en;
  logic rd_en;
  logic [7:0] dout;
  logic full;
  logic empty;
  logic [8:0] data_count;
  logic wr_rst_busy;
  logic rd_rst_busy;

  senkron_fifo_ip senkron_fifo_ip_Inst (.*);

  always #5 clk = ~clk;

  initial
  begin
    srst <= 1'b1;
    @(negedge clk);
    @(negedge clk);
    srst <= 1'b0;

    #250_000;
    $stop;
  end

  logic [7:0] fifo_dogru [$]; //push_back (veri yazılacağı zaman) (wr_en = 1), pop_front (veri okunacağı zaman) (rd_en = 1)
  logic write_active, read_active;

  //ilk başta write_active hızı read_active hızından yüksek olsun.

  logic [1:0] write_counter;
  logic [3:0] read_counter;

  always_ff @(posedge clk)
  begin
    if (srst)
    begin
      write_counter <= 0;
      read_counter <= 0;
      write_active <= 1'b0;
      read_active <= 1'b0;
    end

    else
    begin
      write_counter <= write_counter + 1;
      read_counter <= read_counter + 1;

      write_active <= 1'b0;
      read_active <= 1'b0;

      if(write_counter == 0)
        write_active <= 1'b1;
      if(read_counter == 1)
        ;
      //yazma hızı okuma hızından 4 kat yüksek oldu.

    end

  end

  always_ff @(posedge clk)
  begin : P_WRITE
    if (srst)
    begin
      wr_en <= 1;
      din <= 0;
    end
    else
    begin
      wr_en <= 1'b0;
      if(!full && write_active)
      begin
        wr_en <= 1'b1;
        din = $random();
      end

      if (wr_en)
      begin
        fifo_dogru.push_back(din);
      end
    end
  end : P_WRITE

  always_ff @(posedge clk)
  begin : P_READ
    logic rd_en_prev; //latency 1 clock gecikme yaşatacağından ötürü 1 clock beklettik.
    logic [7:0] dout_test;
    if (srst)
    begin
      rd_en <= 1;
    end

    else
    begin
      rd_en<= 1'b0;
      if (!empty && read_active)
      begin
        rd_en <= 1'b1;
      end

      rd_en_prev <= rd_en;

      if (rd_en_prev)
      begin
        dout_test = fifo_dogru.pop_front();
        assert (dout_test == dout) $display("dout_test == %h, dout == %h. TRUE.",dout_test, dout); //self-checking test banch
        else
          $fatal("dout_test == %h, dout == %h. FALSE.",dout_test, dout);
      end

    end
  end : P_READ

endmodule
