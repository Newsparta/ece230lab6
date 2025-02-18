module top(
    input [9:0] sw,
    input [13:0] led
);

half_sub inst_half_sub(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);

ones_compliment inst_ones(
    .A(sw[5:2]),
    .B(sw[9:6]),
    .O(led[5:2])
);

endmodule