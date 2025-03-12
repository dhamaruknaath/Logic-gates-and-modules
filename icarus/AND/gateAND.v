`timescale 1ns / 1ps

module gateAND(a, b, c);
    input a, b;
    output c;

    assign c = a & b;
    
endmodule