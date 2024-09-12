`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12.09.2024 14:10:24
// Design Name:
// Module Name: non_blocking
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


module non_blocking(
    input logic clk,
    input logic rstn, // active low-reset
    input logic ena, // enable
    input logic [7:0] A,
    input logic [7:0] B,
    output logic [7:0] dout_non_blocking,
    output logic [7:0] dout_blocking
  );

  logic [7:0] temp_nb;

  always_ff @(posedge clk)
  begin : non_blocking //kod bloğuna isim vermek için kullanılır
    if(!rstn)
    begin
      dout_non_blocking <= '0;
      temp_nb <= '0;
    end

    else
    begin
      temp_nb <= A + B;
      dout_non_blocking <= temp_nb;
    end

  end : non_blocking

  always_ff @(posedge clk)
  begin : blocking //kod bloğuna isim vermek için kullanılır
    logic [7:0] temp_b;
    if(!rstn)
    begin
      dout_blocking <= '0;
      temp_b <= '0;
    end

    else
    begin
      temp_b = A + B;
      dout_blocking <= temp_b;
    end

  end : blocking

  logic [7:0] counter_b;
  logic [7:0] counter_nb;

  // counter örneği (non-blocking ve blocking)

  always_ff @(posedge clk)
  begin
    if(!rstn)
    begin
      counter_nb <= '0;
    end

    else
    begin
      counter_nb <= counter_nb + 1;
      if(ena)
      begin
        counter_nb <= counter_nb + 2;
      end
    end
  end



  always_ff @(posedge clk)
  begin
    if(!rstn)
    begin
      counter_b = '0;
    end

    else
    begin
      counter_b = counter_b + 1;
      if(ena)
      begin
        counter_b = counter_b + 2; //counter_b + 1 + 2
        //counter ı 2 değil 3 artırmasının sebebi  +1 eylemini yapmadan if bloğuna geçemeyeceği içindir.
        // yani ardışık işlemlerde PARALEL İŞLEM YAPAMAZ
      end
    end
  end

endmodule
