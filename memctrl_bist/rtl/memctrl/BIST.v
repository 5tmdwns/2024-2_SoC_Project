module BIST(/*AUTOARG*/
           // Outputs
           BIST_MEM_ADDR, BIST_MEM_CE, BIST_MEM_WEB, BIST_MEM_OEB, BIST_MEM_CSB, BIST_MEM_IDATA, BIST_PASS,
           // Inputs
           CLK, RSTN, BIST_EN, BIST_MODE, BIST_ODATA);
           
    input                    CLK;
    input                    RSTN;
    input                    BIST_EN;
    input        [2:0]       BIST_MODE;
    input        [7:0]       BIST_ODATA;

    output reg   [9:0]       BIST_MEM_ADDR;
    output reg               BIST_MEM_CE;
    output reg               BIST_MEM_WEB;
    output reg   [63:0]      BIST_MEM_OEB;
    output reg   [63:0]      BIST_MEM_CSB;
    output reg   [7:0]       BIST_MEM_IDATA;
    output reg               BIST_PASS;


    wire BIST_MODE0, BIST_MODE1, BIST_MODE2;

    assign BIST_MODE0 = BIST_EN & BIST_MODE[0];
    assign BIST_MODE1 = BIST_EN & BIST_MODE[1];
    assign BIST_MODE2 = BIST_EN & BIST_MODE[2];


    wire [15:0] LFSR_ADDR, GRAY_ADDR, BIN_ADDR;
    wire [7:0]  LFSR_DATA, Toggle_DATA;
    
    LFSR16B LFSR_ADDR_GEN       (.CLK(CLK), .RSTN(RSTN), .EN(BIST_MODE0), .OUT(LFSR_ADDR));
	GrayCounter GRAY_ADDR_GEN   (.CLK(CLK), .RSTN(RSTN), .EN(BIST_MODE1), .OUT(GRAY_ADDR));
	BinaryCounter BIN_ADDR_GEN  (.CLK(CLK), .RSTN(RSTN), .EN(BIST_MODE2), .OUT(BIN_ADDR));

	LFSR8B LFSR_DATA_GEN        (.CLK(CLK), .RSTN(RSTN), .EN(BIST_MODE0), .OUT(LFSR_DATA));
    Toggle8B Toggle_DATA_GEN    (.CLK(CLK), .RSTN(RSTN), .EN(BIST_MODE1 | BIST_MODE2), .OUT(Toggle_DATA));    


    reg [15:0] BIST_MEM_ADDR_reg;

    always @(*) begin
            case (BIST_MODE)
                3'b001: BIST_MEM_ADDR_reg  = LFSR_ADDR;
                3'b010: BIST_MEM_ADDR_reg  = GRAY_ADDR;
                3'b100: BIST_MEM_ADDR_reg  = BIN_ADDR;
                default: BIST_MEM_ADDR_reg = 16'h0000;
            endcase
        end


    reg [7:0] BIST_MEM_IDATA_reg;

    always @(*) begin
            case (BIST_MODE)
                3'b001: BIST_MEM_IDATA_reg  = LFSR_DATA;
                3'b010: BIST_MEM_IDATA_reg  = Toggle_DATA;
                3'b100: BIST_MEM_IDATA_reg  = Toggle_DATA;
                default: BIST_MEM_IDATA_reg = 8'h00;
            endcase
    end


    localparam  IDLE     =   5'b00001;
    localparam  WRITE1   =   5'b00010;
    localparam  WRITE2   =   5'b00100;
    localparam  READ1    =   5'b01000;
    localparam  READ2    =   5'b10000;

    reg [4:0] state, next_state;

    always @(posedge CLK or negedge RSTN) begin
        if (!RSTN) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end

    always @(*) begin
        case (state)
            IDLE:    next_state = (BIST_EN) ? WRITE1 : IDLE;
            WRITE1:  next_state = WRITE2;
            WRITE2:  next_state = READ1;
            READ1:   next_state = READ2;
            READ2:   next_state = (BIST_EN) ? WRITE1 : IDLE;
            default: next_state = IDLE;
        endcase
    end

    always @(posedge CLK or negedge RSTN) begin
        if (!RSTN) begin
            BIST_MEM_IDATA        <= 8'b0;
            BIST_MEM_ADDR         <= 15'b0;

            BIST_MEM_CE  <= 1'b0;
            BIST_MEM_WEB <= 1'b1;
            BIST_MEM_CSB <= 64'hffff_ffff_ffff_ffff;
            BIST_MEM_OEB <= 64'hffff_ffff_ffff_ffff;

            BIST_PASS <= 1'b0;
        end
        else begin
            case (state)
                IDLE: begin
                    BIST_MEM_IDATA        <= 8'b0;
                    BIST_MEM_ADDR         <= 15'b0;

                    BIST_MEM_CE  <= 1'b0;
                    BIST_MEM_WEB <= 1'b1;
                    BIST_MEM_CSB <= 64'hffff_ffff_ffff_ffff;
                    BIST_MEM_OEB <= 64'hffff_ffff_ffff_ffff;

                    BIST_PASS <= 1'b0;
                end
                WRITE1: begin
                    BIST_MEM_IDATA        <= BIST_MEM_IDATA;
                    BIST_MEM_ADDR         <= BIST_MEM_ADDR_reg[9:0];

                    BIST_MEM_CE  <= 1'b0;
                    BIST_MEM_WEB <= 1'b1;
                    BIST_MEM_CSB <= 64'hffff_ffff_ffff_ffff;
                    BIST_MEM_OEB <= BIST_MEM_OEB;

                    BIST_PASS <= 1'b0;
                end
                WRITE2: begin
                    BIST_MEM_IDATA        <= BIST_MEM_IDATA_reg;
                    BIST_MEM_ADDR         <= BIST_MEM_ADDR;

                    BIST_MEM_CE  <= 1'b1;
                    BIST_MEM_WEB <= 1'b0;
                    BIST_MEM_CSB <= ~(64'd1 << BIST_MEM_ADDR_reg[15:10]);
                    BIST_MEM_OEB <= 64'hffff_ffff_ffff_ffff;
                    
					if (BIST_ODATA != BIST_MEM_IDATA) begin
    				    BIST_PASS <= 1'b1;
					end
                    else begin
    				    BIST_PASS <= 1'b0; 
				    end

                end
                READ1: begin
                    BIST_MEM_IDATA        <= BIST_MEM_IDATA;
                    BIST_MEM_ADDR         <= BIST_MEM_ADDR;

                    BIST_MEM_CE  <= 1'b0;
                    BIST_MEM_WEB <= 1'b1;
                    BIST_MEM_CSB <= 64'hffff_ffff_ffff_ffff;
                    BIST_MEM_OEB <= 64'hffff_ffff_ffff_ffff;

                    BIST_PASS <= 1'b0;
                end
                READ2: begin
                    BIST_MEM_IDATA        <= BIST_MEM_IDATA;
                    BIST_MEM_ADDR         <= BIST_MEM_ADDR;

                    BIST_MEM_CE  <= 1'b1;
                    BIST_MEM_WEB <= 1'b1;
                    BIST_MEM_CSB <= ~(64'd1 << BIST_MEM_ADDR_reg[15:10]);
                    BIST_MEM_OEB <= ~(64'd1 << BIST_MEM_ADDR_reg[15:10]);

                    BIST_PASS <= 1'b0;
                end
            endcase
        end
    end

endmodule
