module register(output [N-1:0]q, input [N-1:0]d, input we, input clk);
    parameter N = 32;
    reg [N-1:0]state;
    reg [N-1:0]newState;

    always @(we, d) begin
        if (we)
            newState <= d;
    end

    always @(posedge clk) begin
        state <= newState;
    end

    assign q = state;

endmodule