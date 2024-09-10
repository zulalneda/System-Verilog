`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 13:08:56
// Design Name: 
// Module Name: structure_pkg
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


package structure_pkg;
    typedef struct {
        integer DATA_ID; //Verilere bir kimlik numarası atamak için kullanılır, böylece veri blokları arasında ayrım yapılabilir.
        logic [7:0] DATA_HEADER;  //Paketlenmiş bir veri bloğunun başlık bilgisini tutar.
        logic [7:0] DATA_FOOTER; //Paketlenmiş bir veri bloğunun sonlandırma bilgisini tutar.
        integer DATA_START_ADDR; // Veri bloğunun başlangıç adresini tutar.
        integer DATA_END_ADDR; // Veri bloğunun bitiş adresini tutar.
        integer DATA_LENGTH; // Veri bloğunun uzunluğunu tutar.
    } my_structure_t;

    localparam my_structure_t s0 = '{ //localparam = sabit nesneyi tutar. s0 da tanımlanan sabit nesne my_structure tipinde bir nesnedir.
        DATA_ID: 0,
        DATA_HEADER: 8'hAB,
        DATA_FOOTER: 8'hCD,
        DATA_START_ADDR: 7,
        DATA_END_ADDR: 42,
        DATA_LENGTH: 42 - 7 + 1
    };
endpackage
