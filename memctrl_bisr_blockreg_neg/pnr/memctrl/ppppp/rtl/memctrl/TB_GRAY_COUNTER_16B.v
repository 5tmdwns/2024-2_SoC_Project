module TB_GRAY_COUNTER_16B;

    reg clk;
    reg rstn;
    wire [15:0] gray;

    // Instantiate the Gray counter
    GRAY_COUNTER_16B uut (
        .clk(clk),
        .rstn(rstn),
        .gray(gray)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test sequence
    initial begin
        rstn = 0;
        #10 rstn = 1; // Release reset after 15ns
        #500 $stop;   // Stop simulation after 200ns
    end

    // Monitor the outputs
    initial begin
        $monitor("Time: %0dns, Gray Code: %b", $time, gray);
    end

endmodule
