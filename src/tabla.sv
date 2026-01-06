module tabla(
    input logic [3:0] d1,
    input logic [3:0] d2,
    input logic [3:0] d3,
    output logic [6:0] d7s1,
    output logic [6:0] d7s2,
    output logic [6:0] d7s3 
    );

    always_comb begin : tabla_de_prioridad_para_d1

    case (d1)
                    //ABCDEFG++
        4'd1: d7s1 =~7'b0110000;
        4'd2: d7s1 =~7'b1101101;
        4'd3: d7s1 =~7'b1111001;
        4'd4: d7s1 =~7'b0110011;
        4'd5: d7s1 =~7'b1011011;
        4'd6: d7s1 =~7'b1011111;
        4'd7: d7s1 =~7'b1110000;
        4'd8: d7s1 =~7'b1111111;
        4'd9: d7s1 =~7'b1111011;
        4'd0: d7s1 =~7'b1111110;
        default: d7s1 = ~7'b1111110;
    endcase

    end


    always_comb begin : tabla_de_prioridad_para_d2

    case (d2)
                    //ABCDEFG++
        4'd1: d7s2 =~7'b0110000;
        4'd2: d7s2 =~7'b1101101;
        4'd3: d7s2 =~7'b1111001;
        4'd4: d7s2 =~7'b0110011;
        4'd5: d7s2 =~7'b1011011;
        4'd6: d7s2 =~7'b1011111;
        4'd7: d7s2 =~7'b1110000;
        4'd8: d7s2 =~7'b1111111;
        4'd9: d7s2 =~7'b1111011;
        4'd0: d7s2 =~7'b1111110;
        default: d7s2 = ~7'b1111110;
    endcase

    end


    always_comb begin : tabla_de_prioridad_para_d3

    case (d3)
                    //ABCDEFG++
        4'd1: d7s3 =~7'b0110000;
        4'd2: d7s3 =~7'b1101101;
        4'd3: d7s3 =~7'b1111001;
        4'd4: d7s3 =~7'b0110011;
        4'd5: d7s3 =~7'b1011011;
        4'd6: d7s3 =~7'b1011111;
        4'd7: d7s3 =~7'b1110000;
        4'd8: d7s3 =~7'b1111111;
        4'd9: d7s3 =~7'b1111011;
        4'd0: d7s3 =~7'b1111110;
        default: d7s3 =~7'b1111110;
    endcase

    end

endmodule