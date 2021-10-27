module test();
    reg x;
    wire [1:0]out;
    wire clk;

    initial begin
        x <= 0;
    end

    Clock14 clock(clk);
    contatore2b count(out,x, clk);

    initial begin
        $dumpfile("test.vcd");
        $dumpvars;

        #5 x = 1;
        #5 x = 0;
        #5 x = 1;
        #5 x = 1;
        #5 x = 0;
        #5 x = 1;
        #5 x = 0;
        #5 x = 1;
        #5 x = 0;

        #5 $finish;
    end

endmodule