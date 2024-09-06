`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2024 20:36:19
// Design Name: 
// Module Name: tb_not_unique_modifier
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


module tb_not_unique_modifier();
logic [3:0] interrupt;
logic [7:0] a_i, b_i, c_i, d_i;
logic [7:0] a_o, b_o, c_o, d_o;

not_unique_modifier not_unique_modifier(.*);
/*
not_unique_modifier
    not_unique_modifier_Inst(
    .interrupt(interrupt),
        .a_i(a_i),
        .b_i(b_i),
        .c_i(c_i),
        .d_i(d_i)
    );

*/

    initial begin
        interrupt = 4'b0;
        a_i = 8'h01;
        b_i = 8'h02;
        c_i = 8'h03;
        d_i = 8'h04;
        #10;

        interrupt = 4'b0001;
        #10;
        assert(a_o == 0 && b_o == 0 && c_o == 0 && d_o == d_i) // assert yapısı if yapısı ile oldukça benzerdir.
            $display ("correct!");
        else
            $display("mistake!");

        #10;

        interrupt = 4'b0010;
        #10;
        assert(a_o == 0 && b_o == 0 && c_o == c_i && d_o == 0)
            $display("corect!");
        else
            $display("mistake!");

        #10;

        interrupt = 4'b0100;
        #10;
        assert(a_o == 0 && b_o == b_i && c_o == 0 && d_o == 0)
            $display("correct!");
        else
            $display("mistake!");
        
        #10;

        interrupt = 4'b1000;
        #10;
        assert(a_o == a_i && b_o == 0 && c_o == 0 && d_o == 0)
            $display("correct!");
        else
            $display("mistake!");
        
        #10;

        #50;

        interrupt = 4'b1111; // hatalı olan, gözden kaçırdığımız


    end
endmodule
