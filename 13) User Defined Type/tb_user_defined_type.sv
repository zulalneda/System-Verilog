`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 18:01:40
// Design Name: 
// Module Name: tb_user_defined_type
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


module tb_user_defined_type(

    );

    typedef logic [7:0] zulalingo_t;

    zulalingo_t [3:0] x;

    initial begin
        x[0] = 8'hAB;
        x[1] = 8'hCD;
        x[2] = 8'h09;
        x[3] = 8'h3;
        #10;
        $stop;
    end
endmodule
