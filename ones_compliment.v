module ones_compliment(
    input [3:0] A, B,
    output [3:0] Y
);

    wire [3:0]AplusB;
    wire [2:0]carries;
    wire [3:0]second_carries;
    wire around;
    
    full_adder fadd0(
        .A(A[0]),
        .B(~B[0]),
        .Y(AplusB[0]),
        .Cin(1'b0),
        .Cout(carries[0])
    );
    
    full_adder fadd1(
        .A(A[1]),
        .B(~B[1]),
        .Y(AplusB[1]),
        .Cin(carries[0]),
        .Cout(carries[1])
    );
    
    full_adder fadd2(
        .A(A[2]),
        .B(~B[2]),
        .Y(AplusB[2]),
        .Cin(carries[1]),
        .Cout(carries[2])
    );
    
    full_adder fadd3(
        .A(A[3]),
        .B(~B[3]),
        .Y(AplusB[3]),
        .Cin(carries[2]),
        .Cout(around)
    );
    
    full_adder fadd_real_0(
        .A(AplusB[0]),
        .B(1'b0),
        .Y(Y[0]),
        .Cin(around),
        .Cout(second_carries[0])
    );
    
    full_adder fadd_real_1(
        .A(AplusB[1]),
        .B(1'b0),
        .Y(Y[1]),
        .Cin(second_carries[0]),
        .Cout(second_carries[1])
    );
    
    full_adder fadd_real_2(
        .A(AplusB[2]),
        .B(1'b0),
        .Y(Y[2]),
        .Cin(second_carries[1]),
        .Cout(second_carries[2])
    );
    
    full_adder fadd_real_3(
        .A(AplusB[3]),
        .B(1'b0),
        .Y(Y[3]),
        .Cin(second_carries[2]),
        .Cout(second_carries[3])
    );
    
    
    
    
    

endmodule
    