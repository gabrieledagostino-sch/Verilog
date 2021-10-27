module main();
    reg  [3:0] a,b;
    wire [7:0] y;
    integer i,j;

    initial begin
        a = 0;
        b = 0;
    end

    multiplier mul(y,a,b);

    initial begin
        $dumpfile ("multiplier.vcd");
        $dumpvars;
        for (i = 1; i < 3; i++) begin
            for (j = 0; j < 6; j++) begin
                #1
                a <= i;
                b <= j;
            end
        end
        #1
        a<=0;
        b<=0;
        #5
        $finish;
    end

endmodule