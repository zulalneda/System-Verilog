`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 14:39:52
// Design Name: 
// Module Name: tb_sequential
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


module tb_sequential();

    logic clk = 0;
    logic [7:0] din;
    logic [7:0] dout_seq;
    logic [7:0] dout_comb;
    logic [7:0] dout_temp;

    always #5 clk <= ~clk;

    initial begin
        #3;
        din <= 3;
        #10;
        din <= 5;
        #10;
        din <= 7;
        #10;
        din <= 9;
        #20;
        $stop;
    end

    always_ff @(posedge clk) begin
        dout_seq <= din; // non-blocking assignment
        //ardışık işlemler için kullanılır. paralel yürütülür. 

        dout_temp = din; // blocking assignment
        // sırasıyla yapar.
    end

    always_comb begin
        dout_comb = din; // blocking assignment
    end

endmodule
