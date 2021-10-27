module register2b(output[1:0] y, input [1:0]x, input clk, input we, input hr);

    HRWeDFlipFlor  a(y[0], , hr, we, x[0], clk);
    HRWeDFlipFlor  b(y[1], , hr, we, x[1], clk);

endmodule