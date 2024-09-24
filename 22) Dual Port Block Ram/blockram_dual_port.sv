`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.09.2024 12:31:34
// Design Name:
// Module Name: blockram_dual_port
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

//Bu projenin amacı, oluşturduğumuz iki parçalı block ram ile ilk portundan (A) yazma işlemi yaparken, ikinci portundan (B) okuma işlemi yapmaktır.

module blockram_dual_port
  #(
     parameter RAM_WIDTH = 16,
     parameter RAM_DEPTH = 1024
   )
   (
     input logic clk,
     input logic write_enable_A,
     input logic read_enable_B,
     input logic [$clog2(RAM_DEPTH)-1:0] address_A, // $clog2 bir sayıyı ifade etmek için gereken minimum bit sayısını bulur.
     //burada da log 2 tabanında 1024 = 10 olduğu için [9:0] olacak şekilde 10 bitlik bir veri alanı oluşturuldu.
     input logic [$clog2(RAM_DEPTH) - 1:0] address_B,
     input logic [RAM_WIDTH - 1:0] data_in_A,
     output logic [RAM_WIDTH - 1:0] data_out_B
   );

   (*ram_style = "block" *)
   logic [RAM_WIDTH - 1:0] dpram [0: RAM_DEPTH - 1] = '{default : 0};

   always_ff @(posedge clk) begin : WRITE_PORT_A
        if(write_enable_A)
        begin
            dpram[address_A] <= data_in_A;
        end
   end : WRITE_PORT_A

   always_ff @(posedge clk) begin : READ_PORT_B
        if(read_enable_B)
        begin
            data_out_B <= dpram[address_B];
        end
   end : READ_PORT_B


endmodule
