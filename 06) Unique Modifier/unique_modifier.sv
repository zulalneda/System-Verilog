`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04.08.2024 18:33:27
// Design Name:
// Module Name: unique_modifier
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


module unique_modifier(
    input logic [3:0] interrupt,
    input logic [7:0] a_i, b_i, c_i, d_i,
    output logic [7:0] a_o, b_o, c_o, d_o
  );

  always_comb
  begin
    {d_o, c_o, b_o, a_o} = 32'b0;
    unique case (interrupt)
      inside
      4'b1??? :
        a_o = a_i;
      4'b01?? :
        b_o = b_i;
      4'b001? :
        c_o = c_i;
      4'b0001 :
        d_o = d_i;
    endcase
  end
endmodule
// unique case dememizin sebebi paralel bir bağlantı olmasıdır (durumlar tek ve öznel) ve priority encoding yapısının olmaması gerekir. 
// Fakat unique demeden priority encooding koyuyor. Bunun önüne geçmek için unique koyarız.
// çünkü priority encoding oluşturması demek fazladan kapı demek ve böyle olursa gecikme yaşanır.
// unique olmasaydı (don't care olsaydı ("?")) paralel bir bağlantı olmazdı (4'b??1? gibi)
 