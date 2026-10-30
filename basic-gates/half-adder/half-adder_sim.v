`timescale 1ns / 1ps

module half_adder_sim;

localparam T = 10;
reg a, b;
wire s, c;
reg [2:0]i;

 Half_adder UUT(
 .a(a),
 .b(b),
 .s(s),
 .c(c)
 );
 
initial begin
for(i = 3'b000; i < 3'b100; i = i + 1'b1) begin
a = i[0]; b = i[1];
#T;
end

$finish;
end 
endmodule
