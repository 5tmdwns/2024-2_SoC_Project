module COMP_8B (
    input wire CE,              // Clock signal
    input wire rstn,            // Active-low reset signal
    input wire en,              // Enable signal
    input wire BIST_EN,         // BIST Enable signal
    input wire [2:0] BIST_MODE, // BIST Mode signal
    input wire [7:0] ODATA,     // First 8-bit input (e.g., written address)
    input wire [7:0] ANSWER,    // Second 8-bit input (e.g., read address)
    output reg BIST_PASS       // Match output (1 if addr1 == addr2)
);

    reg COMP;                  // Comparison result: 0 if equal, 1 if not
    reg NEXT_BIST_PASS;        // Next state of BIST_PASS
    reg [2:0] prev_BIST_MODE;  // Previous BIST_MODE to detect changes

    // Generate COMP: Compare when enabled or BIST_EN is high
    always @(*) begin
        if (~en && BIST_EN)
            COMP = (ODATA == ANSWER) ? 0 : 1;
        else
            COMP = 0; // Default value when both `en` and `BIST_EN` are low
    end

    // Combinational logic for NEXT_BIST_PASS
    always @(*) begin
        if (BIST_PASS)
            NEXT_BIST_PASS = 1;  // Force to 1 if BIST_PASS is 1
        else
            NEXT_BIST_PASS = COMP; // Otherwise, follow COMP
    end

    // Sequential logic for BIST_PASS and BIST_PASS_BISR
    always @(negedge CE or negedge rstn) begin
        if (!rstn) begin
            BIST_PASS <= 0;   // Reset BIST_PASS to 0 on reset
            prev_BIST_MODE <= 3'b0; // Reset previous BIST_MODE
        end else begin
            // Check for BIST_MODE change
            if (BIST_MODE != prev_BIST_MODE) begin
                BIST_PASS <= 0;        // Reset BIST_PASS on mode change
            end else begin
                BIST_PASS <= NEXT_BIST_PASS; // Update BIST_PASS
            end
            prev_BIST_MODE <= BIST_MODE; // Store the current BIST_MODE
        end
    end

endmodule

