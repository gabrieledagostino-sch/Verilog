module nandD(y,a,b);
    output reg y;
    input      a;
    input      b;

    always @(a,b) begin
        #1 y = ~(a&b);
    end

endmodule