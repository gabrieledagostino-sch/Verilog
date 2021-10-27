module main ();
    wire [7:0]y;
    reg  [7:0]a;
    reg  [7:0]b;
    reg       c;

    initial 
        begin
            a = 0;
            b = 0;
            c = 0;
        end

    mux #(8) m(y, a,b,c);

    initial 
    begin
        $dumpfile("mux.vcd");
        $dumpvars;
        #1
        a = 7'b0011001;
        b = 7'b0101010;
        #5
        c = 1;
        #10;
        $finish;
    end

endmodule