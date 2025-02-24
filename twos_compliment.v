module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);

    wire [7:0] ones_compliment;      
    wire [6:0] carries;          

   
    assign ones_compliment = ~A;

    full_adder fadd0(
        .A(ones_compliment[0]),
        .B(1'b1),
        .Y(Y[0]),
        .Cin(1'b0),
        .Cout(carries[0])
    );
   
    full_adder fadd1(
        .A(ones_compliment[1]),
        .B(1'b0),
        .Y(Y[1]),
        .Cin(carries[0]),
        .Cout(carries[1])
    );

    full_adder fadd2(
        .A(ones_compliment[2]),
        .B(1'b0),
        .Y(Y[2]),
        .Cin(carries[1]),
        .Cout(carries[2])
    );

    full_adder fadd3(
        .A(ones_compliment[3]),
        .B(1'b0),
        .Y(Y[3]),
        .Cin(carries[2]),
        .Cout(carries[3])
    );

    full_adder fadd4(
        .A(ones_compliment[4]),
        .B(1'b0),
        .Y(Y[4]),
        .Cin(carries[3]),
        .Cout(carries[4])
    );

    full_adder fadd5(
        .A(ones_compliment[5]),
        .B(1'b0),
        .Y(Y[5]),
        .Cin(carries[4]),
        .Cout(carries[5])
    );

    full_adder fadd6(
        .A(ones_compliment[6]),
        .B(1'b0),
        .Y(Y[6]),
        .Cin(carries[5]),
        .Cout(carries[6])
    );

    full_adder fadd7(
        .A(ones_compliment[7]),
        .B(1'b0),
        .Y(Y[7]),
        .Cin(carries[6]),
        .Cout()
    );
endmodule