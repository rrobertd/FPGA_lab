`timescale 1ns / 1ps

// It is called half adder because it dont have carry input
// full adder have a 3 inputs and can be "stacked" to properly add multiple bit sized numbers
module Half_adder(
input a,b,
output s,c // sum and carry
    );

assign s = a ^ b;
assign c = a & b;
endmodule
