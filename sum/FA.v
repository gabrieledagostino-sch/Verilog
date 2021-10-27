module fullAdder (cout,z , a, b, cin);
    output cout;
    output    z;
    input     a;
    input     b;
    input   cin;
    
    assign z     = (!cin && !a && b) || (!cin && a && !b) || (cin && !a && !b) || (cin && a && b);
    assign cout  = (a && b) || (b && cin) || (a && cin);
endmodule