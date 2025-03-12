`timescale 1ns / 1ps

`include "gateAND.v"
module testbench;

reg a, b;
wire c;

gateAND uut(.a(a),.b(b),.c(c));

initial begin

    $dumpfile("result.vcd");
    $dumpvars(0, testbench);

    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10
    $finish;
end
endmodule