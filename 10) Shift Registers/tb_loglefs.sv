`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 13:43:22
// Design Name: 
// Module Name: tb_loglefs
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


module tb_loglefs
    #(
        parameter N = 7
    );

    
        logic[N:0] a;
        logic [N:0] b;
        logic deger = a[N];
    
    loglefs
    #(
        .N(N)
    )

    loglefs_Inst
    (
        .a(a),
        .b(b),
        .deger(deger)
    );

    initial begin
        a = 8'b00010111;
        b = '0;
        #10;

        for(int i = 0; i < N; i++)
        begin
            $display("step %b: %b",i,b);
            #10;
        end
    end
    
endmodule
