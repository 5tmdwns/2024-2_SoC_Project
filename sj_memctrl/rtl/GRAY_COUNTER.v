module GRAY_COUNTER #(
    parameter WIDTH = 16
)(
    input wire CLK,
    input wire RSTN,
    output reg [WIDTH-1:0] OUT
);
    reg [WIDTH-1:0] COUNT;

    always @(posedge CLK or posedge RSTN) begin
        if (RSTN) begin
            COUNT <= 0;
            OUT <= 0;
        end else begin
            COUNT <= COUNT + 1;
            OUT <= (COUNT >> 1) ^ COUNT;
        end
    end
endmodule
