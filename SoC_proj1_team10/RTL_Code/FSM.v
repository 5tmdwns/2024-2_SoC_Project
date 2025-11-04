module FSM(/*AUTOARG*/
	       // Outputs
		   MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, BIST_PASS,
           // Inputs
           CLK, RSTN, ADDR, CE, CSB, WEB, OEB, IDATA, BIST_EN, BIST_MODE, BIST_ODATA);
           
    input                    CLK;
    input                    RSTN;
    input        [15:0]      ADDR;
    input                    CE;
    input                    CSB;
    input                    WEB;
    input                    OEB;
    input        [7:0]       IDATA;
    input                    BIST_EN;
    input        [2:0]       BIST_MODE;
    input        [7:0]       BIST_ODATA;

    output reg   [9:0]       MEM_ADDR;
    output reg               MEM_CE;
    output reg               MEM_WEB;
    output reg   [63:0]      MEM_OEB;
    output reg   [63:0]      MEM_CSB;
    output reg   [7:0]       MEM_IDATA;
    output                   BIST_PASS;


    wire         [9:0]       BIST_MEM_ADDR;
    wire                     BIST_MEM_CE;
    wire                     BIST_MEM_WEB;
    wire         [63:0]      BIST_MEM_OEB;
    wire         [63:0]      BIST_MEM_CSB;
    wire         [7:0]       BIST_MEM_IDATA;

    BIST
        UBIST
        (/*AUTOINST*/
        // Outputs
        .BIST_MEM_ADDR                       (BIST_MEM_ADDR[9:0]),
        .BIST_MEM_CE                         (BIST_MEM_CE),
        .BIST_MEM_WEB                        (BIST_MEM_WEB),
        .BIST_MEM_OEB                        (BIST_MEM_OEB[63:0]),
        .BIST_MEM_CSB                        (BIST_MEM_CSB[63:0]),
        .BIST_MEM_IDATA                      (BIST_MEM_IDATA[7:0]),
        .BIST_PASS                           (BIST_PASS),

        // Inputs
        .CLK                                 (CLK),
        .RSTN                                (RSTN),
        .BIST_EN                             (BIST_EN),
        .BIST_MODE                           (BIST_MODE[2:0]),
        .BIST_ODATA                          (BIST_ODATA[7:0]));


    always @(posedge CLK or negedge RSTN) begin
        if(!RSTN) begin
            MEM_ADDR         <= 10'b0;
            MEM_WEB          <= 1'b1;
            MEM_CSB          <= {64{1'b1}};
            MEM_IDATA        <= 8'b0;
        end
        else begin
            if (BIST_EN) begin
                MEM_ADDR         <= BIST_MEM_ADDR[9:0];
                MEM_WEB          <= BIST_MEM_WEB;
                MEM_CSB          <= BIST_MEM_CSB[63:0];
                MEM_IDATA        <= BIST_MEM_IDATA[7:0];
            end
            else begin
                MEM_ADDR         <= ADDR[9:0];
                MEM_WEB          <= WEB;
                MEM_CSB          <= {64{CSB}} | (~(64'd1 << ADDR[15:10]));
                MEM_IDATA        <= IDATA;
            end
        end
    end


	wire CLKB;

	assign CLKB = ~CLK;


	reg PREV_CE;
    reg [63:0] PREV_OEB;

    always@(posedge CLKB or negedge RSTN) begin
        if(!RSTN) begin
            PREV_CE <= 1'b0;
            MEM_CE  <= 1'b0;
            PREV_OEB <= {64{1'b1}};
            MEM_OEB  <= {64{1'b1}};
        end
        else begin
            if (BIST_EN) begin
                PREV_CE <= BIST_MEM_CE;
                MEM_CE  <= PREV_CE;
                PREV_OEB <= BIST_MEM_OEB[63:0];
                MEM_OEB  <= PREV_OEB;
            end
            else begin
                PREV_CE <= 1'b0;
                MEM_CE  <= CE;
                PREV_OEB <= {64{OEB}} | (~(64'd1 << ADDR[15:10]));
                MEM_OEB  <= PREV_OEB;
            end
        end
    end

endmodule
