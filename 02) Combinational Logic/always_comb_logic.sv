`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2024 18:35:38
// Design Name: 
// Module Name: always_comb_logic
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


module always_comb_logic(
    input logic [7:0] a_i,
    input logic [7:0] b_i,
    input logic [7:0] c_i,
    output logic [15:0] d_o

    );

    function logic [15:0] mul_and_add();  // always_comb dediğimiz için fonksiyonun parantezinin içinde ekstradan inputları belirtmemize gerek kalmadı.
        mul_and_add = a_i * b_i + c_i;
    endfunction

    always_comb
    begin
        d_o = mul_and_add(); // always_comb dediğimiz için fonksiyonun parantezinin içinde ekstradan inputları belirtmemize gerek kalmadı.
    end
endmodule


/*

function logic [15:0] mul_and_add(a_i, b_i, c_i);
    mul_and_add = a_i * b_i + c_i;
endfunction

always @(*)
begin
    d_o = mul_and_add(a_i, b_i, c_i);
end

*/