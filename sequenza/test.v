module main();
    reg    a;
    wire out;
    wire clk;


    initial begin
        a = 0;
    end

    Clock14  c(      clk);
    net     sq(out,a,clk);

    initial begin
        $dumpfile("seq.vcd");
        $dumpvars;

        #5  //10
        a = 0;
        #5  //100
        a = 0;
        #5  //1001
        a = 1;
        #5  //10011
        a = 1;
        #5  //100111
        a = 1;
        #5  //1001110
        a = 0;
        #5  //10011100
        a = 0;

        #5 $finish;
    end

endmodule