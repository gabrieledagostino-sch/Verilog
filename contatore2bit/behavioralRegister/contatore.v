`include "./behavioralRegister/register.v"
`include "./behavioralRegister/stato.v"

module contatore2b(output [1:0]y, input inc, input clk);
    wire [1:0]regOut;
    wire [1:0] regIn;

    register    #(2) state(regOut,  regIn, 1'b1, clk, 2'b00);
    statoUscita  nextState( regIn, regOut, inc);
    statoUscita    foutput(     y, regOut, inc);

endmodule