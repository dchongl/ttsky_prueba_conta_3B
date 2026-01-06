module BCD(
    input logic [7:0] dec,
    output logic [3:0] d1,
    output logic [3:0] d2,
    output logic [3:0] d3
    );

    logic carry;
    logic [7:0] dato;
    logic [11:0] cadena;

    always_comb begin : dectobcd

    d1 = 4'd0;
    d2 = 4'd0;
    d3 = 4'd0;
    dato = dec;

    for (int i = 0; i < 8; i++ ) begin

        if (d1 >= 4'd5) begin
            d1 = d1 + 4'd3;
        end

        if (d2 >= 4'd5) begin
            d2 = d2+4'd3;
        end

        if (d3 >= 4'd5) begin
            d3 = d3 + 4'd3;
        end
        cadena = {d3, d2, d1}; // 0000 0000 0000 
        carry = dato[7];        // 7654 3210 carry = 7
        dato = dato << 1;        // dato = 6543 2100 
        cadena = cadena << 1;  // 0000 0000 0000
        cadena[0] = carry;     // 0000 0000 0007
        d1 = cadena[3:0];
        d2 = cadena[7:4];
        d3 = cadena[11:8];
    end     
    end
endmodule
