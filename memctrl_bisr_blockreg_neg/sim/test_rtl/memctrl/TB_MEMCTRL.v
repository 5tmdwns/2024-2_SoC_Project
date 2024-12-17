// Timing Macros
`define TCK 10*0.2       // Clock period
`define TINPUTDLY 5*0.2  // Input delay for CSB, WEB, and input data
`define TCYC 60*0.2      // CE cycle period
`define TCSS 0       // CE setup time with respect to CSB, WEB, and input data

module TB_MEMCTRL;
   // Signal Declarations
   reg [15:0] ADDR;         // Address bus
   reg        CE;           // Chip Enable
   reg        CLK;          // Clock signal
   reg        CSB;          // Chip Select (active low)
   reg [7:0]  IDATA;        // Input data bus (for write)
   reg        OEB;          // Output Enable (active low)
   reg        RSTN;         // Reset signal (active low)
   reg        WEB;          // Write Enable (active low)
	reg		  BIST_EN;
	reg [2:0]  BIST_MODE;


   wire [7:0] ODATA;        // Output data bus (for read)
   wire       BIST_PASS;

   // Internal Variables
   integer file, status;             // File handlers
   integer log_file;                 // Log file handler
   integer i;                        // Loop counter
   reg [(8*29-1):0] line;            // Line buffer for file reading
   reg [15:0] command_str;            // Command type ("RD"/"WR")
   reg [15:0] address;               // Extracted address
   reg [7:0] data;                   // Extracted data
   reg [7:0] expected_data;          // Expected data for reads
   reg [7:0] memory [0:65535];       // Simulated memory array

   // Instantiate MEMCTRL Module
   MEMCTRL
     DUT
       (/*AUTOINST*/
        // Outputs
        .ODATA                                (ODATA[7:0]),
        .BIST_PASS                            (BIST_PASS),
        // Inputs
        .ADDR                                 (ADDR[15:0]),
        .CE                                   (CE),
        .CLK                                  (CLK),
        .CSB                                  (CSB),
        .IDATA                                (IDATA[7:0]),
        .OEB                                  (OEB),
        .RSTN                                 (RSTN),
        .WEB                                  (WEB),
		  .BIST_EN										 (BIST_EN),
		  .BIST_MODE									 (BIST_MODE[2:0]));

   initial begin
      $sdf_annotate("./../../../syn/memctrl/outputs/MEMCTRL_gate.sdf",DUT);
   end

   // Clock Generation
   initial begin
      CLK = 0;
      forever #(`TCK / 2) CLK = ~CLK;
   end

   // Testbench Initialization
   initial begin
      // Initialize signals
      RSTN = 0;
      CSB = 1;
      WEB = 1;
      OEB = 1;
      ADDR = 16'b0;
      IDATA = 8'b0;
      CE = 0;
      BIST_EN <= 0;
		BIST_MODE <= 0;

      // Apply reset
      #(`TCK * 2); // Wait for 2 clock cycles
      RSTN = 1;

      // Initialize memory to 0
      for (i = 0; i < 65536; i = i + 1) begin
         memory[i] = 8'b0;
      end

      // Open dump file and log file
      file = $fopen("inputset_rw.dump", "r");
      log_file = $fopen("testbench_log1.txt", "w");
      if (file == 0 || log_file == 0) begin
         $display("Error: Failed to open file.");
         $finish;
      end

      // Read and process each line from the file
      while (!$feof(file)) begin
         status = $fgets(line, file); // Read a line
         if (status == 0 || line[8*29-1:0] == 0) begin
            $display("Skipping empty or invalid line.");
            continue;
         end

         // Parse command type
         command_str = line[231:216];
         if (command_str == "WR") begin
            $display("Command: WR");
         end else if (command_str == "RD") begin
            $display("Command: RD");
         end else begin
            $display("Invalid command in line: %s", line);
            continue;
         end

         // Extract address and data
         address = 0;
         data = 0;
         for (i = 0; i < 16; i = i + 1) begin
            address = (address << 1) | (line[8*26-1 - i*8 -: 8] - "0");
         end
         for (i = 0; i < 8; i = i + 1) begin
            data = (data << 1) | (line[8*9-1 - i*8 -: 8] - "0");
         end

         $display("Address: %h, Data: %h", address, data);

         // Execute WR or RD
         if (command_str == "WR") begin
            write_to_sram(address, data);
            memory[address] = data;
         end else if (command_str == "RD") begin
            expected_data = memory[address];
            read_from_sram(address);
         end
      end

      // Close files
      $fclose(file);
      $fclose(log_file);

      // Finish simulation
      $finish;
   end

   // Task to write to SRAM
   task write_to_sram(input [15:0] addr, input [7:0] din);
      begin
         @(posedge CLK);
         #(`TINPUTDLY);
         OEB = 1;
         CSB = 0;
         WEB = 0;
         ADDR = addr;
         IDATA = din;
         #(`TCSS);
         CE = 1;
         #(`TCK - `TCSS);
         CSB = 1;
         WEB = 1;
         #(`TCYC / 2 - `TCK + `TCSS);
         CE = 0;
         #(`TCYC / 2);
         CE = 1;
         $fwrite(log_file, "TIME:%.1fns,PASS, WR, Address: %h, Data Written: %h\n", $time,address, data);
         #(`TCYC / 2);
         CE = 0;
         #(`TCYC / 2 - `TCK);
      end
   endtask

   // Task to read from SRAM
   task read_from_sram(input [15:0] addr);
      begin
         @(posedge CLK);
         #(`TINPUTDLY);
         CSB = 0;
         WEB = 1;
         OEB = 0;
         ADDR = addr;
         #`TCSS;
         CE = 1;
         #(`TCK - `TCSS);
         CSB = 1;
         #(`TCYC / 2 - `TCK + `TCSS);
         CE = 0;
         #(`TCYC / 2);
         OEB = 1;
         CE = 1;
         if (ODATA === expected_data) begin
            $fwrite(log_file, "TIME:%.1fns,PASS, RD, Address: %h, Expected: %h, Read: %h\n", $time,address, expected_data, ODATA);
         end else begin
            $fwrite(log_file, "TIME:%.1fns,FAIL, RD, Address: %h, Expected: %h, Read: %h\n", $time,address, expected_data, ODATA);
         end
         #(`TCYC / 2);
         CE = 0;
         #(`TCYC / 2 - `TCK);
      end
   endtask
endmodule

