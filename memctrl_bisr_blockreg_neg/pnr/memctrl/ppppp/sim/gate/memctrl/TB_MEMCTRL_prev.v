`define tck 10
module TB_MEMCTRL;
   reg [15:0] ADDR; 
   reg        CE; 
   reg        CLK; 
   reg        CSB; 
   reg [7:0]  IDATA;
   reg        OEB; 
   reg        RSTN; 
   reg        WEB; 
   wire [7:0] ODATA;
	reg		  BIST_EN;
	reg 		  BISR_EN;
	reg [2:0]  BIST_MODE;
	wire 		  BIST_PASS;

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
        .BIST_EN                              (BIST_EN),
        .BIST_MODE                            (BIST_MODE),
        .BISR_EN                              (BISR_EN),
        .BIST_PASS                            (BIST_PASS),
        .WEB                                  (WEB));

   ////////////////////////////////////////////////////////////////
         // TASKS
   ////////////////////////////////////////////////////////////////
   task automatic init;
      ADDR <= '0; 
      CE <= 0; 
      CSB <= 1; 
      IDATA <= '0; 
      OEB <= 1; 
      WEB <= 1;
		////////////////////////////	
		BISR_EN<=0;
		BIST_EN<=1;
		BIST_MODE<=3'b001;
   endtask
   
   task read;
	   #(`tck*0.5);
      //ADDR <= ADDR; 
      CE <= 1; 
      //CSB <= 0; 
      //IDATA <= $random($time); 
      //OEB <= 0; 
      //WEB <= 1; 
	   #(`tck*0.5);
      CSB <= 0; 
      IDATA <= $random($time); 
      OEB <= 0; 
      WEB <= 1;
	   #(`tck*0.5);
		CE<=0;
      #(`tck*0.5)
      ADDR <= ADDR + 1; 
      //CE <= 0; 
      CSB <= 1; 
      IDATA <= '0; 
      WEB <= 1;
	   OEB <=0;	
   endtask
  /* 
   task write;
	   #(`tck*0.5);
      ADDR <= ADDR; 
      CE <= 1; 
      CSB <= 0; 
      IDATA <= $random($time); 
      OEB <= 1; 
      WEB <= 0; 
      #(`tck*1)
      ADDR <= ADDR; 
      CE <= 0; 
      IDATA <= '0; 
      OEB <= 1; 
      WEB <= 1; 
	   #(`tck*0.5);
      CSB <= 1; 
      OEB <= 1; 
   endtask
	*/

   task write;
	   #(`tck*0.5);
      //ADDR <= ADDR; 
      CE <= 1; 
      //CSB <= 0; 
      IDATA <= $random($time); 
      //OEB <= 1; 
      //WEB <= 0;
	   #(`tck*0.5);
		ADDR <= ADDR;
		CSB <= 0;
		OEB <= 1;
		WEB <= 0;	
      // #(`tck*1)
	   #(`tck*0.5);	
      //ADDR <= ADDR; 
      CE <= 0;
	   #(`tck*0.5);	
      IDATA <= '0; 
      OEB <= 1; 
      WEB <= 1; 
	endtask

	initial begin
			  $sdf_annotate("./../../../syn/memctrl/outputs/MEMCTRL_gate.sdf",DUT);
	end
   ////////////////////////////////////////////////////////////////
   // STIMULI
   ////////////////////////////////////////////////////////////////
   initial begin
      CLK = 0;
      forever #(`tck*0.5) CLK = ~ CLK; 
   end
   initial begin
		RSTN=1;
      #(`tck*1);
      RSTN = 0;
      #(`tck*3.5);
      RSTN = 1;
   end

   initial begin
      init();
      #(`tck*10);
      repeat(100) begin
         write();
			//#(`tck*10);
		end
		RSTN=0;
      #(`tck*4);
      RSTN = 1;
      repeat(100) begin
         read();
			//#(`tck*10);
      end
      #(`tck*10);
      $finish;
   end
endmodule
