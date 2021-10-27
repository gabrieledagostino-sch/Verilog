module main();
    reg [1:0]in;
    wire out1;
    wire out2;
    wire out3;
    wire out4;

    initial begin
        in = 0;
    end

    decoder d({out1,out2,out3,out4}, in);

    initial begin
        $dumpfile ("decoder.vcd");
        $dumpvars
        #5
        in = 1;
        #5
        in = 2;
        #5
        in = 3;
        #5
        $finish
    end

endmodule