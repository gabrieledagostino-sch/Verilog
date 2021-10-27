module main();
    reg  [7:0]a;
    reg  [7:0]b;
    wire [7:0]z;
    wire cout;
    integer i;
    integer j;

    initial begin
        a <= 0;
        b <= 0;
    end

    adder88 aluAdd(cout,z,a,b,1'b0);

    initial begin
        $dumpfile("adder.vcd");
        $dumpvars;
        for (i = 0; i < 128; i++) begin
            for (j = 0; j < 128; j++) begin
                #1
                a <= i;
                b <= j;
            end
        end
        #5
        $finish;
    end

endmodule