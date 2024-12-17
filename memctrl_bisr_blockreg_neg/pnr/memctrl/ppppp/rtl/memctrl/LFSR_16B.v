module LFSR_16B (
    input wire clk,       // Clock signal
    input wire rstn,      // Active-low reset signal
    input wire en,
	 output reg [15:0] out // 16-bit LFSR output
);

    // LFSR logic
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            out <= 16'b1; // Reset LFSR to non-zero value (e.g., all 1's)
        end else begin
					 if(en)
            		out <= {out[14:0], out[15] ^ out[13] ^ out[12] ^ out[10]}; 
            // Feedback logic using taps at 16, 14, 13, 11
			 else out <= 16'b1;
        end
		  
    end

endmodule

