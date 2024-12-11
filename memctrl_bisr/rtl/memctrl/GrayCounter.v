module GrayCounter(/*AUTOARG*/
                   // Outputs
                   OUT,
                   // Inputs
                   CLK, RSTN, EN
                   );
    input CLK;
    input RSTN;
    input EN;
    output reg [15:0] OUT;

    reg COUNTING;
    reg [2:0] CLK_COUNT;
    reg [15:0] BinaryCounter;

    always @(posedge CLK or negedge RSTN) begin
        if (!RSTN) begin
            COUNTING <= 1'b0;
            CLK_COUNT <= 3'b000;
            BinaryCounter <= 16'h0000;
            OUT <= 16'h0000;
        end else begin
            if (EN) begin
                if (!COUNTING) begin
                    if (CLK_COUNT == 3'd4) begin
                        COUNTING <= 1'b1;
                        CLK_COUNT <= 3'b000;
                        BinaryCounter <= BinaryCounter + 1;
                        OUT <= (BinaryCounter + 1) ^ ((BinaryCounter + 1) >> 1);
                    end
                    else begin
                        CLK_COUNT <= CLK_COUNT + 1;
                    end
                end
                else begin
                    if (CLK_COUNT == 3'd3) begin
                        CLK_COUNT <= 3'b000;
                        BinaryCounter <= BinaryCounter + 1;
                        OUT <= (BinaryCounter + 1) ^ ((BinaryCounter + 1) >> 1);
                    end
                    else begin
                        CLK_COUNT <= CLK_COUNT + 1;
                    end
                end
            end
            else begin
                COUNTING <= 1'b0;
                CLK_COUNT <= 3'b000;
            end
        end
    end

endmodule
