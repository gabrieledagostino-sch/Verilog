primitive myPrim(
    output y,
    input a,
    input b,
    input c
);
    table
        0 0 1 : 0;
        ? 1 0 : 0;
        1 1 ? : 0;
        1 0 ? : 1;
        0 1 1 : 1;
        ? 0 0 : 1;
    endtable

endprimitive