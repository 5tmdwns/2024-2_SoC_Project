module LFSR_8B (
    input wire clk,       // Clock signal
    input wire rstn,      // Active-low reset signal		
	 input en,
	 output reg [7:0] out  // 8-bit LFSR output
);

    // LFSR logic
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            out <= 8'b1; // Reset LFSR to non-zero value (e.g., all 1's)
	 end else begin
			  	if (en) begin
            out <= {out[6:0], out[7] ^ out[5] ^ out[4] ^ out[3]}; 
            // Feedback logic using taps at 8, 6, 5, 4
        end
		  	else out <= 8'b1;
		end
    end

endmodule

