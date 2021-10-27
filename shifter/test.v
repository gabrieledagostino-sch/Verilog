module main();
    reg  [7:0]in;
    reg  [2:0]b ;
    wire [7:0]rout;
    wire [7:0]lout;
    wire [7:0]aout;


    initial begin
        in <= -7'd16;
        b  <= 0;
    end

    rotation        r(rout,in,b);
    logicShift      s(lout,in,b);
    arithmeticShift a(aout,in,b);

    initial begin
        $dumpfile("shifters.vcd");
        $dumpvars;
        #5
        b = 3'b000;
        #5
        b = 3'b001;
        #5
        b = 3'b010;
        #5
        b = 3'b011;
        #5
        b = 3'b100;
        #5
        b = 3'b101;
        #5
        b = 3'b111;
        #5
        $finish;
    end

endmodule
