module Toggle8B(/*AUTOARG*/
                // Outputs
                OUT,
                // Inputs
                CLK, RSTN, EN
                );
    input CLK;
    input RSTN;
    input EN;
    output reg [7:0] OUT;

    always @(posedge CLK or negedge RSTN) begin
        if (!RSTN) begin
            OUT <= 8'h00;
        end
        else begin
            OUT <= (EN) ? ~OUT : OUT;
        end
    end
    
endmodule
