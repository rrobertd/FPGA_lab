`timescale 1ns / 1ps


module mux_sim;

localparam T = 10;
reg in_a, in_b, en;
wire out;
integer i;

mux UUT (
.in_a(in_a),
.in_b(in_b),
.en(en),
.out(out)
);

initial begin

for (i = 0; i < 8; i = i + 1) begin
in_a = i[0]; in_b = i [1]; en = i[2];
#T;

end
$finish;
end
endmodule
