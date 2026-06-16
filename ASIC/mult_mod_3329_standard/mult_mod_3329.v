module mult_mod_3329_standard(
A, B, R
    );

    input [12:1] A;
    input [12:1] B;
    output [12:1] R;

assign R = (A * B) % 3329;

endmodule
