`timescale 1ns / 1ps

module three_sim;

localparam T = 10;
reg in,en;
wire out;
integer i;

three_state_gate UUT(
.in(in),
.out(out),
.en(en)
);

initial begin

for (i = 0; i < 4; i = i + 1) begin
in = i[0]; en = i[1];
#T;
end

$finish;
end
endmodule
