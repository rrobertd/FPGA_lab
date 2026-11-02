`timescale 1ns / 1ps

module half_adder_sim;

localparam T = 10;	// Defining time step
reg a, b;	// inputs
wire s, c;	// outputs
reg [2:0]i;	// vector used to sweep logic values of inputs

 half_adder UUT(
 .a(a),
 .b(b),
 .s(s),
 .c(c)
 );
 
// Now this for loop uses a 3bit vector
// I want to reduce it to the 2bit 
// but encoutered some weird behavior of the simulation
// as I learned I can't use 2 bit since the condition with <= will never be fulfilled

initial begin
for(i = 3'b000; i < 3'b100; i = i + 1'b1) begin
a = i[0]; b = i[1];
#T;
end

$finish;
end 
endmodule
