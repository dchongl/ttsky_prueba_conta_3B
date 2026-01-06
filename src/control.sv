module control(
    input  logic clk,
    input  logic rst,
    output logic [7:0] count
);
    logic [25:0] buffer;

    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            buffer <= 26'd0;
            count  <= 8'd0;
        end
        else if (buffer == 9) begin
            buffer <= 26'd0;
            count  <= count + 1;
        end
        else begin
            buffer <= buffer + 1;
        end
    end

endmodule
