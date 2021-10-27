module main ();
    reg     [7:0]d[0:7]    ;
    reg     [2:0]control   ;
    wire    [7:0]out       ;
    integer i              ;
    integer j              ;

    initial begin
        for (i = 0; i<8; i = i+1) begin
            d[i] <= i+10;
        end
        control <= 0;
    end

    mux8 #(8) m(out,d[0],d[1],d[2],d[3],d[4],d[5],d[6],d[7],control);

    initial begin
        $dumpfile("mux8.vcd");
        $dumpvars;

        for (j = 0; j < 8; j = j+1) begin
            #1 control = j;
        end
        #1 control = 0;
        #5 $finish;
    end

endmodule