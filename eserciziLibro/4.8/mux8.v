module mux8 (y,d0,d1,d2,d3,d4,d5,d6,d7,s);
    parameter   N           = 32;
    output reg [N-1:0]y         ;
    input      [  2:0]s         ;
    input      [N-1:0]d0        ;
    input      [N-1:0]d1        ;
    input      [N-1:0]d2        ;
    input      [N-1:0]d3        ;
    input      [N-1:0]d4        ;
    input      [N-1:0]d5        ;
    input      [N-1:0]d6        ;
    input      [N-1:0]d7        ;

    always @(d0,d1,d2,d3,d4,d5,d6,d7,s) begin
        case (s)
            0 : assign y = d0;
            1 : assign y = d1;
            2 : assign y = d2;
            3 : assign y = d3;
            4 : assign y = d4;
            5 : assign y = d5;
            6 : assign y = d6;
            7 : assign y = d7;
        endcase
    end
endmodule