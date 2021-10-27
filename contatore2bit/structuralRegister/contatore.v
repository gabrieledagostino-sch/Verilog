module contatore2b(
    output [1:0]num,
    input       inc,
    input       clk);
    
    reg hr;
    wire [1:0]fromRegister;
    wire [1:0]toRegister;

    initial begin
        hr = 1;
        #1 hr = 0;
    end

    register2b r(fromRegister, toRegister, clk, 1'b1, hr);
    statoUscita stato (toRegister, fromRegister, inc);
    statoUscita uscita(num, fromRegister, inc);

endmodule