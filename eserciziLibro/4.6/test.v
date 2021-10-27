module main();
    reg  [3:0]a;
    wire [6:0]y;
    integer i;

    initial begin
        a <= 0;
    end

    hexD hd(y,a);

    initial begin
        $dumpfile("hexDisplay.vcd");
        $dumpvars;

        for (i = 0; i < 16; i++) begin
            #1 a = i;
        end
        #1  a = 0;
        #5  $finish;
    end

endmodule