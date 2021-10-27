module net(out, in, clk);
    output out;
    input   in;
    input  clk;
    reg      s;

    initial s = 0;

    always @(posedge clk) begin
        s <= s ^ in;
    end

    assign out = ~(s ^ in);


endmodule