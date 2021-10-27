module Clock14(output reg y);
    initial begin
        y = 1'b0;
    end
    always begin
        #4 y = 1'b1;
        #1 y = 1'b0;
    end
endmodule
module Clock28(output reg y);
    initial begin
        y = 1'b0;
    end
    
    always begin
        #8 y = 1'b1;
        #2 y = 1'b0;
    end
endmodule
module Clock11(output reg y);
    initial begin
        y = 1'b0;
    end
    
    always begin
        #1 y = 1'b1;
        #1 y = 1'b0;
    end
endmodule
module Clock12(output reg y);
    initial begin
        y = 1'b0;
    end
    
    always begin
        #2 y = 1'b1;
        #1 y = 1'b0;
    end
endmodule
