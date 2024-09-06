`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 19:10:17
// Design Name: 
// Module Name: dff_test
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


module dff_test();

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
        resert <= 1;
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
