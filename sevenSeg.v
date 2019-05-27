//SW[3:0] data inputs

//HEX0[6:0] output display

module sevenSeg(HEX0, SW);
    input [3:0] SW;
    output [6:0] HEX0;

    hex0 h0(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[0]) // output HEX0[0]
        );
    
    hex1 h1(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[1]) // output HEX0[1]
        );
    
    hex2 h2(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[2]) // output HEX0[2]
        );
    
    hex3 h3(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[3]) // output HEX0[3]
        );
    
    hex4 h4(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[4]) // output HEX0[4]
        );

    hex5 h5(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[5]) // output HEX0[5]
        );
    
    hex6 h6(
        .a(SW[3]),  // input c3
        .b(SW[2]),  // input c2
        .c(SW[1]),  // input c1
        .d(SW[0]),  // input c0
        .m(HEX0[6]) // output HEX0[6]
        );

endmodule

module hex0(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (a & b & ~c & d) | (a & ~b & c & d);

endmodule

module hex1(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~a & b & ~c & d) | (b & c & ~d) | (a & b & ~d) | (a & c & d);

endmodule

module hex2(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~a & ~b & c & ~d) | (a & b & ~d) | (a & b & c);

endmodule

module hex3(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~b & ~c & d) | (~a & b & ~c & ~d) | (b & c & d) | (a & ~b & c & ~d);

endmodule

module hex4(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~a & d) | (~a & b & ~c) | (~b & ~c & d);

endmodule

module hex5(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~a & ~b & d) | (~a & ~b & c) | (~a & c & d) | (a & b & ~c & d);

endmodule

module hex6(a, b, c, d, m);
    input a;
    input b;
    input c;
    input d;
    output m;

    assign m = (~a & ~b & ~c) | (~a & b & c & d) | (a & b & ~c & ~d);

endmodule
