module main();
    reg set,reset;
    reg d;
    output q,notq;
    output dq,dnq;
    output fq,fnq;
    wire clk;

    initial begin
        d     <= 0;
        reset <= 1;
        set   <= 0;
    end

    Clock28    clkm(clk);
    SRLatch    srl(q,notq,set,reset);
    DLatch     dl(dq,dnq,d,clk);
    DFlipFlop dff(fq,fnq,d,clk);

    initial begin
        $dumpfile("srlatch.vcd");
        $dumpvars;

        #5 
            d     <= 1;
            set   <= 1;
            reset <= 0;
        #5
            d     <= 0;
            set   <= 1;
            reset <= 1;
        #5
            d     <= 1;
            reset <= 1;
            set   <= 0;
        #3
            d     <= 1;
            set   <= 1;
            reset <= 1;
        #1  d     <= 0;
        #2  d     <= 1;
        #4
            d     <= 0;
            set   <= 0;
            reset <= 0;
        #5
            reset <= 1;
            set   <= 0;
        #5
            set   <= 1;
            reset <= 1;
        #5 $finish;
    end
endmodule