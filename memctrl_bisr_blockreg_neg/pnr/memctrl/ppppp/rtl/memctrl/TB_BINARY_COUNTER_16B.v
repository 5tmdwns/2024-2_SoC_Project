module TB_BINARY_COUTNER16B;

    reg clk;
    reg rstn;
    wire [15:0] binary;

    // Instantiate the binary counter
    BINARY_COUNTER_16B uut (
        .clk(clk),
        .rstn(rstn),
		  .binary(binary)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test sequence
    initial begin
        rstn = 0;
        #10 rstn = 1;  // Release reset after 10ns
        #500 $stop;    // Stop simulation after
    	
	end

    // Monitor the outputs
    initial begin
        $monitor("Time: %0dns, Count: %d", $time, binary);
    end

endmodule

