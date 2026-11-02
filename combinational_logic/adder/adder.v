`timescale 1ns / 1ps


module adder(
input a, b, c_i,
output s, c_o
    );
    wire p1;
    wire p2;
    wire p3;
    
    // sum bit
    assign p1 = a ^ b;
    assign s = p1 ^ c_i;
    
    // c_o bit
    assign p2 = a & b;
    assign p3 = p1 & c_i;
    assign c_o = p2 | p3;
    
        
endmodule
