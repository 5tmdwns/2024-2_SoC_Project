module BINARY_COUNTER_16B (
    input wire clk,           // Clock signal
    input wire rstn,          // Active-low reset signal
	 input wire en,
    output reg [15:0] binary   // 16-bit binary counter output
);

    // Counter logic
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            binary <= 16'b0;   // Reset the counter to 0
	 else begin
				if(en) binary <= binary + 1; // Increment the counter
		  		else  binary <= 16'b0;
	 end
    end

endmodule

