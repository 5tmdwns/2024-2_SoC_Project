module GRAY_COUNTER_16B(
    input wire clk,           // Clock signal
    input wire rstn,          // Active-low reset signal
    input wire en,
	 output reg [15:0] gray    // 16-bit Gray code output
);
    reg [15:0] binary;        // Internal binary counter

    // Binary counter update logic
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            binary <= 16'b0; // Reset the binary counter
        else
		  		if(en)
         	   binary <= binary + 1; // Increment the binary counter
		 		else binary <= 16'b0;
    end

    // Gray code generation logic
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            gray <= 16'b0; // Reset the Gray code output
	 else begin
		  		if(en)
           		gray <= binary ^ (binary >> 1); // Convert binary to Gray code
		 		else gray <= 16'b0;
	 end
    end

endmodule

