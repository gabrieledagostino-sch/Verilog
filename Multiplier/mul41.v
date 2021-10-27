module mul1b (z,a,b);
    output [3:0] z;
    input  [3:0] a;
    input        b;

    assign z[0] = a[0] & b;
    assign z[1] = a[1] & b;
    assign z[2] = a[2] & b;
    assign z[3] = a[3] & b;
endmodule