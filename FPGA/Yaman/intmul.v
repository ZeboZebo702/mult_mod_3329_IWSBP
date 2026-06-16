
/*
The designers:

Ahmet Can Mert <ahmetcanmert@sabanciuniv.edu>
Ferhat Yaman <ferhatyaman@sabanciuniv.edu>

To the extent possible under law, the implementer has waived all copyright
and related or neighboring rights to the source code in this file.
http://creativecommons.org/publicdomain/zero/1.0/
*/

//(* use_dsp = "no" *)
//(* multstyle = "logic" *)

// === AUTO_INJECTED_FPGA_ATTRS ===
(* use_dsp         = "no"          *)
(* use_carry_chain = "no"          *)
(* shreg_extract   = "no"          *)
// === END AUTO_INJECTED_FPGA_ATTRS ===
module intmul(input [11:0] A,B,
              output[23:0] P);

//(* use_dsp = "yes" *) reg [23:0] P_DSP;

//always @* P_DSP = A*B;

//assign P = P_DSP;

assign P = A*B;

endmodule
