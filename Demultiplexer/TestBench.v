module main();
    reg  [7:0]in;
    reg  [1:0]c;
    wire [7:0]o1;
    wire [7:0]o2;
    wire [7:0]o3;
    wire [7:0]o4;
    
    
    initial
    begin
        c = 2'b00;
        in = 15;
    end

    demux #8 dm(o1,o2,o3,o4,c,in);

    initial
    begin
        $dumpfile ("demux.vcd");
        $dumpvars;
        #5
        c = 2'b01;
        #5
        c = 2'b10;
        #5
        c = 2'b11;
        #10
        $finish;
    end

endmodule