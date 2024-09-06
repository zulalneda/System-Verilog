`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2024 17:01:19
// Design Name: 
// Module Name: tb_comb_logic
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


module tb_comb_logic();

logic [7:0] a_i;
logic [7:0] b_i;
logic [7:0] c_i;
logic [15:0] d_o;

comb_logic
    comb_logic_Inst
    (
        .a_i(a_i),
        .b_i(b_i),
        .c_i(c_i),
        .d_o(d_o)
    );

    initial begin
        a_i = 8'h00; // h = hexadecimal (16) // 8 = 8 bits // iki tane 8 bitlik sayıyı combine ederek 16lık oluşturuyor. // b = 0000000000000000
        b_i = 8'h00;
        c_i = 8'h00;

        #100;

        a_i = 8'h01;
        b_i = 8'h02;
        c_i = 8'h03;

        #100;

        a_i = 8'h04;
        b_i = 8'h05;
        c_i = 8'h06;

        #100;

        a_i = 8'h07;
        b_i = 8'h08;
        c_i = 8'h09;

        #100;

        $stop;
    end

    initial begin
        $timeformat(-9,3-" ns"); // 1 nanosaniye = 10^-9 saniye olduğu için -9   //kaç basamak göstermek istediğimiz // " bastırılacak değerin yanında yazmasını istediğimiz ifade"
    end

    initial begin
        $monitor("@%t : %d * %d + %d = %d", $time, a_i, b_i, c_i, d_o);  // aynı c'deki gibi
    end

endmodule
