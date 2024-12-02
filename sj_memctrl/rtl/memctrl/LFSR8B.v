module LFSR8B (
    input wire CLK,
    input wire RSTN,
    output reg [7:0] OUT
);
    wire TEMP_OUT;

    // Polynomial: x^8 + x^6 + x^5 + x^4 + 1 (0b11000101)
    assign TEMP_OUT = OUT[7] ^ OUT[5] ^ OUT[4] ^ OUT[3];

    always @(posedge CLK or posedge RSTN) begin
        if (RSTN) begin
            OUT <= 8'b1;
        end else begin
            OUT <= {OUT[6:0], TEMP_OUT};
        end
    end
endmodule
