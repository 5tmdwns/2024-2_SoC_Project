module SRAM64KB(/*AUTOARG*/
		// Outputs
		ODATA,
		// Inputs
		MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA
		);
   input       [9:0]     MEM_ADDR;
   input                 MEM_CE;
   input                 MEM_WEB;
   input [63:0] 	 MEM_OEB;
   input [63:0] 	 MEM_CSB;
   input [7:0] 		 MEM_IDATA;

   output [7:0] 	 ODATA;


   wire [64*8-1:0] 	 TMP_ODATA;
   wire [64*8-1:0] 	 GATE_ODATA;
   wire [63*8-1:0] 	 OR_ODATA;

   genvar 		 i;
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

      for (i = 1; i < 63; i = i + 1) begin
	 assign OR_ODATA[8*i+0]=OR_ODATA[8*(i-1)+0] | GATE_ODATA[8*i+0];
	 assign OR_ODATA[8*i+1]=OR_ODATA[8*(i-1)+1] | GATE_ODATA[8*i+1];
	 assign OR_ODATA[8*i+2]=OR_ODATA[8*(i-1)+2] | GATE_ODATA[8*i+2];
	 assign OR_ODATA[8*i+3]=OR_ODATA[8*(i-1)+3] | GATE_ODATA[8*i+3];
	 assign OR_ODATA[8*i+4]=OR_ODATA[8*(i-1)+4] | GATE_ODATA[8*i+4];
	 assign OR_ODATA[8*i+5]=OR_ODATA[8*(i-1)+5] | GATE_ODATA[8*i+5];
	 assign OR_ODATA[8*i+6]=OR_ODATA[8*(i-1)+6] | GATE_ODATA[8*i+6];
	 assign OR_ODATA[8*i+7]=OR_ODATA[8*(i-1)+7] | GATE_ODATA[8*i+7];
      end
   endgenerate
   assign OR_ODATA[0]=GATE_ODATA[0];
   assign OR_ODATA[1]=GATE_ODATA[1];
   assign OR_ODATA[2]=GATE_ODATA[2];
   assign OR_ODATA[3]=GATE_ODATA[3];
   assign OR_ODATA[4]=GATE_ODATA[4];
   assign OR_ODATA[5]=GATE_ODATA[5];
   assign OR_ODATA[6]=GATE_ODATA[6];
   assign OR_ODATA[7]=GATE_ODATA[7];
   assign ODATA[0]=OR_ODATA[8*62+0] | GATE_ODATA[8*63+0];
   assign ODATA[1]=OR_ODATA[8*62+1] | GATE_ODATA[8*63+1];
   assign ODATA[2]=OR_ODATA[8*62+2] | GATE_ODATA[8*63+2];
   assign ODATA[3]=OR_ODATA[8*62+3] | GATE_ODATA[8*63+3];
   assign ODATA[4]=OR_ODATA[8*62+4] | GATE_ODATA[8*63+4];
   assign ODATA[5]=OR_ODATA[8*62+5] | GATE_ODATA[8*63+5];
   assign ODATA[6]=OR_ODATA[8*62+6] | GATE_ODATA[8*63+6];
   assign ODATA[7]=OR_ODATA[8*62+7] | GATE_ODATA[8*63+7];
endmodule
