module arbiter (z,in);
    output [3:0] z;
    input  [3:0] in;

    assign z[3] = in[3];
    assign z[2] = ~in[3] & in[2];
    assign z[1] = ~in[3] & ~in[2] & in[1];
    assign z[0] = ~in[3] & ~in[2] & ~in[1] & in[0];

endmodule