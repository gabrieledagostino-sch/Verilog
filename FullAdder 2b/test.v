module moduleName();
    wire [1:0]z;
    reg       a;
    reg       b;
    reg       c;

    initial 
        begin
            a = 0;
            b = 0;
            c = 0;
        end

    fullAdder fa (z[1], z[0], a, b, c);

    initial 
        begin
            $dumpfile("test.vcd");
            $dumpvars;
            #1
            a = 1;
            #5
            begin
                a <= 0;
                b <= 1;
            end
            #5
            begin
                a <= 1;
                b <= 0;
            end
            #5
            begin
                a <= 1;
                b <= 1;
            end
            #5
            begin
                a <= 0;
                b <= 0;
                c <= 1;
            end
            #5
            begin
                a <= 0;
                b <= 1;
            end
            #5
            begin
                a <= 1;
                b <= 0;
            end
            #5
            begin
                a <= 1;
                b <= 1;
            end
            #10
            $finish;
        end

    
endmodule