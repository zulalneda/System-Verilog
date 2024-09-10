`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 13:09:22
// Design Name: 
// Module Name: tb_structure
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


module tb_structure();
    import structure_pkg::*;

    my_structure_t s1 = s0; 
    initial begin
        $display("s0.DATA_ID = %d",s0.DATA_ID);
        $display("s0.DATA_HEADER = %h",s0.DATA_HEADER);
        $display("s0.DATA_FOOTER = %h",s0.DATA_FOOTER);
        $display("s0.DATA_START_ADDR = %d",s0.DATA_START_ADDR);
        $display("s0.DATA_END_ADDR = %d",s0.DATA_END_ADDR);
        $display("s0.DATA_LENGTH = %d",s0.DATA_LENGTH);

        $display("\n");

        $display("s1.DATA_ID = %d",s1.DATA_ID);
        $display("s1.DATA_HEADER = %h",s1.DATA_HEADER);
        $display("s1.DATA_FOOTER = %h",s1.DATA_FOOTER);
        $display("s1.DATA_START_ADDR = %d",s1.DATA_START_ADDR);
        $display("s1.DATA_END_ADDR = %d",s1.DATA_END_ADDR);
        $display("s1.DATA_LENGTH = %d",s1.DATA_LENGTH);

    end
endmodule
