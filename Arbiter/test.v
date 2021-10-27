module main();
    reg   a, b, c, d;
    wire o1,o2,o3,o4;

    initial begin
        a <= 1;
        b <= 1;
        c <= 1;
        d <= 1;
    end

    arbiter arb({o1,o2,o3,o4},{a,b,c,d});

    initial begin
        $dumpfile("arbiter.vcd");
        $dumpvars;
        #5 
            a<=0;
        #5 
            b<=0;
        #5 
            c<=0;
        #5
            d<=0;
        #5
        $finish;
    end
    
endmodule