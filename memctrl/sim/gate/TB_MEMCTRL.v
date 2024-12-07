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

    task write_cycle;
      integer i, j;
      reg [15:0] base_addr [0:3]; 
      begin
        base_addr[0] = 16'h0000;
        base_addr[1] = 16'h4000;
        base_addr[2] = 16'h8000;
        base_addr[3] = 16'hC000;

        for (i = 0; i < 5; i = i + 1) begin
          for (j = 0; j < 4; j = j + 1) begin
            ADDR  <= base_addr[j] + i * 100;
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
        end
      end
    endtask

    task read_cycle;
      integer i, j;
      reg [15:0] base_addr [0:3]; 
      begin
        base_addr[0] = 16'h0000;
        base_addr[1] = 16'h4000;
        base_addr[2] = 16'h8000;
        base_addr[3] = 16'hC000;

        for (i = 0; i < 5; i = i + 1) begin
          for (j = 0; j < 4; j = j + 1) begin
            ADDR  <= base_addr[j] + i * 100;
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
        end
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

      write_cycle();
      #(`tck*10);

      read_cycle();
      #(`tck*10);

      $finish;
    end

endmodule
