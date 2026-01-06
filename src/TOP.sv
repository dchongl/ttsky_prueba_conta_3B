module D7S(
    input logic clk,
    input logic rst,
    output logic [2:0] transistor,
    output logic [6:0] d7sp
    );
   
    logic [7:0] middle_count;
    logic [3:0] middle_d1;
    logic [3:0] middle_d2;
    logic [3:0] middle_d3;
    logic [6:0] middle_d7s1;
    logic [6:0] middle_d7s2;
    logic [6:0] middle_d7s3;

    control control1(
        .clk(clk),
        .rst(rst),
        .count(middle_count)
    );

    BCD BCD1(
        .dec(middle_count),
        .d1(middle_d1),
        .d2(middle_d2),
        .d3(middle_d3)
    );

    tabla tabla1(
        .d1(middle_d1),
        .d2(middle_d2),
        .d3(middle_d3),
        .d7s1(middle_d7s1),
        .d7s2(middle_d7s2),
        .d7s3(middle_d7s3)
    );

    repetidor repetidor1 (
        .clk(clk),
        .rst(rst),
        .d7s1(middle_d7s1),
        .d7s2(middle_d7s2),
        .d7s3(middle_d7s3),
        .d7sp(d7sp),
        .transistor(transistor)
    );

endmodule


