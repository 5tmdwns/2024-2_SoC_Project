module SPARE_SRAM3KB(/*AUTOARG*/
		     // Outputs
		     ODATA,
		     // Inputs
		     MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA,
		     MEM_ODATA_SELECT
		     );
   input       [6:0]           MEM_ADDR;
   input                       MEM_CE;
   input                       MEM_WEB;
   input [24:0] 	       MEM_OEB;
   input [24:0] 	       MEM_CSB;
   input [7:0] 		       MEM_IDATA;
   input [4:0] 		       MEM_ODATA_SELECT;

   output reg [7:0] 	       ODATA;


   wire [25*8-1:0] 	       TMP_ODATA;
   wire [25*8-1:0] 	       GATE_ODATA;

   genvar 		       i;
   generate
      for (i=0; i<25; i=i+1) begin
         SRAM1RW128x8
             SPARE_UMEM (
			 .A(MEM_ADDR[6:0]),
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
        5'd0  : ODATA = GATE_ODATA [7:0];
        5'd1  : ODATA = GATE_ODATA [15:8];
        5'd2  : ODATA = GATE_ODATA [23:16];
        5'd3  : ODATA = GATE_ODATA [31:24];
        5'd4  : ODATA = GATE_ODATA [39:32];
        5'd5  : ODATA = GATE_ODATA [47:40];
        5'd6  : ODATA = GATE_ODATA [55:48];
        5'd7  : ODATA = GATE_ODATA [63:56];
        5'd8  : ODATA = GATE_ODATA [71:64];
        5'd9  : ODATA = GATE_ODATA [79:72];
        5'd10 : ODATA = GATE_ODATA [87:80];
        5'd11 : ODATA = GATE_ODATA [95:88];
        5'd12 : ODATA = GATE_ODATA [103:96];
        5'd13 : ODATA = GATE_ODATA [111:104];
        5'd14 : ODATA = GATE_ODATA [119:112];
        5'd15 : ODATA = GATE_ODATA [127:120];
        5'd16 : ODATA = GATE_ODATA [135:128];
        5'd17 : ODATA = GATE_ODATA [143:136];
        5'd18 : ODATA = GATE_ODATA [151:144];
        5'd19 : ODATA = GATE_ODATA [159:152];
        5'd20 : ODATA = GATE_ODATA [167:160];
        5'd21 : ODATA = GATE_ODATA [175:168];
        5'd22 : ODATA = GATE_ODATA [183:176];
        5'd23 : ODATA = GATE_ODATA [191:184];
        5'd24 : ODATA = GATE_ODATA [199:192];
        default : ODATA = 8'b0;
      endcase
   end

endmodule
