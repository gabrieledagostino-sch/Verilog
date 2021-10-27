module test();
    reg     [1:0]state;
    wire    [1:0]out;
    wire         clk;
    reg           hr;
    initial begin
        hr = 1;
        #1 hr = 0;
        #1 state = 0;
    end

    Clock14    clock(clk);
    register2b r(out,state,clk, 1'b1, hr);

    initial begin
        $dumpfile("register.vcd");
        $dumpvars;

        #5 state = 2;
        #5 state = 3;
        #5 state = 1;
        #5 state = 3;

        #5 $finish;
    end

endmodule