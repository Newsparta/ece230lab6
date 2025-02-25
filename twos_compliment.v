module twos_complement(
    input [7:0] A,
    output [7:0] O
);
    wire [7:0] inverted;
    wire [7:0] carry;

    // Invert the bits to get 1's complement
    assign inverted = ~A;

    // Add 1 to get 2's complement and assign directly to O
    full_adder inst_full_adder_1(
        .A(inverted[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(O[0]),
        .Cout(carry[0])
    );

    full_adder inst_full_adder_2(
        .A(inverted[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(O[1]),
        .Cout(carry[1])
    );

    full_adder inst_full_adder_3(
        .A(inverted[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(O[2]),
        .Cout(carry[2])
    );

    full_adder inst_full_adder_4(
        .A(inverted[3]),
        .B(1'b0),
        .Cin(carry[2]),
        .Y(O[3]),
        .Cout(carry[3])
    );

    full_adder inst_full_adder_5(
        .A(inverted[4]),
        .B(1'b0),
        .Cin(carry[3]),
        .Y(O[4]),
        .Cout(carry[4])
    );

    full_adder inst_full_adder_6(
        .A(inverted[5]),
        .B(1'b0),
        .Cin(carry[4]),
        .Y(O[5]),
        .Cout(carry[5])
    );

    full_adder inst_full_adder_7(
        .A(inverted[6]),
        .B(1'b0),
        .Cin(carry[5]),
        .Y(O[6]),
        .Cout(carry[6])
    );

    full_adder inst_full_adder_8(
        .A(inverted[7]),
        .B(1'b0),
        .Cin(carry[6]),
        .Y(O[7]),
        .Cout(carry[7])
    );

endmodule
