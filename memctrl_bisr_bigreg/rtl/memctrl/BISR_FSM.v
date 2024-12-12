module BISR_FSM (/*AUTOARG*/
		 // Outputs
		 BISR_MEM_ADDR, BISR_MEM_CE, BISR_MEM_WEB, BISR_MEM_OEB,
		 BISR_MEM_CSB, BISR_MEM_IDATA, BISR_MEM_ODATA_SELECT, MEM_ADDR,
		 MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, MEM_ODATA_SELECT,
		 // Inputs
		 CLK, RSTN, ADDR, CE, CSB, WEB, OEB, IDATA, BIST_EN, BIST_PASS,
		 NEED_REPAIR_SELECT, NEED_REPAIR_ADDR
		 );
   input CLK;
   input RSTN;
   input [15:0] ADDR;
   input 	CE;
   input 	CSB;
   input 	WEB;
   input 	OEB;
   input [7:0] 	IDATA;
   input 	BIST_EN;
   input 	BIST_PASS;

   input [5:0] 	NEED_REPAIR_SELECT;
   input [9:0] 	NEED_REPAIR_ADDR;

   output reg [6:0] BISR_MEM_ADDR;
   output reg 	    BISR_MEM_CE;
   output reg 	    BISR_MEM_WEB;
   output reg [24:0] BISR_MEM_OEB;
   output reg [24:0] BISR_MEM_CSB;
   output reg [7:0]  BISR_MEM_IDATA;
   output reg [4:0]  BISR_MEM_ODATA_SELECT;

   output reg [9:0]  MEM_ADDR;
   output reg 	     MEM_CE;
   output reg 	     MEM_WEB;
   output reg [63:0] MEM_OEB;
   output reg [63:0] MEM_CSB;
   output reg [7:0]  MEM_IDATA;
   output reg [5:0]  MEM_ODATA_SELECT;

   //MAX_FAULT is 128 * 25
   localparam MAX_FAULT = 25;

   reg [15:0] 	     FAULT_TABLE [0:24];
   reg [11:0] 	     FAULT_INDEX;
   reg BISR_EN;

   integer 	     i;
   integer       j;

   always@(posedge CLK or negedge RSTN) begin
      if (!RSTN) begin
         FAULT_INDEX <= 12'b0;
         for (i = 0; i < 25; i = i + 1) begin
            FAULT_TABLE[i] <= 16'hFFFF;
         end
      end
      else begin
         if (BIST_EN) begin
            if (BIST_PASS && FAULT_INDEX < MAX_FAULT) begin
               FAULT_TABLE[FAULT_INDEX] <= {NEED_REPAIR_SELECT, NEED_REPAIR_ADDR};
               FAULT_INDEX <= FAULT_INDEX + 12'b1;
            end
            else begin
               FAULT_INDEX <= FAULT_INDEX;
            end
         end
         else begin
            FAULT_INDEX <= FAULT_INDEX;
         end
      end
   end
   
   always@(posedge CLK or negedge RSTN) begin
      if (!RSTN) begin
         MEM_ADDR         <= 10'b0;
         MEM_WEB          <= 1'b1;
         MEM_CE           <= 1'b0;
         MEM_OEB          <= {64{1'b1}};
         MEM_CSB          <= {64{1'b1}};
         MEM_IDATA        <= 8'b0;
         MEM_ODATA_SELECT <= 6'b0;

         BISR_MEM_ADDR <= 7'b0;
         BISR_MEM_CE <= 1'b0;
         BISR_MEM_WEB <= 1'b1;
         BISR_MEM_OEB <= {25{1'b1}};
         BISR_MEM_CSB <= {25{1'b1}};
         BISR_MEM_IDATA <= 8'h00;
         BISR_MEM_ODATA_SELECT <= 5'b0;

         BISR_EN <= 1'b0;
      end
      else begin
         if (BIST_EN) begin
            BISR_MEM_ADDR <= 7'b0;
            BISR_MEM_CE <= 1'b0;
            BISR_MEM_WEB <= 1'b1;
            BISR_MEM_OEB <= {25{1'b1}};
            BISR_MEM_CSB <= {25{1'b1}};
            BISR_MEM_IDATA <= 8'h00;
            BISR_MEM_ODATA_SELECT <= 5'b0;

            MEM_ADDR         <= 10'b0;
            MEM_WEB          <= 1'b1;
            MEM_CE           <= 1'b0;
            MEM_OEB          <= {64{1'b1}};
            MEM_CSB          <= {64{1'b1}};
            MEM_IDATA        <= 8'b0;
            MEM_ODATA_SELECT <= 6'b0;

            BISR_EN <= 1'b0;
         end
         else begin
            if (CE && FAULT_INDEX > 0) begin
               case (ADDR)
               FAULT_TABLE[0] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd0);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX[11:7];

                  BISR_EN <= 1'b1;
               end
               FAULT_TABLE[1] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd1);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX[11:7];

                  BISR_EN <= 1'b1;
               end
               FAULT_TABLE[2] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd2);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;    
               end
               FAULT_TABLE[3] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd3);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;  
               end
               FAULT_TABLE[4] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd4);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;        
               end
               FAULT_TABLE[5] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd5);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;   
               end
               FAULT_TABLE[6] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd6);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;
               end
               FAULT_TABLE[7] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd7);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;   
               end
               FAULT_TABLE[8] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd8);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;       
               end
               FAULT_TABLE[9] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd9);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;    
               end
               FAULT_TABLE[10] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd10);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;    
               end
               FAULT_TABLE[11] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd11);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;        
               end
               FAULT_TABLE[12] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd12);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1; 
               end
               FAULT_TABLE[13] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd13);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;       
               end
               FAULT_TABLE[14] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd14);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;      
               end
               FAULT_TABLE[15] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd15);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;            
               end
               FAULT_TABLE[16] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd16);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;         
               end
               FAULT_TABLE[17] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd17);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;       
               end
               FAULT_TABLE[18] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd18);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;               
               end
               FAULT_TABLE[19] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd19);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;  
               end
               FAULT_TABLE[20] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd20);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;        
               end
               FAULT_TABLE[21] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd21);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;          
               end
               FAULT_TABLE[22] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd22);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;       
               end
               FAULT_TABLE[23] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd23);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;         
               end
               FAULT_TABLE[24] : begin
                  MEM_ADDR         <= MEM_ADDR;
                  MEM_WEB          <= 1'b1;
                  MEM_CE           <= 1'b0;
                  MEM_OEB          <= {64{1'b1}};
                  MEM_CSB          <= {64{1'b1}};
                  MEM_IDATA        <= MEM_IDATA;
                  MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                  BISR_MEM_ADDR <= (FAULT_INDEX[6:0] - FAULT_INDEX[6:0] + 7'd24);
                  BISR_MEM_CE <= 1'b1;
                  BISR_MEM_WEB <= WEB;
                  BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                  BISR_MEM_IDATA <= IDATA;
                  BISR_MEM_ODATA_SELECT <= FAULT_INDEX [11:7];

                  BISR_EN <= 1'b1;      
               end
               default : begin
                  MEM_ADDR         <= ADDR[15:0];
                  MEM_WEB          <= WEB;
                  MEM_CE           <= CE;
                  MEM_OEB          <= {64{OEB}} | (~(64'd1 << ADDR[15:10]));
                  MEM_CSB          <= {64{CSB}} | (~(64'd1 << ADDR[15:10]));
                  MEM_IDATA        <= IDATA;
                  MEM_ODATA_SELECT <= ADDR[15:10];

                  BISR_MEM_ADDR <= 7'b0;
                  BISR_MEM_CE <= 1'b0;
                  BISR_MEM_WEB <= 1'b1;
                  BISR_MEM_OEB <= {25{1'b1}};
                  BISR_MEM_CSB <= {25{1'b1}};
                  BISR_MEM_IDATA <= 8'h00;
                  BISR_MEM_ODATA_SELECT <= 5'b0;

                  BISR_EN <= 1'b0;            
               end
               endcase
            end
            else begin
               if (BISR_EN) begin
                  if (CE) begin
                     MEM_ADDR         <= MEM_ADDR;
                     MEM_WEB          <= 1'b1;
                     MEM_CE           <= 1'b0;
                     MEM_OEB          <= {64{1'b1}};
                     MEM_CSB          <= {64{1'b1}};
                     MEM_IDATA        <= MEM_IDATA;
                     MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                     BISR_MEM_ADDR <= BISR_MEM_ADDR;
                     BISR_MEM_CE <= 1'b1;
                     BISR_MEM_WEB <= WEB;
                     BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                     BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                     BISR_MEM_IDATA <= IDATA;
                     BISR_MEM_ODATA_SELECT <= BISR_MEM_ODATA_SELECT;

                     BISR_EN <= 1'b1;          
                  end
                  else begin
                     MEM_ADDR         <= MEM_ADDR;
                     MEM_WEB          <= 1'b1;
                     MEM_CE           <= 1'b0;
                     MEM_OEB          <= {64{1'b1}};
                     MEM_CSB          <= {64{1'b1}};
                     MEM_IDATA        <= MEM_IDATA;
                     MEM_ODATA_SELECT <= MEM_ODATA_SELECT;

                     BISR_MEM_ADDR <= BISR_MEM_ADDR;
                     BISR_MEM_CE <= 1'b0;
                     BISR_MEM_WEB <= WEB;
                     BISR_MEM_OEB <= {25{OEB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                     BISR_MEM_CSB <= {25{CSB}} | (~(25'd1 << FAULT_INDEX[11:7]));
                     BISR_MEM_IDATA <= IDATA;
                     BISR_MEM_ODATA_SELECT <= BISR_MEM_ODATA_SELECT;

                     BISR_EN <= 1'b1;
                  end
               end
               else begin
                  MEM_ADDR         <= ADDR[15:0];
                  MEM_WEB          <= WEB;
                  MEM_CE           <= CE;
                  MEM_OEB          <= {64{OEB}} | (~(64'd1 << ADDR[15:10]));
                  MEM_CSB          <= {64{CSB}} | (~(64'd1 << ADDR[15:10]));
                  MEM_IDATA        <= IDATA;
                  MEM_ODATA_SELECT <= ADDR[15:10];

                  BISR_MEM_ADDR <= 7'b0;
                  BISR_MEM_CE <= 1'b0;
                  BISR_MEM_WEB <= 1'b1;
                  BISR_MEM_OEB <= {25{1'b1}};
                  BISR_MEM_CSB <= {25{1'b1}};
                  BISR_MEM_IDATA <= 8'h00;
                  BISR_MEM_ODATA_SELECT <= 5'b0;

                  BISR_EN <= 1'b0;     
               end
            end
         end
      end
   end
endmodule
