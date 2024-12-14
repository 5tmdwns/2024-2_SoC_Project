module MEMCTRL(/*AUTOARG*/
               // Outputs
               ODATA, BIST_PASS, //BIST_END,
               // Inputs
               ADDR, CE, CLK, CSB, IDATA, OEB, RSTN, WEB, BIST_EN, BIST_MODE//, BISR_EN
               );
    input  [15:0]        ADDR;
    input                CE;
    input                CLK;
    input                CSB;
    input  [7:0]         IDATA;
    input                OEB;
    input                RSTN;
    input                WEB;
    input                BIST_EN;
    input  [2:0]         BIST_MODE;
    //input                BISR_EN;        //사용 예정

    output [7:0]         ODATA;
    output               BIST_PASS;


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
        .BIST_PASS                      (BIST_PASS),
        // Inputs
        .CLK                            (CLK),
        .RSTN                           (RSTN),
        .ADDR                           (ADDR[15:0]),
        .CE                             (CE),
        .CSB                            (CSB),
        .WEB                            (WEB),
        .OEB                            (OEB),
        .IDATA                          (IDATA[7:0]),
        .BIST_EN                        (BIST_EN), 
        .BIST_MODE                      (BIST_MODE[2:0]),
        .BIST_ODATA                     (ODATA[7:0]));

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
