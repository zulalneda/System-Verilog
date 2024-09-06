`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 03:32:27
// Design Name: 
// Module Name: tb_for_loop
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


module tb_for_loop();
    logic [7:0] din;
    logic parity = '0;

    for_loop
        for_loop_Inst(
            .din(din),
            .parity(parity)
        );

    initial begin
        for(int i = 0; i < 8; i++)
        begin
            din = i;
            $display("%d\n", parity);
            #10;
        end

    #10;
    end
endmodule
