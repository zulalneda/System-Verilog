`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2024 14:02:50
// Design Name: 
// Module Name: tb_blockram_true_dual_port
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


module tb_blockram_true_dual_port
    #(
        parameter RAM_WIDTH = 16,
        parameter RAM_DEPTH = 1024
    );

    logic clk = 0;
    logic write_enable_A;
    logic read_enable_A;
    logic [$clog2(RAM_DEPTH) -1:0] address_A;
    logic [RAM_WIDTH - 1:0] data_in_A;
    logic write_enable_B;
    logic read_enable_B;
    logic [$clog2(RAM_DEPTH) -1:0] address_B;
    logic [RAM_WIDTH - 1:0] data_in_B;
    logic [RAM_WIDTH - 1:0] data_out_A;
    logic [RAM_WIDTH - 1:0] data_out_B;

    blockram_true_dual_port
    #(
        .RAM_WIDTH(RAM_WIDTH),
        .RAM_DEPTH(RAM_DEPTH)
    )

    blockram_true_dual_port_Inst (.*);

    always #5 clk = ~clk;

    initial begin
        @(negedge clk);
        write_enable_A <= 1'b1;
        data_in_A <= 16'hABCD;
        address_A <= 1;

        write_enable_B <= 1'b1;
        address_B <= 2;
        data_in_B <= 16'h1234;

        @(negedge clk);
        write_enable_A <= 1'b0;
        write_enable_B <= 1'b0;

        #50;

        @(negedge clk);
        read_enable_A <= 1'b1;
        address_A <= 2; //h1234 verisini okuyacaktır.
        read_enable_B <=1'b1;
        address_B <= 1; //ABCD verisini okuyacaktır.

        @(negedge clk);
        read_enable_A <= 1'b0;
        read_enable_B <= 1'b0;

        #100;
        $stop;


    end

endmodule
