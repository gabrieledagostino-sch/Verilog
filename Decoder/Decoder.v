module decoder (out,in);
    output reg [3: 0]out;
    input  reg [1: 0]   in ;

    assign
        begin
            out[0] = ~in[0] & ~in[1];
            out[1] =  in[0] & ~in[1];
            out[2] = ~in[0] &  in[1];
            out[3] =  in[0] &  in[1];
        end

endmodule