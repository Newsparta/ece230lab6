module twos_complement(
    input [7:0] A,
    output [7:0] O
);
    wire [7:0] inverted;
    wire [7:0] firstCarry;
    wire [7:0] tempSum;
    wire [7:0] finalCarry;

    // Invert the bits to get 1's complement
    assign inverted = ~A;

    // Add 1 to get 2's complement
    full_adder inst_full_adder_1(
        .A(inverted[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(tempSum[0]),
        .Cout(firstCarry[0])
    );

    full_adder inst_full_adder_2(
        .A(inverted[1]),
        .B(1'b0),
        .Cin(firstCarry[0]),
        .Y(tempSum[1]),
        .Cout(firstCarry[1])
    );

    full_adder inst_full_adder_3(
        .A(inverted[2]),
        .B(1'b0),
        .Cin(firstCarry[1]),
        .Y(tempSum[2]),
        .Cout(firstCarry[2])
    );

    full_adder inst_full_adder_4(
        .A(inverted[3]),
        .B(1'b0),
        .Cin(firstCarry[2]),
        .Y(tempSum[3]),
        .Cout(firstCarry[3])
    );

    full_adder inst_full_adder_5(
        .A(inverted[4]),
        .B(1'b0),
        .Cin(firstCarry[3]),
        .Y(tempSum[4]),
        .Cout(firstCarry[4])
    );

    full_adder inst_full_adder_6(
        .A(inverted[5]),
        .B(1'b0),
        .Cin(firstCarry[4]),
        .Y(tempSum[5]),
        .Cout(firstCarry[5])
    );

    full_adder inst_full_adder_7(
        .A(inverted[6]),
        .B(1'b0),
        .Cin(firstCarry[5]),
        .Y(tempSum[6]),
        .Cout(firstCarry[6])
    );

    full_adder inst_full_adder_8(
        .A(inverted[7]),
        .B(1'b0),
        .Cin(firstCarry[6]),
        .Y(tempSum[7]),
        .Cout(firstCarry[7])
    );

    // Output the final result
    assign O = tempSum;

endmodule
