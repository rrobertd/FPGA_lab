`timescale 1ns / 1ps

module mux(
input in_a, in_b, en,
output out
    );
    
    // when en = 1 the state of the in_b is forwarded to the output
    // when en =0 the state of the in_b is forwarded to the output
    assign out = en ? in_a : in_b;
    
endmodule
