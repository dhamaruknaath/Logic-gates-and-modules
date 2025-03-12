`timescale 1ns / 1ps

module gateOR (a, b, c);
    input a, b;
    output c;

    or gate1(c, b, a);
    
endmodule