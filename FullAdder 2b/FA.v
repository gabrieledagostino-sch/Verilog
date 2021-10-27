module fullAdder (cout,z , a, b, cin);
    output cout;
    output    z;
    input     a;
    input     b;
    input   cin;
    //cout é vero solo se almeno due fra a e b lo sono, z é vero se un numero dispari di input lo é
    assign z     = (!cin && !a && b) || (!cin && a && !b) || (cin && !a && !b) || (cin && a && b);
    assign cout  = (a && b) || (b && cin) || (a && cin);
endmodule