`timescale 1ns / 1ps

module three_state_gate(
    input in,en,
    output out
    );
    
    assign out = (en) ? in : 1'bz;
        
endmodule
