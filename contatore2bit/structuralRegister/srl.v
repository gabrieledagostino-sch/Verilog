module SRLatch (output y, output ny, input s, input r);

    nandD n1(ny,s,y);
    nandD n2(y,r,ny);

endmodule