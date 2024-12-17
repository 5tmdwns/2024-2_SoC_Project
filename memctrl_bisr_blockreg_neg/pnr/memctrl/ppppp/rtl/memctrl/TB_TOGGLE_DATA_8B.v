`timescale 1ns / 1ps

module TOGGLE_DATA_8B_tb;

    // Inputs
    reg clk;
    reg rstn;
    reg [1:0] en;

    // Outputs
    wire [7:0] data;

    // Instantiate the Unit Under Test (UUT)
    TOGGLE_DATA_8B uut (
        .clk(clk),
        .rstn(rstn),
        .en(en),
        .data(data)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 ns clock period
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rstn = 0;
        en = 2'b00;

        // Apply reset
        #10 rstn = 1; // Release reset after 10 ns

        // Test case 1: No toggle when en is 00
        #10 en = 2'b00;
        #20; // Wait for a few clock cycles

        // Test case 2: Toggle data when en is not 00
        #10 en = 2'b01;
        #20; // Wait for a few clock cycles

        #10 en = 2'b10;
        #20; // Wait for a few clock cycles

        #10 en = 2'b11;
        #20; // Wait for a few clock cycles

        // Test case 3: Reset during operation
        #10 rstn = 0; // Assert reset
        #10 rstn = 1; // Release reset
        
        // Finish simulation
        #50 $finish;
    end
     // Monitor the outputs
     initial begin
         $monitor("Time: %0dns, En: %b,  Toggled Data: %h", $time,en, data);
     end


endmodule

