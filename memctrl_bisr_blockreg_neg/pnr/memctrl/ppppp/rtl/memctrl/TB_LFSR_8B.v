module TB_LFSR_8B;

    reg clk;
    reg rstn;
    wire [7:0] out;

    // Instantiate the LFSR_8B module
    LFSR_8B uut (
        .clk(clk),
        .rstn(rstn),
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test sequence
    initial begin
        rstn = 0; // Apply reset
        #15 rstn = 1; // Release reset after 15ns

        #500 $stop; // Stop simulation after 500ns
    end

    // Monitor output
    initial begin
        $monitor("Time: %0dns, LFSR Output: %b", $time, out);
    end

endmodule

