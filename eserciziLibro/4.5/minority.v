module minority(y,a,b,c);
    output y;
    input  a;
    input  b;
    input  c;

    assign y = ~a&~b | ~b&~c | ~a&~c;

endmodule