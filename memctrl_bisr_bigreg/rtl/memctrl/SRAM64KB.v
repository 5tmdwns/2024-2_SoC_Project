module SRAM64KB(/*AUTOARG*/
                // Outputs
                ODATA,
                // Inputs
                MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, MEM_ODATA_SELECT
                );
    input       [9:0]           MEM_ADDR;
    input                       MEM_CE;
    input                       MEM_WEB;
    input       [63:0]          MEM_OEB;
    input       [63:0]          MEM_CSB;
    input       [7:0]           MEM_IDATA;
    input       [5:0]           MEM_ODATA_SELECT;

    output reg  [7:0]           ODATA;


    wire        [64*8-1:0]      TMP_ODATA;
    wire        [64*8-1:0]      GATE_ODATA;

    genvar i;
    generate
        for (i=0; i<64; i=i+1) begin
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
            6'd16 : ODATA = GATE_ODATA [135:128];
            6'd17 : ODATA = GATE_ODATA [143:136];
            6'd18 : ODATA = GATE_ODATA [151:144];
            6'd19 : ODATA = GATE_ODATA [159:152];
            6'd20 : ODATA = GATE_ODATA [167:160];
            6'd21 : ODATA = GATE_ODATA [175:168];
            6'd22 : ODATA = GATE_ODATA [183:176];
            6'd23 : ODATA = GATE_ODATA [191:184];
            6'd24 : ODATA = GATE_ODATA [199:192];
            6'd25 : ODATA = GATE_ODATA [207:200];
            6'd26 : ODATA = GATE_ODATA [215:208];
            6'd27 : ODATA = GATE_ODATA [223:216];
            6'd28 : ODATA = GATE_ODATA [231:224];
            6'd29 : ODATA = GATE_ODATA [239:232];
            6'd30 : ODATA = GATE_ODATA [247:240];
            6'd31 : ODATA = GATE_ODATA [255:248];
            6'd32 : ODATA = GATE_ODATA [263:256];
            6'd33 : ODATA = GATE_ODATA [271:264];
            6'd34 : ODATA = GATE_ODATA [279:272];
            6'd35 : ODATA = GATE_ODATA [287:280];
            6'd36 : ODATA = GATE_ODATA [295:288];
            6'd37 : ODATA = GATE_ODATA [303:296];
            6'd38 : ODATA = GATE_ODATA [311:304];
            6'd39 : ODATA = GATE_ODATA [319:312];
            6'd40 : ODATA = GATE_ODATA [327:320];
            6'd41 : ODATA = GATE_ODATA [335:328];
            6'd42 : ODATA = GATE_ODATA [343:336];
            6'd43 : ODATA = GATE_ODATA [351:344];
            6'd44 : ODATA = GATE_ODATA [359:352];
            6'd45 : ODATA = GATE_ODATA [367:360];
            6'd46 : ODATA = GATE_ODATA [375:368];
            6'd47 : ODATA = GATE_ODATA [383:376];
            6'd48 : ODATA = GATE_ODATA [391:384];
            6'd49 : ODATA = GATE_ODATA [399:392];
            6'd50 : ODATA = GATE_ODATA [407:400];
            6'd51 : ODATA = GATE_ODATA [415:408];
            6'd52 : ODATA = GATE_ODATA [423:416];
            6'd53 : ODATA = GATE_ODATA [431:424];
            6'd54 : ODATA = GATE_ODATA [439:432];
            6'd55 : ODATA = GATE_ODATA [447:440];
            6'd56 : ODATA = GATE_ODATA [455:448];
            6'd57 : ODATA = GATE_ODATA [463:456];
            6'd58 : ODATA = GATE_ODATA [471:464];
            6'd59 : ODATA = GATE_ODATA [479:472];
            6'd60 : ODATA = GATE_ODATA [487:480];
            6'd61 : ODATA = GATE_ODATA [495:488];
            6'd62 : ODATA = GATE_ODATA [503:496];
            6'd63 : ODATA = GATE_ODATA [511:504];
        endcase
    end
endmodule