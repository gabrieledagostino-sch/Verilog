module DLatch(output q, output nq, input d, input clk);
    wire set   =   d | ~clk;
    wire reset =  ~d | ~clk;

    SRLatch internsrl(q,nq,set,reset);
endmodule