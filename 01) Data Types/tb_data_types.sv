`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2024 14:24:06
// Design Name: 
// Module Name: tb_data_types
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


module tb_data_types
    #(
        parameter INPUT_WIDTH = 4,
        parameter OUTPUT_WIDTH = INPUT_WIDTH*2
    );

    logic [INPUT_WIDTH - 1:0] a;
    logic [INPUT_WIDTH - 1:0] b;
    reg [OUTPUT_WIDTH - 1:0] c;
    wire [OUTPUT_WIDTH - 1:0] d;

    data_types
    #(
        .INPUT_WIDTH(INPUT_WIDTH),
        .OUTPUT_WIDTH(OUTPUT_WIDTH)
    )

    data_types_Inst
    (
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );

    initial begin
        #10
        a = 4'b0001;
        b = 4'b0010;

        #10
        a = 4'b0100;
        b = 4'b1000;

        #10
        a = 4'b1101;
        b = 4'b1001;

        #10

        $stop;
    end

endmodule
