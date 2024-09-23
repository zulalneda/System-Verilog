`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 14:37:24
// Design Name: 
// Module Name: tb_blockram_single_port
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


module tb_blockram_single_port
    #(
        parameter RAM_WIDTH = 16,
        parameter RAM_DEPTH = 1024
    );

    logic clk;
    logic write_enable;
    logic read_enable;
    logic [$clog2(RAM_DEPTH) - 1 : 0] address;
    logic [RAM_WIDTH - 1:0] data_in;
    logic [RAM_WIDTH - 1:0] data_out;

    blockram_single_port #(
        .RAM_WIDTH(RAM_WIDTH),
        .RAM_DEPTH(RAM_DEPTH)
    )

    blockram_single_port_Inst (.*);

    always #5 clk = ~clk;

    initial begin
        #10;
        @(negedge clk);
        write_enable <= 1'b1;
        data_in <= 16'hABCD;
        address <= 0;

        @(negedge clk);
        data_in <= 16'hCDEF;
        address <= 1;

        @(negedge clk);
        write_enable <= 1'b0;

        #100;

        @(negedge clk);
        address <= 0;
        read_enable <= 1'b1;
        @(negedge clk);
        address <= 1;
        @(negedge clk);
        read_enable <= 1'b0;
        #100;

        $stop;

    end

endmodule
