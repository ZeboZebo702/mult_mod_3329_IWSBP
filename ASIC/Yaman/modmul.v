/*
Fully combinational version.
Removed: clk, rst, P_R register.
*/

//(* use_dsp = "no" *)           // Vivado/Xilinx — no DSP48
//(* multstyle = "logic" *)      // Quartus/Intel — no DSP
module modmul(input  [11:0] A, B,
              output [11:0] R);

wire [23:0] P;

intmul im0(A, B, P);
modred mr0(P, R);

endmodule