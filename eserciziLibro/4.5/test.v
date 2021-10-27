module main();
    reg a,b,c;
    wire y;
    integer i;

    initial begin
        a <= 0;
        b <= 0;
        c <= 0;
    end

    minority m(y,a,b,c);

    initial begin
        $dumpfile("minority.vcd");
        $dumpvars;

        for (i = 0; i < 8; i++) begin
            #1 {a,b,c} = i;
        end
        #1
        $finish;
    end

endmodule