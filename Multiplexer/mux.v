module mux (z, a, b, c);
    parameter        N = 16;
    output    [N-1:0]z;
    input     [N-1:0]a;
    input     [N-1:0]b;
    input            c;

    assign z = c? b : a;
endmodule