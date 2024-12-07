`define tck 10
module TB_MEMCTRL;
   reg  [15:0] ADDR; 
   reg         CE; 
   reg         CLK; 
   reg         CSB; 
   reg  [7:0]  IDATA;
   reg         OEB; 
   reg         RSTN; 
   reg         WEB;

   wire [7:0]  ODATA;

   MEMCTRL
     DUT
       (/*AUTOINST*/
        // Outputs
        .ODATA                                (ODATA[7:0]),
        // Inputs
        .ADDR                                 (ADDR[15:0]),
        .CE                                   (CE),
        .CLK                                  (CLK),
        .CSB                                  (CSB),
        .IDATA                                (IDATA[7:0]),
        .OEB                                  (OEB),
        .RSTN                                 (RSTN),
        .WEB                                  (WEB));

    ////////////////////////////////////////////////////////////////
    // TASKS
    ////////////////////////////////////////////////////////////////
    task automatic init;
      ADDR  <= '0;
      CE    <=  0;
      CSB   <=  1;
      IDATA <= '0;
      OEB   <=  1;
      WEB   <=  1;
    endtask

    task write_bank(input [15:0] base_addr);	
      integer i;
      for (i = 0; i < 5; i = i + 1) begin
         ADDR  <=  base_addr + i * 100;
         CE    <=  1;
         CSB   <=  0;
         IDATA <=  $random($time);
         OEB   <=  1;
         WEB   <=  0;
         #(`tck*1);
         ADDR  <=  ADDR;
         CE    <=  0;
         CSB   <=  1;
         IDATA <= '0;
         OEB   <=  1;
         WEB   <=  1;
         #(`tck*1);
      end
    endtask

    task read_bank(input [15:0] base_addr);	
      integer i;
      for (i = 0; i < 5; i = i + 1) begin
         ADDR  <=  base_addr + i * 100;
         CE    <=  1;
         CSB   <=  0;
         IDATA <= '0;
         OEB   <=  0;
         WEB   <=  1;
         #(`tck*1);
         ADDR  <=  ADDR;
         CE    <=  0;
         CSB   <=  1;
         IDATA <= '0;
         OEB   <=  1;
         WEB   <=  1;
         #(`tck*1);
      end
    endtask

    ////////////////////////////////////////////////////////////////
    // STIMULI
    ////////////////////////////////////////////////////////////////
    initial begin
      $sdf_annotate("./../../syn/outputs/MEMCTRL_gate.sdf",DUT);
    end
    initial begin
      CLK = 0;
      forever #(`tck*0.5) CLK = ~ CLK; 
    end
    initial begin
      RSTN = 0;
      #(`tck*4);
      RSTN = 1;
    end
    initial begin
      init();
      #(`tck*5);
        write_bank(16'h0000);
        write_bank(16'h4000);
        write_bank(16'h8000);
        write_bank(16'hC000);
      #(`tck*10);
        read_bank(16'h0000);
        read_bank(16'h4000);
        read_bank(16'h8000);
        read_bank(16'hC000);
      #(`tck*10);
      $finish;
    end

endmodule
