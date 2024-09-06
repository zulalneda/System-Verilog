`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 12:52:23
// Design Name: 
// Module Name: aluvol2
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


import aluvol2_pkg::*; //yıldız koymamızın sebebi tüm modülleri import etmemizdir.

module aluvol2

 (
   input logic [N-1:0] A,
   input logic [N-1:0] B,
   input logic [2:0] opcode,
   output logic [N-1:0] Y

 );

 always_comb
 begin
      case(opcode)
          0: Y = add_aluvol2(A, B); // toplama
          1: Y = sub_aluvol2(A , B); // çıkarma
          2: Y = increase_aluvol2(A); // increase (artırma)
          3: Y = decrease_aluvol2(A); // decrease (azaltma)
          4: Y = inv_aluvol2(A); // tersi (invert)
          5: Y = and_aluvol2(A , B); // ve
          6: Y = or_aluvol2(A , B); // veya
          7: Y = xor_aluvol2(A , B); // xor
          default: Y = '0;
      endcase
 end
endmodule

