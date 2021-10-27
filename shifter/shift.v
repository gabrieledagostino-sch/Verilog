module rotation(z,a,b);
    output [7:0]z;
    input  [7:0]a;
    input  [2:0]b;

    wire [7:0] w1 = {a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]};    //c = 000\                                        //c = 000\
    wire [7:0] w2 = {a[0],a[7],a[6],a[5],a[4],a[3],a[2],a[1]};    //c = 001/\
    wire [7:0] w3 = {a[1],a[0],a[7],a[6],a[5],a[4],a[3],a[2]};    //c = 010\/\
    wire [7:0] w4 = {a[2],a[1],a[0],a[7],a[6],a[5],a[4],a[3]};    //c = 011/  \
    wire [7:0] w5 = {a[3],a[2],a[1],a[0],a[7],a[6],a[5],a[4]};    //c = 100\  /
    wire [7:0] w6 = {a[4],a[3],a[2],a[1],a[0],a[7],a[6],a[5]};    //c = 101/\/
    wire [7:0] w7 = {a[5],a[4],a[3],a[2],a[1],a[0],a[7],a[6]};    //c = 110\/
    wire [7:0] w8 = {a[6],a[5],a[4],a[3],a[2],a[1],a[0],a[7]};    //c = 111/
    
    wire [7:0] z00x,z01x,z10x,z11x;
    wire [7:0] z0xx,z1xx;
    wire [7:0] zxxx; // = z

    mux #(8) m00x(z00x, w1,w2,b[0]), m01x(z01x,w3,w4,b[0]), m10x(z10x,w5,w6,b[0]), m11x(z11x,w7,w8,b[0]);
    mux #(8) m0xx(z0xx, z00x, z01x,b[1]), m1xx(z1xx, z10x, z11x,b[1]);
    mux #(8) mxxx(zxxx, z0xx, z1xx,b[2]);

    assign z = zxxx;
    
endmodule
module logicShift(z,a,b);
    output [7:0]z;
    input  [7:0]a;
    input  [2:0]b;
    
    wire [7:0] w1 = {a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]};    //c = 000\                                        //c = 000\
    wire [7:0] w2 = {1'b0,a[7],a[6],a[5],a[4],a[3],a[2],a[1]};    //c = 001/\
    wire [7:0] w3 = {1'b0,1'b0,a[7],a[6],a[5],a[4],a[3],a[2]};    //c = 010\/\
    wire [7:0] w4 = {1'b0,1'b0,1'b0,a[7],a[6],a[5],a[4],a[3]};    //c = 011/  \
    wire [7:0] w5 = {1'b0,1'b0,1'b0,1'b0,a[7],a[6],a[5],a[4]};    //c = 100\  /
    wire [7:0] w6 = {1'b0,1'b0,1'b0,1'b0,1'b0,a[7],a[6],a[5]};    //c = 101/\/
    wire [7:0] w7 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[7],a[6]};    //c = 110\/
    wire [7:0] w8 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[7]};    //c = 111/

    wire [7:0] z00x,z01x,z10x,z11x;
    wire [7:0] z0xx,z1xx;
    wire [7:0] zxxx; // = z

    mux #(8) m00x(z00x, w1,w2,b[0]), m01x(z01x,w3,w4,b[0]), m10x(z10x,w5,w6,b[0]), m11x(z11x,w7,w8,b[0]);
    mux #(8) m0xx(z0xx, z00x, z01x,b[1]), m1xx(z1xx, z10x, z11x,b[1]);
    mux #(8) mxxx(zxxx, z0xx, z1xx,b[2]);

    assign z = zxxx;

endmodule
module arithmeticShift(z,a,b);
    output [7:0]z;
    input  [7:0]a;
    input  [2:0]b;
    
    wire [7:0] w1 = {a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]};    //c = 000\                                        //c = 000\
    wire [7:0] w2 = {a[7],a[7],a[6],a[5],a[4],a[3],a[2],a[1]};    //c = 001/\
    wire [7:0] w3 = {a[7],a[7],a[7],a[6],a[5],a[4],a[3],a[2]};    //c = 010\/\
    wire [7:0] w4 = {a[7],a[7],a[7],a[7],a[6],a[5],a[4],a[3]};    //c = 011/  \
    wire [7:0] w5 = {a[7],a[7],a[7],a[7],a[7],a[6],a[5],a[4]};    //c = 100\  /
    wire [7:0] w6 = {a[7],a[7],a[7],a[7],a[7],a[7],a[6],a[5]};    //c = 101/\/
    wire [7:0] w7 = {a[7],a[7],a[7],a[7],a[7],a[7],a[7],a[6]};    //c = 110\/
    wire [7:0] w8 = {a[7],a[7],a[7],a[7],a[7],a[7],a[7],a[7]};    //c = 111/

    wire [7:0] z00x,z01x,z10x,z11x;
    wire [7:0] z0xx,z1xx;
    wire [7:0] zxxx; // = z

    mux #(8) m00x(z00x, w1,w2,b[0]), m01x(z01x,w3,w4,b[0]), m10x(z10x,w5,w6,b[0]), m11x(z11x,w7,w8,b[0]);
    mux #(8) m0xx(z0xx, z00x, z01x,b[1]), m1xx(z1xx, z10x, z11x,b[1]);
    mux #(8) mxxx(zxxx, z0xx, z1xx,b[2]);

    assign z = zxxx;

endmodule