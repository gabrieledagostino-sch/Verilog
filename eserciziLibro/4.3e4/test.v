module main ();
    reg  [3:0]a;
    wire      y;
    integer   i;

    initial begin
        a <= 0;
    end

    XOR4 myxor(y,a);

    initial begin
        $dumpfile("xor4.vcd");
        $dumpvars;

        #1
        for (i = 0 ; i < 16; i++) begin
            #1 a = i;
        end
        #1
        a<=0;
        #4
        $finish;
    end

endmodule