`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 16:13:54
// Design Name: 
// Module Name: tb_aririgs
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


module tb_aririgs
    #(
        parameter N = 8
    );

    logic signed [N:0] a ;
    logic signed [N:0] b ;

    aririgs
    #(
        .N(N)
    )

    aririgs_Inst
    (
        .a(a),
        .b(b)
    );

    initial begin
        a = 8'b10010111;
        b = '0;
        for(int i = 0; i < N; i++)
        begin
            $display("step %b: %b",i + 1,b);
            #10;
        end

        $display("the result is: %b",b);
        $stop;
        #10;
    end

endmodule
