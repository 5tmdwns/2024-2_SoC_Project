module TOGGLE_DATA_8B(
    input clk,          // Clock signal
    input rstn,        // Reset signal
	 input [1:0] en,
    output reg [7:0] data // 8-bit output data
);

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        data <= 8'hff; // Initialize to 0x00 on reset
    end else begin
	 if (en) begin
        data <= (data == 8'h00) ? 8'hFF : 8'h00; // Toggle between 0x00 and 0xFF
		end
	  else begin 
		  data <= 8'h0;	 
	  end	
    end
end

endmodule

