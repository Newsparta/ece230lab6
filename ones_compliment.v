module ones_compliment(
    input [3:0]A,
    input [3:0]B,
    output [3:0]O
);
    
    wire [3:0] firstCarry;
    wire [3:0] finalCarry;
    wire [3:0] tempSum;
    
    // first addition
    full_adder inst_full_adder_1(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(tempSum[0]),
        .Cout(firstCarry[0])
    );
    
    full_adder inst_full_adder_2(
        .A(A[1]),
        .B(B[1]),
        .Cin(firstCarry[0]),
        .Y(tempSum[1]),
        .Cout(firstCarry[1])
    );
    
    full_adder inst_full_adder_3(
        .A(A[2]),
        .B(B[2]),
        .Cin(firstCarry[1]),
        .Y(tempSum[2]),
        .Cout(firstCarry[2])
    );
    
    full_adder inst_full_adder_4(
        .A(A[3]),
        .B(B[3]),
        .Cin(firstCarry[2]),
        .Y(tempSum[3]),
        .Cout(firstCarry[3])
    );
    
    // second addition
    full_adder inst_full_adder_2_1(
        .A(tempSum[0]),
        .B(1'b0),
        .Cin(firstCarry[3]),
        .Y(O[0]),
        .Cout(finalCarry[0])
    );
    
    full_adder inst_full_adder_2_2(
        .A(tempSum[1]),
        .B(1'b0),
        .Cin(finalCarry[0]),
        .Y(O[1]),
        .Cout(finalCarry[1])
    );
    
    full_adder inst_full_adder_2_3(
        .A(tempSum[2]),
        .B(1'b0),
        .Cin(finalCarry[1]),
        .Y(O[2]),
        .Cout(finalCarry[2])
    );
    
    full_adder inst_full_adder_2_4(
        .A(tempSum[3]),
        .B(1'b0),
        .Cin(finalCarry[2]),
        .Y(O[3]),
        .Cout(finalCarry[3])
    );

endmodule 