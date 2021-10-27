module contatore2b(output [1:0]y, input inc, input clock);
    reg [1:0] state;

    initial begin
        state <= 0;
    end

    always @(posedge clock) begin
        state <= state + inc;
    end
    
    assign y = state+inc;


endmodule