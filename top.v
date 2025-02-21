module top(
    input [1:0]sw,
    output [1:0]led
);
    half_sub half_sub1(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
    );
    
    ones_compliment ones_compliment1(
        .A(sw[5:2]),
        .B(sw[9:6]),
        .Y(led[5:2])
    );
    
    twos_compliment twos_compliment1(
	   .A(sw[9:2]),
	   .Y(sw[13:6])
	);
    
endmodule