`timescale 1ns / 1ps

module my_or_sim;
localparam T = 10;
reg a,b;
wire y;
my_or UUT(
.a(a),
.b(b),
.y(y)
);
initial begin
a <= 0; b <= 0;
#T; a <= 0; b <= 1;
#T; a <= 1; b <= 0;
#T; a <= 1; b <= 1;
#T;
$finish;
end
endmodule
