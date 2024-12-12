module FSM(/*AUTOARG*/
   // Outputs
   MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA,
   MEM_ODATA_SELECT, BIST_PASS, SPARE_MEM_ADDR, SPARE_MEM_CE,
   SPARE_MEM_WEB, SPARE_MEM_OEB, SPARE_MEM_CSB, SPARE_MEM_IDATA,
   SPARE_MEM_ODATA_SELECT,
   // Inputs
   CLK, RSTN, ADDR, CE, CSB, WEB, OEB, IDATA, BIST_EN,
   BIST_MODE, BIST_ODATA
   );
   input                    CLK;
   input                    RSTN;
   input [15:0] 	        ADDR;
   input                    CE;
   input                    CSB;
   input                    WEB;
   input                    OEB;
   input [7:0] 		        IDATA;
   input                    BIST_EN;
   input [2:0] 		        BIST_MODE;
   input [7:0] 		        BIST_ODATA;

   output reg [9:0] 	    MEM_ADDR;
   output reg               MEM_CE;
   output reg               MEM_WEB;
   output reg [63:0] 	    MEM_OEB;
   output reg [63:0] 	    MEM_CSB;
   output reg [7:0] 	    MEM_IDATA;
   output reg [5:0] 	    MEM_ODATA_SELECT;
   output                   BIST_PASS;

   output reg [9:0] 	    SPARE_MEM_ADDR;
   output reg 		        SPARE_MEM_CE;
   output reg 		        SPARE_MEM_WEB;
   output reg [24:0] 	    SPARE_MEM_OEB;
   output reg [24:0] 	    SPARE_MEM_CSB;
   output reg [7:0] 	    SPARE_MEM_IDATA;
   output reg [4:0]         SPARE_MEM_ODATA_SELECT;


   wire [9:0] 				     BIST_MEM_ADDR;
   wire 				         BIST_MEM_CE;
   wire 				         BIST_MEM_WEB;
   wire [63:0] 				     BIST_MEM_OEB;
   wire [63:0] 				     BIST_MEM_CSB;
   wire [7:0] 				     BIST_MEM_IDATA;
   wire [5:0] 				     BIST_MEM_ODATA_SELECT;

   wire BISR_EN;
   wire [6:0] 				     BISR_MEM_ADDR;
   wire 				         BISR_MEM_CE;
   wire 				         BISR_MEM_WEB;
   wire [24:0] 				     BISR_MEM_OEB;
   wire [24:0] 				     BISR_MEM_CSB;
   wire [7:0] 				     BISR_MEM_IDATA;
   wire [4:0]                    BISR_MEM_ODATA_SELECT;

   wire [9:0] NEED_REPAIR_ADDR;
   wire [5:0] NEED_REPAIR_SELECT;

   wire CLKB;

   reg PREV_CE;
   assign CLKB = ~CLK;

   BIST
     UBIST
       (/*AUTOINST*/
	// Outputs
	.BIST_MEM_ADDR			(BIST_MEM_ADDR[9:0]),
	.NEED_REPAIR_ADDR		(NEED_REPAIR_ADDR[9:0]),
	.BIST_MEM_CE			(BIST_MEM_CE),
	.BIST_MEM_WEB			(BIST_MEM_WEB),
	.BIST_MEM_OEB			(BIST_MEM_OEB[63:0]),
	.BIST_MEM_CSB			(BIST_MEM_CSB[63:0]),
	.BIST_MEM_IDATA			(BIST_MEM_IDATA[7:0]),
	.BIST_MEM_ODATA_SELECT		(BIST_MEM_ODATA_SELECT[5:0]),
	.NEED_REPAIR_SELECT		(NEED_REPAIR_SELECT[5:0]),
	.BIST_PASS			(BIST_PASS),

	// Inputs
	.CLK				(CLK),
	.RSTN				(RSTN),
	.BIST_EN			(BIST_EN),
	.BIST_MODE			(BIST_MODE[2:0]),
	.BIST_ODATA			(BIST_ODATA[7:0]));

   BISR
     UBISR
       (/*AUTOINST*/
	// Outputs
	.BISR_EN			(BISR_EN),
	.BISR_MEM_ADDR			(BISR_MEM_ADDR[6:0]),
	.BISR_MEM_CE			(BISR_MEM_CE),
	.BISR_MEM_WEB			(BISR_MEM_WEB),
	.BISR_MEM_OEB			(BISR_MEM_OEB[24:0]),
	.BISR_MEM_CSB			(BISR_MEM_CSB[24:0]),
	.BISR_MEM_IDATA			(BISR_MEM_IDATA[7:0]),
	.BISR_MEM_ODATA_SELECT		(BISR_MEM_ODATA_SELECT[4:0]),
	// Inputs
	.BIST_PASS			(BIST_PASS),
	.BIST_EN			(BIST_EN),
	.CLK				(CLK),
	.RSTN				(RSTN),
	.CSB				(CSB),
	.WEB				(WEB),
	.OEB				(OEB),
	.NEED_REPAIR_SELECT		(NEED_REPAIR_SELECT[5:0]),
	.NEED_REPAIR_ADDR		(NEED_REPAIR_ADDR[9:0]),
	.ADDR				(ADDR[15:0]),
	.IDATA				(IDATA[7:0]));

   always @(posedge CLK or negedge RSTN) begin
      if(!RSTN) begin
         MEM_ADDR         <= 10'b0;
         MEM_WEB          <= 1'b1;
         MEM_OEB          <= {64{1'b1}};
         MEM_CSB          <= {64{1'b1}};
         MEM_IDATA        <= 8'b0;
         MEM_ODATA_SELECT <= 6'b0;
         SPARE_MEM_ADDR <= 7'b0;
         SPARE_MEM_WEB <= 1'b1;
         SPARE_MEM_OEB <= {24{1'b1}};
         SPARE_MEM_CSB <= {24{1'b1}};
         SPARE_MEM_IDATA <= 8'b0;
         SPARE_MEM_ODATA_SELECT <= 5'b0;
      end
      else begin
         if (BIST_EN) begin
            MEM_ADDR         <= BIST_MEM_ADDR [9:0];
            MEM_WEB          <= BIST_MEM_WEB;
            MEM_CE <= BIST_MEM_CE;
            MEM_OEB          <= BIST_MEM_OEB [63:0];
            MEM_CSB          <= BIST_MEM_CSB [63:0];
            MEM_IDATA        <= BIST_MEM_IDATA [7:0];
            MEM_ODATA_SELECT <= BIST_MEM_ODATA_SELECT [5:0];
            SPARE_MEM_ADDR <= 7'b0;
            SPARE_MEM_WEB <= 1'b1;
            SPARE_MEM_OEB <= {24{1'b1}};
            SPARE_MEM_CSB <= {24{1'b1}};
            SPARE_MEM_IDATA <= 8'b0;
            SPARE_MEM_ODATA_SELECT <= 5'b0;
         end
         else begin
            MEM_ADDR         <= ADDR[9:0];
            MEM_WEB          <= (BISR_EN) ? 1'b1 : WEB;
            MEM_OEB          <= (BISR_EN) ? {64{1'b1}} : {64{OEB}} | (~(64'd1 << ADDR[15:10]));
            MEM_CSB          <= (BISR_EN) ? {64{1'b1}} : {64{CSB}} | (~(64'd1 << ADDR[15:10]));
            MEM_IDATA        <= (BISR_EN) ? 8'b0 : IDATA;
            MEM_ODATA_SELECT <= (BISR_EN) ? 6'b0 : ADDR[15:10];
            SPARE_MEM_ADDR <= (BISR_EN) ?  BISR_MEM_ADDR [6:0]: 7'b0;
            SPARE_MEM_WEB <= (BISR_EN) ? BISR_MEM_WEB : 1'b1;
            SPARE_MEM_OEB <= (BISR_EN) ? BISR_MEM_OEB [24:0] : {24{1'b1}};
            SPARE_MEM_CSB <= (BISR_EN) ? BISR_MEM_CSB [24:0] : {24{1'b1}};
            SPARE_MEM_IDATA <= (BISR_EN) ? BISR_MEM_IDATA [7:0] : 8'b0;
            SPARE_MEM_ODATA_SELECT <= (BISR_EN) ? BISR_MEM_ODATA_SELECT [4:0] : 5'b0;
         end
      end
   end
/*
   always@(posedge CLKB, negedge RSTN) begin
      if (!RSTN) begin
         PREV_CE <= 1'b0;
         MEM_CE <= 1'b0;
         SPARE_MEM_CE <= 1'b0;
      end
      else begin
         PREV_CE <= CE;
         if (BIST_EN) begin
            SPARE_MEM_CE <= 1'b0;

         end
         else begin
            if (BISR_EN) begin
               SPARE_MEM_CE <= BISR_MEM_CE;
               MEM_CE <= 1'b0;
            end
            else begin
               SPARE_MEM_CE <= 1'b0;
               MEM_CE <= PREV_CE;
            end
         end
      end
   end
*/
endmodule
