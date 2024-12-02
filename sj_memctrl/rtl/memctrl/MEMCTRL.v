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
    input  [7:0]         IDATA;                  // To UFSM of FSM.v
    input                OEB;                    // To UFSM of FSM.v
    input                RSTN;                   // To UFSM of FSM.v
    input                WEB;                    // To UFSM of FSM.v

    output [7:0]         ODATA;


    wire   [9:0]         MEM_ADDR;
    wire                 MEM_CE;
    wire                 MEM_WEB;
    wire   [63:0]        MEM_OEB;
    wire   [63:0]        MEM_CSB;
    wire   [7:0]         MEM_IDATA;
    wire   [5:0]         MEM_ODATA_SELECT;

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
        .MEM_OEB                        (MEM_OEB[63:0]),
        .MEM_CSB                        (MEM_CSB[63:0]),
        .MEM_IDATA                      (MEM_IDATA[7:0]),
        .MEM_ODATA_SELECT               (MEM_ODATA_SELECT[5:0]),
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
        USRAM
        (/*AUTOINST*/
        // Outputs
        .ODATA                          (ODATA[7:0]),
        // Inputs
        .MEM_ADDR                       (MEM_ADDR[9:0]),
        .MEM_CE                         (MEM_CE),
        .MEM_WEB                        (MEM_WEB),
        .MEM_OEB                        (MEM_OEB[63:0]),
        .MEM_CSB                        (MEM_CSB[63:0]),
        .MEM_IDATA                      (MEM_IDATA[7:0]),
        .MEM_ODATA_SELECT               (MEM_ODATA_SELECT[5:0]));

endmodule
