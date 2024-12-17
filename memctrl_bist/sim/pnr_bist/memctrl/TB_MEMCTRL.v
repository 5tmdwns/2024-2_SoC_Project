`define tck 100
module TB_MEMCTRL;
  reg  [15:0] ADDR; 
  reg         CE; 
  reg         CLK; 
  reg         CSB; 
  reg  [7:0]  IDATA;
  reg         OEB; 
  reg         RSTN; 
  reg         WEB;
	reg			    BIST_EN;
	reg  [2:0]  BIST_MODE;

  wire [7:0]  ODATA;


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
		  .BIST_EN					        			 (BIST_EN),
		  .BIST_MODE			  				       (BIST_MODE[2:0]));

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
/*
    task write;	
      ADDR  <=  ADDR;
      CE    <=  1;
      CSB   <=  0;
      IDATA <=  $random($time);
      OEB   <=  1;
      WEB   <=  0;
      #(`tck*1)
      ADDR  <=  ADDR;
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
      OEB   <=  0;
      WEB   <=  1;
	   #(`tck*1);
    endtask
*/
    ////////////////////////////////////////////////////////////////
    // STIMULI
    ////////////////////////////////////////////////////////////////
    initial begin
       $sdf_annotate("./../../../sta/post/sdf/MEMCTRL_ss0p95v125c_func.sdf",DUT);
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
		  BIST_EN <= 0;
		  BIST_MODE <= 0;
		  #(`tck*4.5);
		  BIST_EN <= 1;
		  BIST_MODE <= 3'b001;
      #(`tck*200);
      $finish;
	 end

endmodule
