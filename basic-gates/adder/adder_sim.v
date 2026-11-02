`timescale 1ns / 1ps

module adder_sim;

localparam T=10;
reg a, b, c_i;
wire s, c_o;

adder UUT (
.a(a),
.b(b),
.s(s),  // sum (output)
.c_o(c_o),  // carry in
.c_i(c_i)  // carry out
);

integer i;

initial begin

for (i = 0; i < 8; i = i +1) begin
a = i[2]; b = i[1]; c_i = i[0]; 
#T;
end

$finish;

end
endmodule
