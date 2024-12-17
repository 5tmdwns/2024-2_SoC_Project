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
   output           BIST_PASS;

   wire [9:0] 		MEM_ADDR;
   wire             MEM_CE;
   wire             MEM_WEB;
   wire [63:0] 		MEM_OEB;
   wire [63:0] 		MEM_CSB;
   wire [7:0] 		MEM_IDATA;
   wire [7:0] 		MEM_ODATA;

   wire [9:0] 		FSM_MEM_ADDR;
   wire             FSM_MEM_CE;
   wire             FSM_MEM_WEB;
   wire [63:0] 		FSM_MEM_OEB;
   wire [63:0] 		FSM_MEM_CSB;
   wire [7:0] 		FSM_MEM_IDATA;

   wire [9:0] 		BISR_MEM_ADDR;
   wire             BISR_MEM_CE;
   wire             BISR_MEM_WEB;
   wire [63:0] 		BISR_MEM_OEB;
   wire [63:0] 		BISR_MEM_CSB;
   wire [7:0] 		BISR_MEM_IDATA;

   wire [6:0] 		SPARE_MEM_ADDR;
   wire 			SPARE_MEM_CE;
   wire 			SPARE_MEM_WEB;
   wire [24:0] 		SPARE_MEM_OEB;
   wire [24:0] 		SPARE_MEM_CSB;
   wire [7:0] 		SPARE_MEM_IDATA;
   wire [7:0] 		SPARE_MEM_ODATA;

   wire [15:0] 		NEED_REPAIR_ADDR;

   assign ODATA = MEM_ODATA | SPARE_MEM_ODATA;
   assign MEM_ADDR = FSM_MEM_ADDR | BISR_MEM_ADDR;
   assign MEM_CE = FSM_MEM_CE | BISR_MEM_CE;
   assign MEM_CSB = FSM_MEM_CSB & BISR_MEM_CSB;
   assign MEM_IDATA = FSM_MEM_IDATA | BISR_MEM_IDATA;
   assign MEM_OEB = FSM_MEM_OEB & BISR_MEM_OEB;
   assign MEM_WEB = FSM_MEM_WEB & BISR_MEM_WEB;

   ////////////////////////////////////////////////
  // FSM CONFIGRATION
   ////////////////////////////////////////////////
   FSM
     UFSM
       (/*AUTOINST*/
	// Outputs
	.MEM_ADDR			(FSM_MEM_ADDR[9:0]),
	.MEM_CE				(FSM_MEM_CE),
	.MEM_WEB			(FSM_MEM_WEB),
	.MEM_OEB			(FSM_MEM_OEB[63:0]),
	.MEM_CSB			(FSM_MEM_CSB[63:0]),
	.MEM_IDATA			(FSM_MEM_IDATA[7:0]),
	.BIST_PASS			(BIST_PASS),
	.NEED_REPAIR_ADDR		(NEED_REPAIR_ADDR[15:0]),
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
	.BIST_ODATA			(MEM_ODATA[7:0]));

   ////////////////////////////////////////////////
	 // BISR CONFIGRATION
   ////////////////////////////////////////////////    
   BISR
     UBISR
       (/*AUTOINST*/
	// Outputs
	.SPARE_MEM_ADDR			(SPARE_MEM_ADDR[6:0]),
	.SPARE_MEM_CE			(SPARE_MEM_CE),
	.SPARE_MEM_WEB			(SPARE_MEM_WEB),
	.SPARE_MEM_OEB			(SPARE_MEM_OEB[24:0]),
	.SPARE_MEM_CSB			(SPARE_MEM_CSB[24:0]),
	.SPARE_MEM_IDATA		(SPARE_MEM_IDATA[7:0]),
	.MEM_ADDR			(BISR_MEM_ADDR[9:0]),
	.MEM_CE				(BISR_MEM_CE),
	.MEM_WEB			(BISR_MEM_WEB),
	.MEM_OEB			(BISR_MEM_OEB[63:0]),
	.MEM_CSB			(BISR_MEM_CSB[63:0]),
	.MEM_IDATA			(BISR_MEM_IDATA[7:0]),
	// Inputs
	.CLK				(CLK),
	.RSTN				(RSTN),
	.ADDR				(ADDR[15:0]),
	.CE				(CE),
	.CSB				(CSB),
	.IDATA				(IDATA[7:0]),
	.OEB				(OEB),
	.WEB				(WEB),
	.BIST_EN			(BIST_EN),
	.BIST_PASS			(BIST_PASS),
	.NEED_REPAIR_ADDR		(NEED_REPAIR_ADDR[15:0]));
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
	.MEM_IDATA			(MEM_IDATA[7:0]));

   SPARE_SRAM3KB
     SPARE_USRAM
       (/*AUTOINST*/
	// Outputs
	.ODATA				(SPARE_MEM_ODATA[7:0]),
	// Inputs
	.MEM_ADDR			(SPARE_MEM_ADDR[6:0]),
	.MEM_CE				(SPARE_MEM_CE),
	.MEM_WEB			(SPARE_MEM_WEB),
	.MEM_OEB			(SPARE_MEM_OEB[24:0]),
	.MEM_CSB			(SPARE_MEM_CSB[24:0]),
	.MEM_IDATA			(SPARE_MEM_IDATA[7:0]));

endmodule
