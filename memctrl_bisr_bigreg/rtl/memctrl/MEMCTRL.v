module MEMCTRL(/*AUTOARG*/
   // Outputs
   ODATA, BIST_PASS,
   // Inputs
   ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB, BIST_EN, BIST_MODE
   );
   input  [15:0]        ADDR;
   input                CE;
   input                CLK;
   input                CSB;
   input [7:0] 		IDATA;
   input                OEB;
   input                RSTN;
   input                WEB;
   input                BIST_EN;
   input [2:0] 		BIST_MODE;

   output [7:0] 	ODATA;
   output               BIST_PASS;

   wire [9:0] 		UBIST_MEM_ADDR;
   wire                 UBIST_MEM_CE;
   wire                 UBIST_MEM_WEB;
   wire [63:0] 		UBIST_MEM_OEB;
   wire [63:0] 		UBIST_MEM_CSB;
   wire [7:0] 		UBIST_MEM_IDATA;
   wire [5:0] 		UBIST_MEM_ODATA_SELECT;

   wire [9:0] 		UBISR_MEM_ADDR;
   wire                 UBISR_MEM_CE;
   wire                 UBISR_MEM_WEB;
   wire [63:0] 		UBISR_MEM_OEB;
   wire [63:0] 		UBISR_MEM_CSB;
   wire [7:0] 		UBISR_MEM_IDATA;
   wire [5:0] 		UBISR_MEM_ODATA_SELECT;

   wire [9:0] 		MEM_ADDR;
   wire                 MEM_CE;
   wire                 MEM_WEB;
   wire [63:0] 		MEM_OEB;
   wire [63:0] 		MEM_CSB;
   wire [7:0] 		MEM_IDATA;
   wire [5:0] 		MEM_ODATA_SELECT;
   wire [7:0] 		MEM_ODATA; 

   wire [6:0] 		BISR_MEM_ADDR;
   wire 		BISR_MEM_CE;
   wire 		BISR_MEM_WEB;
   wire [24:0] 		BISR_MEM_OEB;
   wire [24:0] 		BISR_MEM_CSB;
   wire [7:0] 		BISR_MEM_IDATA;
   wire [4:0] 		BISR_MEM_ODATA_SELECT;
   wire [7:0] 		BISR_MEM_ODATA;

   wire [9:0] NEED_REPAIR_ADDR;
   wire [5:0] NEED_REPAIR_SELECT;

   assign ODATA = MEM_ODATA | BISR_MEM_ODATA;
  //  assign BIST_ODATA = MEM_ODATA;
   assign MEM_ADDR = UBIST_MEM_ADDR | UBISR_MEM_ADDR;
   assign MEM_CE = UBIST_MEM_CE | UBISR_MEM_CE;
   assign MEM_CSB = UBIST_MEM_CSB & UBISR_MEM_CSB;
   assign MEM_IDATA = UBIST_MEM_IDATA | UBISR_MEM_IDATA;
   assign MEM_ODATA_SELECT = UBIST_MEM_ODATA_SELECT | UBISR_MEM_ODATA_SELECT;
   assign MEM_OEB = UBIST_MEM_OEB & UBISR_MEM_OEB;
   assign MEM_WEB = UBIST_MEM_WEB & UBISR_MEM_WEB;

   ////////////////////////////////////////////////
  // FSM CONFIGRATION
   ////////////////////////////////////////////////
   BIST_FSM
     UBIST_FSM
       (/*AUTOINST*/
	// Outputs
	.MEM_ADDR			(UBIST_MEM_ADDR[9:0]),
	.MEM_CE				(UBIST_MEM_CE),
	.MEM_WEB			(UBIST_MEM_WEB),
	.MEM_OEB			(UBIST_MEM_OEB[63:0]),
	.MEM_CSB			(UBIST_MEM_CSB[63:0]),
	.MEM_IDATA			(UBIST_MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(UBIST_MEM_ODATA_SELECT[5:0]),
	.NEED_REPAIR_ADDR		(NEED_REPAIR_ADDR[9:0]),
	.NEED_REPAIR_SELECT		(NEED_REPAIR_SELECT[5:0]),
	.BIST_PASS			(BIST_PASS),
	// Inputs
	.CLK				(CLK),
	.RSTN				(RSTN),
	.ADDR				(ADDR[15:0]),
	.CE				(CE),
	.CSB				(CSB),
	.WEB				(WEB),
	.OEB				(OEB),
	.IDATA				(IDATA[7:0]),
	.BIST_EN			(BIST_EN),
	.BIST_MODE			(BIST_MODE[2:0]),
	.BIST_ODATA			(ODATA[7:0]));
   
   BISR_FSM
     UBISR_FSM
       (/*AUTOINST*/
	// Outputs
	.BISR_MEM_ADDR			(BISR_MEM_ADDR[6:0]),
	.BISR_MEM_CE			(BISR_MEM_CE),
	.BISR_MEM_WEB			(BISR_MEM_WEB),
	.BISR_MEM_OEB			(BISR_MEM_OEB[24:0]),
	.BISR_MEM_CSB			(BISR_MEM_CSB[24:0]),
	.BISR_MEM_IDATA			(BISR_MEM_IDATA[7:0]),
	.BISR_MEM_ODATA_SELECT		(BISR_MEM_ODATA_SELECT[4:0]),
	.MEM_ADDR			(UBISR_MEM_ADDR[9:0]),
	.MEM_CE				(UBISR_MEM_CE),
	.MEM_WEB			(UBISR_MEM_WEB),
	.MEM_OEB			(UBISR_MEM_OEB[63:0]),
	.MEM_CSB			(UBISR_MEM_CSB[63:0]),
	.MEM_IDATA			(UBISR_MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(UBISR_MEM_ODATA_SELECT[5:0]),

	// Inputs
	.CLK				(CLK),
	.RSTN				(RSTN),
	.ADDR				(ADDR[15:0]),
	.CE				(CE),
	.CSB				(CSB),
	.WEB				(WEB),
	.OEB				(OEB),
	.IDATA				(IDATA[7:0]),
	.BIST_EN			(BIST_EN),
	.BIST_PASS			(BIST_PASS),
	.NEED_REPAIR_SELECT		(NEED_REPAIR_SELECT[5:0]),
	.NEED_REPAIR_ADDR		(NEED_REPAIR_ADDR[9:0]));

   ////////////////////////////////////////////////
	 // SRAM CONFIGRATION
   ////////////////////////////////////////////////
   SRAM64KB
     USRAM
       (/*AUTOINST*/
	// Outputs
	.ODATA				(MEM_ODATA[7:0]),
	// Inputs
	.MEM_ADDR			(MEM_ADDR[9:0]),
	.MEM_CE				(MEM_CE),
	.MEM_WEB			(MEM_WEB),
	.MEM_OEB			(MEM_OEB[63:0]),
	.MEM_CSB			(MEM_CSB[63:0]),
	.MEM_IDATA			(MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(MEM_ODATA_SELECT[5:0])); 
   
   SPARE_SRAM3KB
     SPARE_USRAM
       (/*AUTOINST*/
	// Outputs
	.ODATA				(BISR_MEM_ODATA[7:0]),
	// Inputs
	.MEM_ADDR			(BISR_MEM_ADDR[6:0]),
	.MEM_CE				(BISR_MEM_CE),
	.MEM_WEB			(BISR_MEM_WEB),
	.MEM_OEB			(BISR_MEM_OEB[24:0]),
	.MEM_CSB			(BISR_MEM_CSB[24:0]),
	.MEM_IDATA			(BISR_MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(BISR_MEM_ODATA_SELECT[4:0]));

endmodule
