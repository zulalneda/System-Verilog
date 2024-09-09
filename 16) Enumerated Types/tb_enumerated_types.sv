`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 20:12:53
// Design Name: 
// Module Name: tb_enumerated_types
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


module tb_enumerated_types();

typedef enum logic [4:0]
{
    S0 = 5'b00001,
    S1 = 5'b00010,
    S2 = 5'b00100,
    S3 = 5'b01000,
    S4 = 5'b10000
} states_t;

states_t state = S2;

initial begin
    $display("state.name() = %s", state.name());
    $display("state.first() = %s", state.first().name());
    $display("state.next() = %s", state.next().name());
    $display("state.last() = %s", state.last().name());
    $display("state.prev() = %s", state.prev().name());
    $display("state.num() = %d", state.num());
end
endmodule

/*
    $display("state.first() = %s", state.first().name()); ile
    $display("state.first() = %s", state.first());
    arasındaki fark, ikincide binary olanı yazdırır.
    okunuş açısından da ilki tercih edilir.
*/
