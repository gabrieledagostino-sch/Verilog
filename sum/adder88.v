module adder88(cout,z,x,y,cin);
    output      cout;
    output [7:0]z   ;
    input  [7:0]x   ;
    input  [7:0]y   ;
    input       cin ;

    wire a1,a2,a3,a4,a5,a6,a7;

    fullAdder fa0(a1,   z[0], x[0], y[0], cin);
    fullAdder fa1(a2,   z[1], x[1], y[1], a1 );
    fullAdder fa2(a3,   z[2], x[2], y[2], a2 );
    fullAdder fa3(a4,   z[3], x[3], y[3], a3 );
    fullAdder fa4(a5,   z[4], x[4], y[4], a4 );
    fullAdder fa5(a6,   z[5], x[5], y[5], a5 );
    fullAdder fa6(a7,   z[6], x[6], y[6], a6 );
    fullAdder fa7(cout, z[7], x[7], y[7], a7 );

endmodule