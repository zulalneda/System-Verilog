`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 16:05:25
// Design Name: 
// Module Name: digital_multiplier
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


module digital_multiplier
    #(
        parameter N = 4
    )
    (
        input logic [N-1:0] a,
        input logic [N-1:0] b,
        output logic [2*N - 1:0] result
    );

    logic [2*N-1:0] temp;
    logic [2*N-1:0] tempResult;

    always_comb
    begin
        tempResult = '0;
        temp = {{N{1'b0}},b};
        for(int i = 0; i < N - 1; i++)
        begin
            if(a[i])
            begin
                tempResult = tempResult + temp;
            end
            temp = temp << 1; 
        end

        assign result = tempResult;
    end
endmodule
