module demux (o1, o2, o3, o4, c, in);
    parameter N = 32;
    output reg [N-1:0]o1;
    output reg [N-1:0]o2;
    output reg [N-1:0]o3;
    output reg [N-1:0]o4;
    input      [1:0]c;
    input      [N-1:0]in;
    
    always @(c,in) begin
        case (c)
            2'b00:
            begin
                o1 = in;
                o2 = 0;
                o3 = 0;
                o4 = 0;
            end
            2'b01:
            begin
                o1 = 0;
                o2 = in;
                o3 = 0;
                o4 = 0;
            end
            2'b10:
            begin
                o1 = 0;
                o2 = 0;
                o3 = in;
                o4 = 0;
            end
            2'b11:
            begin
                o1 = 0;
                o2 = 0;
                o3 = 0;
                o4 = in;
            end
        endcase
    end

endmodule