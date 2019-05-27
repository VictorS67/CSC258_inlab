//SW[3:0] data inputs
//SW[9:8] select signal

//LEDR[0] output display

module mux4to1(LEDR, SW);
    input [9:0] SW;
    output [9:0] LEDR;
    wire [1:0] M;

    mux2to1 u0(
        .x(SW[0]), // input u
        .y(SW[1]), // input x
        .s(SW[9]), // input s0
        .m(M[0])   // wire M[0]
        );
    
    mux2to1 u1(
        .x(SW[2]), // input v
        .y(SW[3]), // input w
        .s(SW[9]), // input s0
        .m(M[1])   // wire M[1]
        );
    
    mux2to1 u2(
        .x(M[0]),  // output of M[0]
        .y(M[1]),  // output of M[1]
        .s(SW[8]), // input s1
        .m(LEDR[0])// output m
        );

endmodule

module mux2to1(x, y, s, m);
    input x; //selected when s is 0
    input y; //selected when s is 1
    input s; //select signal
    output m; //output
  
    assign m = s & y | ~s & x;

endmodule