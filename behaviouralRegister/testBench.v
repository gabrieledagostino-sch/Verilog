`include "./register.v"
`include "./clock.v"

module main();
    reg  [15:0]  x;
    reg         we;
    wire [15:0]out;
    wire       clk;

    initial begin
        x  <= 0;
        we <= 1;
    end

    Clock14    clock (clk            );
    register #(16) r (out, x, we, clk);

    initial begin
        $dumpfile("register.vcd");
        $dumpvars;

        #5 x  <= 1;
           we <= 0;
        #5 we <= 1;
        #5 x  <=13;
        #5 x  <= 6;
           we <= 0;
        #5 we <= 1;

        #5 $finish;
    end

endmodule