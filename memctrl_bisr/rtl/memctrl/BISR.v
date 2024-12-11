module BISR (/*AUTOARG*/
	     // Outputs
	     BISR_EN, BISR_MEM_ADDR, BISR_MEM_CE, BISR_MEM_WEB, BISR_MEM_OEB,
	     BISR_MEM_CSB, BISR_MEM_IDATA, BISR_MEM_ODATA_SELECT,
	     // Inputs
	     BIST_PASS, BIST_EN, CLK, RSTN, CSB, WEB, OEB, NEED_REPAIR_SELECT,
	     NEED_REPAIR_ADDR, ADDR, IDATA
	     );
   input BIST_PASS;
   input BIST_EN;
   input CLK;
   input RSTN;
   input CSB;
   input WEB;
   input OEB;
   input [5:0] NEED_REPAIR_SELECT;
   input [9:0] NEED_REPAIR_ADDR;
   input [15:0] ADDR;
   input [7:0] 	IDATA;

   output reg 	BISR_EN;
   output reg [6:0] BISR_MEM_ADDR;
   output reg 	     BISR_MEM_CE;
   output reg 	     BISR_MEM_WEB;
   output reg [24:0] BISR_MEM_OEB;
   output reg [24:0] BISR_MEM_CSB;
   output reg [7:0]  BISR_MEM_IDATA;
   output reg [4:0]  BISR_MEM_ODATA_SELECT;

   //MAX_FAULT is 128 * 25
   localparam MAX_FAULT = 128 * 25;

   reg [15:0] 	     FAULT_TABLE [0:MAX_FAULT-1];
   reg [11:0] 	     FAULT_COUNT;
   reg [11:0] 	     ADDR_COUNT;

   integer 	     i;
   integer 	     j;

   always@(posedge CLK or negedge RSTN) begin
      if (!RSTN) begin
         FAULT_COUNT <= 12'b0;
         for (i = 0; i < MAX_FAULT; i = i + 1) begin
            FAULT_TABLE[i] <= 16'b0;
         end
      end
      else begin
         if (BIST_EN) begin
            if (BIST_PASS && FAULT_COUNT < MAX_FAULT) begin
               BISR_EN <= 1'b0;
               FAULT_TABLE[FAULT_COUNT] <= {NEED_REPAIR_SELECT, NEED_REPAIR_ADDR};
               FAULT_COUNT <= FAULT_COUNT + 12'b1;
            end
            else begin
               FAULT_COUNT <= FAULT_COUNT;
            end
         end
         else begin
            FAULT_COUNT <= FAULT_COUNT;
         end
      end
   end
   
   always@(posedge CLK or negedge RSTN) begin
      if (!RSTN) begin
         BISR_EN <= 1'b0;
         ADDR_COUNT <= 12'b0;
         BISR_MEM_ADDR <= 7'b0;
         BISR_MEM_CE <= 1'b0;
         BISR_MEM_WEB <= 1'b1;
         BISR_MEM_OEB <= {25{1'b1}};
         BISR_MEM_CSB <= {25{1'b1}};
         BISR_MEM_IDATA <= 8'h00;
         BISR_MEM_ODATA_SELECT <= 5'b0;
      end
      else begin
         if (!BIST_EN && FAULT_COUNT > 0) begin
            for (j = 0; j < MAX_FAULT; j = j + 1) begin
               if (ADDR == FAULT_TABLE[j]) begin
                  if (!WEB) begin
                     BISR_EN <= 1'b1;
                     BISR_MEM_ADDR <= ADDR_COUNT[6:0];
                     BISR_MEM_CE <= 1'b1;
                     BISR_MEM_WEB <= 1'b0;
                     BISR_MEM_OEB <= {25{1'b1}};
                     BISR_MEM_CSB <= ~(25'd1 << ADDR_COUNT [11:7]);
                     BISR_MEM_IDATA <= IDATA;
                     BISR_MEM_ODATA_SELECT <= ADDR_COUNT [11:7];
                     ADDR_COUNT <= ADDR_COUNT + 12'b1;
                  end
                  else begin
                     if (!OEB) begin
                        BISR_EN <= 1'b1;
                        BISR_MEM_ADDR <= ADDR_COUNT;
                        BISR_MEM_CE <= 1'b1;
                        BISR_MEM_WEB <= 1'b1;
                        BISR_MEM_OEB <= ~(25'd1 << ADDR_COUNT [11:7]);
                        BISR_MEM_CSB <= ~(25'd1 << ADDR_COUNT [11:7]);
                        BISR_MEM_IDATA <= IDATA;
                        BISR_MEM_ODATA_SELECT <= ADDR_COUNT [11:8];
                        ADDR_COUNT <= ADDR_COUNT + 12'b1;
                     end
                     else begin
                        BISR_EN <= 1'b0;
                        BISR_MEM_ADDR <= 7'b0;
                        BISR_MEM_CE <= 1'b0;
                        BISR_MEM_WEB <= 1'b1;
                        BISR_MEM_OEB <= {25{1'b1}};
                        BISR_MEM_CSB <= {25{1'b1}};
                        BISR_MEM_IDATA <= 8'h00;
                        BISR_MEM_ODATA_SELECT <= 5'b0;
                        ADDR_COUNT <= ADDR_COUNT;
                     end
                  end
               end
               else begin
                     BISR_EN <= 1'b0;
                     BISR_MEM_ADDR <= 7'b0;
                     BISR_MEM_CE <= 1'b0;
                     BISR_MEM_WEB <= 1'b1;
                     BISR_MEM_OEB <= {25{1'b1}};
                     BISR_MEM_CSB <= {25{1'b1}};
                     BISR_MEM_IDATA <= 8'h00;
                     BISR_MEM_ODATA_SELECT <= 5'b0;
                     ADDR_COUNT <= ADDR_COUNT;
               end
            end
         end
         else begin
               BISR_EN <= 1'b0;
               BISR_MEM_ADDR <= 7'b0;
               BISR_MEM_CE <= 1'b0;
               BISR_MEM_WEB <= 1'b1;
               BISR_MEM_OEB <= {25{1'b1}};
               BISR_MEM_CSB <= {25{1'b1}};
               BISR_MEM_IDATA <= 8'h00;
               BISR_MEM_ODATA_SELECT <= 5'b0;
               ADDR_COUNT <= ADDR_COUNT;
         end
      end
   end
endmodule
