`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 13:00:46
// Design Name: 
// Module Name: aluvol2_pkg
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


package aluvol2_pkg;

    localparam N = 8; // parameter -> localparam. Parameter olarak yazılması pek tavsiye edilmez.
    typedef logic [N-1:0] neda_t;

    function neda_t add_aluvol2 (neda_t A, neda_t B);
        return A + B;
    endfunction

    function neda_t sub_aluvol2 (neda_t A, neda_t B);
        return A - B;
    endfunction

    function neda_t increase_aluvol2 (neda_t A);
        return A + 1;
    endfunction

    function neda_t decrease_aluvol2 (neda_t A);
        return A - 1;
    endfunction

    function neda_t inv_aluvol2 (neda_t A);
        return ~A;
    endfunction

    function neda_t and_aluvol2 (neda_t A, neda_t B);
        return A & B;
    endfunction

    function neda_t or_aluvol2 (neda_t A, neda_t B);
        return A | B;
    endfunction

    function neda_t xor_aluvol2 (neda_t A, neda_t B);
        return A ^ B;
    endfunction
endpackage
