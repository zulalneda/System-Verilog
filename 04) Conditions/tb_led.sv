`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 20:19:42
// Design Name: 
// Module Name: tb_led
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


module tb_led();

logic [2:0] sel;
logic led1, led2, led3;

    led uut
    (
        .sel(sel),
        .led1(led1),
        .led2(led2),
        .led3(led3)

    );

    
    initial begin
        $timeformat(-9, 3, " ns");
    end

    initial begin
        $monitor("%t: sel=%b, led1=%b, led2=%b, led3=%b", $time, sel, led1, led2, led3);
    end


    initial begin
        sel = 3'b000;
        #10;

        sel = 3'b001;
        #10;

        sel = 3'b010;
        #10;

        sel = 3'b011;
        #10;

        sel = 3'b100;
        #10;

        sel = 3'b101;
        #10;

        sel = 3'b110;
        #10;

        sel = 3'b111;
        #10;

        $stop;
    end


endmodule
