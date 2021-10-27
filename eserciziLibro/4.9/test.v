module main();
    reg     a,b,c;
    wire    y;
    wire    z;
    integer i;

    initial begin
        a <= 0;
        b <= 0;
        c <= 0;
    end

    myPrim  mp(y,a,b,c);
    wire nc = ~c;
    mux4 mymux(z,nc,c,1'b1,1'b0,{a,b});

    initial begin
        $dumpfile("structModule.vcd");
        $dumpvars;

        for (i = 0; i < 8; i = i+1) begin
            #1 {a,b,c} = i;
        end
        #1 {a,b,c} = 0;
        #5 $finish;
    end

endmodule