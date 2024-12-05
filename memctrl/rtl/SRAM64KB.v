module SRAM64KB(/*AUTOARG*/
                // Outputs
                ODATA,
                // Inputs
                MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, MEM_ODATA_SELECT
                );
    input       [9:0]           MEM_ADDR;
    input                       MEM_CE;
    input                       MEM_WEB;
    input       [15:0]          MEM_OEB;
    input       [15:0]          MEM_CSB;
    input       [7:0]           MEM_IDATA;
    input       [3:0]           MEM_ODATA_SELECT;

    output reg  [7:0]           ODATA;


    wire        [16*8-1:0]      TMP_ODATA;
    wire        [16*8-1:0]      GATE_ODATA;

    genvar i;
    generate
        for (i=0; i<16; i=i+1) begin
            SRAM1RW1024x8
                UMEM (
                    .A(MEM_ADDR[9:0]),
                    .CE(MEM_CE),
                    .WEB(MEM_WEB),
                    .OEB(MEM_OEB[i]),
                    .CSB(MEM_CSB[i]),
                    .I(MEM_IDATA[7:0]),
	    			.O(TMP_ODATA[8*(i+1)-1:8*i]));

                    assign GATE_ODATA[8*(i+1)-1:8*i] = TMP_ODATA[8*(i+1)-1:8*i] & {8{~MEM_OEB[i]}};
        end
    endgenerate

    always @(*) begin
        case (MEM_ODATA_SELECT)
            6'd0  : ODATA = GATE_ODATA [7:0];
            6'd1  : ODATA = GATE_ODATA [15:8];
            6'd2  : ODATA = GATE_ODATA [23:16];
            6'd3  : ODATA = GATE_ODATA [31:24];
            6'd4  : ODATA = GATE_ODATA [39:32];
            6'd5  : ODATA = GATE_ODATA [47:40];
            6'd6  : ODATA = GATE_ODATA [55:48];
            6'd7  : ODATA = GATE_ODATA [63:56];
            6'd8  : ODATA = GATE_ODATA [71:64];
            6'd9  : ODATA = GATE_ODATA [79:72];
            6'd10 : ODATA = GATE_ODATA [87:80];
            6'd11 : ODATA = GATE_ODATA [95:88];
            6'd12 : ODATA = GATE_ODATA [103:96];
            6'd13 : ODATA = GATE_ODATA [111:104];
            6'd14 : ODATA = GATE_ODATA [119:112];
            6'd15 : ODATA = GATE_ODATA [127:120];
        endcase
    end
endmodule
