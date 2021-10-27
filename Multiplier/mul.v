module multiplier(z,a,b);
    output [7:0]z;
    input  [3:0]a;
    input  [3:0]b;
    wire [3:0] r0,r1,r2,r3;

    mul1b m0(r0, a, b[0]);
    mul1b m1(r1, a, b[1]);
    mul1b m2(r2, a, b[2]);
    mul1b m3(r3, a, b[3]);
    
    wire c1,c2,c3;
    wire [7:0] s1,s2;
    wire cout;

    adder88 sum0(
        c1,                                             //the carry of the first sum
        s1,                                             //the result
        {1'b0,1'b0,1'b0,1'b0,r0[3],r0[2],r0[1],r0[0]},  //the number r0 with 4 bit behind(the and of a and b[0])
        {1'b0,1'b0,1'b0,r1[3],r1[2],r1[1],r1[0],1'b0},  //the number r1 with 3 bit behind and one in front
        1'b0                                            //initial carry : 0
    );
    adder88 sum1(
        c2,
        s2,
        s1,
        {1'b0,1'b0,r2[3],r2[2],r2[1],r2[0],1'b0,1'b0},  //the number r2 with 2 bit behind and 2 in front
        c1
    );
    adder88 sum2(
        cout,
        z,
        s2,
        {1'b0,r3[3],r3[2],r3[1],r3[0],1'b0,1'b0,1'b0},  //the number r2 with 1 bit behind and 3 in front
        c2
    );

    assign z[7] = cout;

endmodule