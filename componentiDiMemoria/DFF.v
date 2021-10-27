module DFlipFlop(output q, output nq, input d, input clk);
    wire w1;
    wire nclk = ~clk;

    DLatch master(w1,   ,  d, nclk);
    DLatch slave ( q, nq, w1,  clk);

endmodule