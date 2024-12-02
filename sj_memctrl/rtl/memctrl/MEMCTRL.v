module MEMCTRL(/*AUTOARG*/
               // Outputs
               ODATA,
               // Inputs
               ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB
               );
   input [10:0]         ADDR;                   // To UFSM of FSM.v
   input                CE;                     // To UFSM of FSM.v
   input                CLK;                    // To UFSM of FSM.v
   input                CSB;                    // To UFSM of FSM.v
   input [7:0]          IDATA;                  // To UFSM of FSM.v
   input                OEB;                    // To UFSM of FSM.v
   input                RSTN;                   // To UFSM of FSM.v
   input                WEB;                    // To UFSM of FSM.v

   output [7:0]         ODATA;


   wire [8:0]           MEM_ADDR;
   wire                 MEM_CE;
   wire                 MEM_WEB;
   wire [3:0]         MEM_OEB;
   wire [3:0]         MEM_CSB;
   wire [7:0]           MEM_IDATA;
   ////////////////////////////////////////////////
   // FSM CONFIGRATION
   ////////////////////////////////////////////////
   FSM
     UFSM
       (
        // Outputs
        .MEM_ADDR (MEM_ADDR[8:0]),
        .MEM_CE (MEM_CE),
        .MEM_WEB (MEM_WEB),
        .MEM_OEB (MEM_OEB[3:0]),
        .MEM_CSB (MEM_CSB[3:0]),
        .MEM_IDATA (MEM_IDATA[7:0]),
        // Inputs
        .CLK                            (CLK),
        .RSTN                           (RSTN),
        .ADDR                           (ADDR[10:0]),
        .CE                             (CE),
        .CSB                            (CSB),
        .WEB                            (WEB),
        .OEB                            (OEB),
        .IDATA                          (IDATA[7:0]));

   ////////////////////////////////////////////////
         // SRAM CONFIGRATION
   ////////////////////////////////////////////////
   SRAM2KB
     USRAM
       (/*AUTOINST*/
        // Outputs
        .ODATA                          (ODATA[7:0]),
        // Inputs
        .MEM_ADDR                       (MEM_ADDR[8:0]),
        .MEM_CE                         (MEM_CE),
        .MEM_WEB                        (MEM_WEB),
        .MEM_OEB                        (MEM_OEB[3:0]),
        .MEM_CSB                        (MEM_CSB[3:0]),
        .MEM_IDATA                      (MEM_IDATA[7:0]));

endmodule
