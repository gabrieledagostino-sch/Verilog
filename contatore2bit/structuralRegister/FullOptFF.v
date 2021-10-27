module HRWeDFlipFlor(output q,output nq, input hr, input we, input d, input clk);

    wire Wd =     d & ~hr;
    wire W3 =  ~clk &  we;
    wire W4 =    W3 |  hr;
    wire W5 =   clk |  hr;
    wire W1              ;
    wire W2 =    W1 & ~hr;
    
    DLatch master(W1,   , Wd, W4);
    DLatch slave ( q, nq, W2, W5);

endmodule