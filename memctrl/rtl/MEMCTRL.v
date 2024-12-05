module MEMCTRL(/*AUTOARG*/
	       // Outputs
	       ODATA,
	       // Inputs
	       ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB
	       );
   input  [15:0]        ADDR;                   // To UFSM of FSM.v
   input                CE;                     // To UFSM of FSM.v
   input                CLK;                    // To UFSM of FSM.v
   input                CSB;                    // To UFSM of FSM.v
   input [7:0] 		IDATA;                  // To UFSM of FSM.v
   input                OEB;                    // To UFSM of FSM.v
   input                RSTN;                   // To UFSM of FSM.v
   input                WEB;                    // To UFSM of FSM.v

   output [7:0] 	ODATA;


   wire [9:0] 		MEM_ADDR;
   wire                 MEM_CE;
   wire                 MEM_WEB;
   wire [15:0] 		MEM_OEB_BANK1;
   wire [15:0] 		MEM_CSB_BANK1;
   wire [15:0] 		MEM_OEB_BANK2;
   wire [15:0] 		MEM_CSB_BANK2;
   wire [15:0] 		MEM_OEB_BANK3;
   wire [15:0] 		MEM_CSB_BANK3;
   wire [15:0] 		MEM_OEB_BANK4;
   wire [15:0] 		MEM_CSB_BANK4;
   wire [7:0] 		MEM_ODATA_BANK1;
   wire [7:0] 		MEM_ODATA_BANK2;
   wire [7:0] 		MEM_ODATA_BANK3;
   wire [7:0] 		MEM_ODATA_BANK4;
   wire [7:0] 		MEM_IDATA;
   wire [3:0] 		MEM_ODATA_SELECT;

   assign ODATA = MEM_ODATA_BANK1 | MEM_ODATA_BANK2 | MEM_ODATA_BANK3 | MEM_ODATA_BANK4;

   ////////////////////////////////////////////////
   // FSM CONFIGRATION
   ////////////////////////////////////////////////
   FSM
     UFSM
       (
        // Outputs
        .MEM_ADDR                       (MEM_ADDR[9:0]),
        .MEM_CE                         (MEM_CE),
        .MEM_WEB                        (MEM_WEB),
        .MEM_OEB_BANK1                        (MEM_OEB_BANK1[15:0]),
        .MEM_CSB_BANK1                        (MEM_CSB_BANK1[15:0]),
        .MEM_OEB_BANK2                        (MEM_OEB_BANK2[15:0]),
        .MEM_CSB_BANK2                        (MEM_CSB_BANK2[15:0]),
        .MEM_OEB_BANK3                        (MEM_OEB_BANK3[15:0]),
        .MEM_CSB_BANK3                        (MEM_CSB_BANK3[15:0]),
        .MEM_OEB_BANK4                        (MEM_OEB_BANK4[15:0]),
        .MEM_CSB_BANK4                        (MEM_CSB_BANK4[15:0]),                        
        .MEM_IDATA                      (MEM_IDATA[7:0]),
        .MEM_ODATA_SELECT               (MEM_ODATA_SELECT[3:0]),
        // Inputs
        .CLK                            (CLK),
        .RSTN                           (RSTN),
        .ADDR                           (ADDR[15:0]),
        .CE                             (CE),
        .CSB                            (CSB),
        .WEB                            (WEB),
        .OEB                            (OEB),
        .IDATA                          (IDATA[7:0]));

   ////////////////////////////////////////////////
	 // SRAM CONFIGRATION
   ////////////////////////////////////////////////
   SRAM64KB
     USRAM_BANK1
       (/*AUTOINST*/
	// Outputs
	.ODATA				(MEM_ODATA_BANK1[7:0]),
	// Inputs
	.MEM_ADDR			(MEM_ADDR[9:0]),
	.MEM_CE			(MEM_CE),
	.MEM_WEB			(MEM_WEB),
	.MEM_OEB			(MEM_OEB_BANK1[15:0]),
	.MEM_CSB			(MEM_CSB_BANK1[15:0]),
	.MEM_IDATA			(MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(MEM_ODATA_SELECT[3:0]));

   SRAM64KB
     USRAM_BANK2
       (/*AUTOINST*/
	// Outputs
	.ODATA				(MEM_ODATA_BANK2[7:0]),
	// Inputs
	.MEM_ADDR			(MEM_ADDR[9:0]),
	.MEM_CE			(MEM_CE),
	.MEM_WEB			(MEM_WEB),
	.MEM_OEB			(MEM_OEB_BANK2[15:0]),
	.MEM_CSB			(MEM_CSB_BANK2[15:0]),
	.MEM_IDATA			(MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(MEM_ODATA_SELECT[3:0]));

   SRAM64KB
     USRAM_BANK3
       (/*AUTOINST*/
	// Outputs
	.ODATA				(MEM_ODATA_BANK3[7:0]),
	// Inputs
	.MEM_ADDR			(MEM_ADDR[9:0]),
	.MEM_CE			(MEM_CE),
	.MEM_WEB			(MEM_WEB),
	.MEM_OEB			(MEM_OEB_BANK3[15:0]),
	.MEM_CSB			(MEM_CSB_BANK3[15:0]),
	.MEM_IDATA			(MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(MEM_ODATA_SELECT[3:0]));

   SRAM64KB
     USRAM_BANK4
       (/*AUTOINST*/
	// Outputs
	.ODATA				(MEM_ODATA_BANK4[7:0]),
	// Inputs
	.MEM_ADDR			(MEM_ADDR[9:0]),
	.MEM_CE			(MEM_CE),
	.MEM_WEB			(MEM_WEB),
	.MEM_OEB			(MEM_OEB_BANK4[15:0]),
	.MEM_CSB			(MEM_CSB_BANK4[15:0]),
	.MEM_IDATA			(MEM_IDATA[7:0]),
	.MEM_ODATA_SELECT		(MEM_ODATA_SELECT[3:0]));

endmodule
