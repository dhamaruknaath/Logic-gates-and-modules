`timescale 1ns/1ps

`include "gateOR.v"

module testbench;

reg a, b;
wire c;

gateOR g1(.a(a),.b(b),.c(c));

initial begin
    $dumpfile("result.vcd");
    $dumpvars(0, testbench);


    // Apply test cases
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish; // End simulation
end

endmodule