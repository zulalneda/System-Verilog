`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2024 12:53:31
// Design Name: 
// Module Name: data_types
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


// reg / wire diye ayırmak yerine logic yazabiliriz. (system verilog özelinde)

module data_types

    #(  // parameter, sabit değerler koymak içindir.
        parameter INPUT_WIDTH = 4,
        parameter OUTPUT_WIDTH = INPUT_WIDTH*2  
    )
    (
    input [INPUT_WIDTH - 1:0] a, // kapalı versiyonu   // wire = logic
    input wire [INPUT_WIDTH - 1:0] b, // açık versiyonu "wire gösterimi"  // wire = logic
    output reg [OUTPUT_WIDTH - 1:0] c,  // reg = logic
    output wire [OUTPUT_WIDTH - 1:0] d  // wire = logic
    );

    // logic ifadesi bütün reg'ler yerine kullanılabilir ama bazı wire'larda sıkıntı çıkabilir.

    

    always @(a,b)   // always @(*)   // always_comb  // bütün inputları alacaksak kısaca bunları da kullanabiliriz.
    begin
        c = {a,b};
    end

    assign d = {a,b};
endmodule
