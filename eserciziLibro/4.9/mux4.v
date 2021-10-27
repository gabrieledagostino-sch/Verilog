module mux4(z,a,b,c,d,s);
    output reg z;
    input      a;
    input      b;
    input      c;
    input      d;
    input [1:0]s;

    always @(a,b,c,d,s) begin
        case (s)
           0 : assign z = a;
           1 : assign z = b;
           2 : assign z = c;
           3 : assign z = d;
        endcase
    end

endmodule