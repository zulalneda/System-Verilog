`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 14:36:46
// Design Name: 
// Module Name: blockram_single_port
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


module blockram_single_port
    #(
        parameter RAM_WIDTH = 16,
        parameter RAM_DEPTH = 1024
    )
    (
        input logic clk,
        input logic write_enable,
        input logic read_enable,
        input logic [$clog2(RAM_DEPTH)-1:0] address, // $clog2 bir sayıyı ifade etmek için gereken minimum bit sayısını bulur.
        //burada da log 2 tabanında 1024 = 10 olduğu için [9:0] olacak şekilde 10 bitlik bir veri alanı oluşturuldu.
        input logic [RAM_WIDTH - 1:0] data_in,
        output logic [RAM_WIDTH - 1:0] data_out
    );

    (*ram_style = "block" *) //block, distributed, register
    //ekstradan yapılan bu ram'in bir BLOCK RAM olduğunu ifade etmek için kullanılır.

    logic [RAM_WIDTH - 1:0] ram [0:RAM_DEPTH - 1] = '{default : 0}; // verinin derinliği, kaç hücreden (1024) oluştuğunu belirtir.
    // multi - dimensional array

    always_ff @(posedge clk) begin
        if(write_enable)
        begin
            ram[address] <= data_in; 
            //data_in verisi RAM'de belirlenen adrese yazılır
        end
        else if (read_enable)
        begin
            data_out <= ram[address]; 
            // RAM'deki belirli bir adreste bulunan veri data_out çıkışına aktarılır.
        end 
    end


endmodule
