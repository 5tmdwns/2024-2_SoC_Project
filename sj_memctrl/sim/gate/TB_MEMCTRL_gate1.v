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

    task write;	
      ADDR  <=  ADDR;
      CE    <=  1;
      CSB   <=  0;
      IDATA <=  $random($time);
      OEB   <=  1;
      WEB   <=  0;
      #(`tck*1)
      ADDR  <=  ADDR + 1;
      CE    <=  0;
      CSB   <=  1;
      IDATA <= '0;
      OEB   <=  1;
      WEB   <=  1;
	    #(`tck*1);
    endtask

    task read;	
      ADDR  <=  ADDR; 
      CE    <=  1; 
      CSB   <=  0; 
      IDATA <= '0; 
      OEB   <=  0; 
      WEB   <=  1; 
      #(`tck*1)
      ADDR  <=  ADDR + 1; 
      CE    <=  0;
      CSB   <=  1;
      IDATA <= '0;
      OEB   <=  1;
      WEB   <=  1;
	    #(`tck*1);
    endtask

    ////////////////////////////////////////////////////////////////
    // STIMULI
    ////////////////////////////////////////////////////////////////
    initial begin
      $sdf_annotate("./../../../syn/memctrl/outputs/MEMCTRL_gate.sdf",DUT);
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
      repeat(10) begin
      write();
      end
      #(`tck*5);
      init();
      #(`tck*5);
      repeat(10) begin
      read();
      end
      #(`tck*10);
      $finish;
    end

endmodule
