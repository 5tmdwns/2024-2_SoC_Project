module BINARY_COUNTER #(
    parameter WIDTH = 16
)(
    input wire CLK,
    input wire RSTN,
    output reg [WIDTH-1:0] OUT
);
    always @(posedge CLK or negedge RSTN) begin
        if (!RSTN) begin
            OUT <= 0;
        end else begin
            OUT <= OUT + 1;
        end
    end
endmodule