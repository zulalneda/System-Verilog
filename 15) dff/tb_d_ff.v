`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 19:31:00
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff();

reg clk, reset, d, q;

d_ff
    d_ff_Inst
    (
        .clk (clk),
        .reset (reset),
        .d (d),
        .q (q)
    );

    always #5 clk <= ~clk;

    initial begin
        reset <= 1;
        d <= 0;

        #20
        reset <= 0;
        #15 d <= 1;
        #25 d <= 0;
        #12 d <= 1;
        #17 d <= 0;
        #21 d <= 1;
        #9 d <= 0;

        #50
        $stop;
    end


endmodule
