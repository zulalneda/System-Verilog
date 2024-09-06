`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 19:06:17
// Design Name: 
// Module Name: interrupt_decoder
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


module interrupt_decoder(
    input logic [2:0] sel,
    output logic led1, led2, led3
);

    always_comb
    begin
        {led3, led2, led1} = 3'b0;
        if (sel[2])
        begin
            led3 = 1'b1;
        end
        else if (sel[1])
        begin
            led2 = 1'b1;
        end
        else if (sel[0])
        begin
            led1 = 1'b1;
        end
    end
endmodule

// bu bir PRIORITY ENCODING ÖRNEĞİDİR. Diyelim sel bitimiz 111 olsun. Bu durumda led1 yanıp led2 ve led3 yanmayacak.
// bir dijital devrede birden çok girdi sinyalinin aynı anda aktif olabileceği durumlarda, hangi girdinin daha yüksek önceliğe sahip olduğunu belirleyip yalnızca bu girdiyi kodlayan bir yöntemdir

