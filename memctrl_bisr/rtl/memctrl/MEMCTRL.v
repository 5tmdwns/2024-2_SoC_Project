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

   wire [7:0] MEM_ODATA;
   wire [9:0] 		MEM_ADDR;
   wire                 MEM_CE;
   wire                 MEM_WEB;
   wire [63:0] 		MEM_OEB;
   wire [63:0] 		MEM_CSB;
   wire [7:0] 		MEM_IDATA;
   wire [5:0] 		MEM_ODATA_SELECT;

   wire [6:0] 		SPARE_MEM_ADDR;
   wire 		SPARE_MEM_CE;
   wire 		SPARE_MEM_WEB;
   wire [24:0] 		SPARE_MEM_OEB;
   wire [24:0] 		SPARE_MEM_CSB;
   wire [7:0] 		SPARE_MEM_IDATA;
   wire [4:0] 		SPARE_MEM_ODATA_SELECT;
   wire [7:0] SPARE_MEM_ODATA;

   assign ODATA = MEM_ODATA | SPARE_MEM_ODATA;

   ////////////////////////////////////////////////
  // FSM CONFIGRATION
   ////////////////////////////////////////////////
   FSM
     UFSM
       (/*AUTOINST*/
	// Outputs
	.MEM_ADDR			(MEM_ADDR[9:0]),
	.MEM_CE				(MEM_CE),
	.MEM_WEB			(MEM_WEB),
	.MEM_OEB			(MEM_OEB[63:0]),
	.MEM_CSB			(MEM_CSB[63:0]),
	.MEM_IDATA			(MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(MEM_ODATA_SELECT[5:0]),
	.BIST_PASS			(BIST_PASS),
	.SPARE_MEM_ADDR			(SPARE_MEM_ADDR[6:0]),
	.SPARE_MEM_CE			(SPARE_MEM_CE),
	.SPARE_MEM_WEB			(SPARE_MEM_WEB),
	.SPARE_MEM_OEB			(SPARE_MEM_OEB[24:0]),
	.SPARE_MEM_CSB			(SPARE_MEM_CSB[24:0]),
	.SPARE_MEM_IDATA		(SPARE_MEM_IDATA[7:0]),
	.SPARE_MEM_ODATA_SELECT		(SPARE_MEM_ODATA_SELECT[4:0]),
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
	.BIST_ODATA			(BIST_ODATA[7:0]));

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
	.ODATA				(SPARE_MEM_ODATA[7:0]),
	// Inputs
	.MEM_ADDR			(SPARE_MEM_ADDR[9:0]),
	.MEM_CE				(SPARE_MEM_CE),
	.MEM_WEB			(SPARE_MEM_WEB),
	.MEM_OEB			(SPARE_MEM_OEB[24:0]),
	.MEM_CSB			(SPARE_MEM_CSB[24:0]),
	.MEM_IDATA			(SPARE_MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(SPARE_MEM_ODATA_SELECT[4:0]));

endmodule
