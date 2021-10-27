module statoUscita(
    output [1:0]newState,
    input     [1:0]state,
    input            inc);

    assign newState[0] =  state[0] &      ~inc | ~state[0] & inc;
    assign newState[1]=   state[1] &      ~inc | 
                          state[1] & ~state[0] | 
                         ~state[1] &  state[0] & inc;

endmodule