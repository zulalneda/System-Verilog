`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2024 13:22:27
// Design Name: 
// Module Name: blockram_true_dual_port
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


module blockram_true_dual_port

    #(
        parameter RAM_WIDTH = 16,
        parameter RAM_DEPTH = 1024
    )
    (

    input logic clk,
    input logic write_enable_A,
    input logic read_enable_A,
    input logic [$clog2(RAM_DEPTH)-1:0] address_A,
    input logic [RAM_WIDTH - 1:0] data_in_A,
    input logic write_enable_B,
    input logic read_enable_B,
    input logic [$clog2(RAM_DEPTH)-1:0] address_B,
    input logic [RAM_WIDTH - 1:0] data_in_B,
    output logic [RAM_WIDTH - 1:0] data_out_A,
    output logic [RAM_WIDTH - 1:0] data_out_B

    );

    (* ram_style = "block" *)
    logic [RAM_WIDTH - 1:0] tdpram [0:RAM_DEPTH - 1] = '{default : 0};

    always_ff @(posedge clk)
    begin : PORT_A
        if(write_enable_A)
        begin
            tdpram[address_A] <= data_in_A;
        end

        else if (read_enable_A)
        begin
            data_out_A <= tdpram[address_A];
        end
    end : PORT_A

    always_ff @(posedge clk)
    begin : PORT_B
        if(write_enable_B)
        begin
            tdpram[address_B] <= data_in_B;
        end

        else if(read_enable_B)
        begin
            data_out_B <= tdpram[address_B]; 
        end
    end : PORT_B

    

endmodule
