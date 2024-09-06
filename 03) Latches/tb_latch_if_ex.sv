`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 23:02:01
// Design Name: 
// Module Name: tb_latch_if_ex
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


module tb_latch_if_ex();

    logic [7:0] din_a;
    logic [7:0] din_b;
    logic comp_equal;
    logic comp_greater;

    latch_if_ex
        latch_if_ex_Inst
        (
            .din_a(din_a),
            .din_b(din_b),
            .comp_equal(comp_equal),
            .comp_greater(comp_greater)
        );

        initial begin
            din_a = 8'b00000000;
            din_b = 8'b00000000;

            #10;

            din_a = 8'b00000000;
            din_b = 8'b00000001;

            #10;

            din_a = 8'b00000001;
            din_b = 8'b00000000;

            #10;

            din_a = 8'b00000001;
            din_b = 8'b00000001;

            #10;

            $stop;
        end

        initial begin
            $timeformat(-9, 2, " ns", 20);
        end

        initial
        begin
            $monitor("%0t: din_a = %b, din_b = %b, comp_equal = %b, comp_greater = %b", $time, din_a, din_b, comp_equal, comp_greater);
        end


endmodule
