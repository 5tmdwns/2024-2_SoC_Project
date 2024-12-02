module LFSR16B (
    input wire CLK,
    input wire RSTN,
    output reg [15:0] OUT
);
    wire TEMP_OUT;

    // Polynomial: x^16 + x^15 + x^13 + x^4 + 1 (0b1100000000001000)
    assign TEMP_OUT = OUT[15] ^ OUT[14] ^ OUT[12] ^ OUT[3];

    always @(posedge CLK or posedge RSTN) begin
        if (RSTN) begin
            OUT <= 16'b1;
        end else begin
            OUT <= {OUT[14:0], TEMP_OUT};
        end
    end
endmodule
