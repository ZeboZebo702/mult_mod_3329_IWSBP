/*
Fully combinational version.
Removed: clk, rst, P_R register.
*/

//(* use_dsp = "no" *)           // Vivado/Xilinx — no DSP48
//(* multstyle = "logic" *)      // Quartus/Intel — no DSP
// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module modmul(input  [11:0] A, B,
              output [11:0] R);

wire [23:0] P;

intmul im0(A, B, P);
modred mr0(P, R);

endmodule