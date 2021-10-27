module hexD(y,a);
    output reg [6:0] y;
    input      [3:0] a;

    always @(a) begin
        case (a)
            0 : assign y =  63; //0
            1 : assign y =   6; //1
            2 : assign y =  91; //2
            3 : assign y =  79; //3
            4 : assign y = 102; //4
            5 : assign y = 109; //5
            6 : assign y = 125; //6
            7 : assign y =   7; //7
            8 : assign y = 127; //8
            9 : assign y = 111; //9
            10: assign y =  95; //A
            11: assign y = 124; //b
            12: assign y =  88; //c
            13: assign y = 110; //d
            14: assign y = 121; //E
            15: assign y = 113; //F
        endcase
    end

endmodule