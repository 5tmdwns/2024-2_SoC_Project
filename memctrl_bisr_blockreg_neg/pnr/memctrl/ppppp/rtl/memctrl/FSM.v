module FSM(/*AUTOARG*/
           // Outputs
           MEM_ADDR,MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB,
           // Inputs
           ADDR,CLK, RSTN, CE, CSB, WEB, OEB, PREV_CE, BISR_EN
           );
   input   [15:0] ADDR;
   input CLK;
   input RSTN;
   input        CE;
   input        CSB;
   input        WEB;
   input        OEB;
	input BISR_EN;
	reg CSB_DELAY;
	reg OEB_DELAY;
	reg WEB_DELAY;
   
	output reg  [9:0]  MEM_ADDR;
   output reg       MEM_CE;
   output reg       MEM_WEB;
   output reg [63:0] MEM_OEB;
   output reg [63:0] MEM_CSB;

	wire CLKB;

	reg PREV_CE;
	output reg PREV_CE;
	assign CLKB = ~CLK;
   always@(posedge CLK, negedge RSTN) begin
      if(!RSTN) begin
         MEM_ADDR <= 10'b0;
         MEM_WEB <= 1'b1;
			MEM_OEB <= {64{1'b1}};
			MEM_CSB <= {64{1'b0}};
			WEB_DELAY <= 1'b0;
			OEB_DELAY <= 1'b0;
			CSB_DELAY <= 1'b0;
      end
		else if(BISR_EN)begin
         MEM_ADDR <= ADDR[9:0];
			MEM_WEB <= WEB;
			MEM_OEB <= (ADDR[15:10] == 6'd0) ?  {64{OEB}}| (~64'd1) : {64{OEB}}| (~(64'd1 << ADDR[15:10]));
			MEM_CSB <= (ADDR[15:10] == 6'd0) ?  {64{CSB}}| (~64'd1) : {64{CSB}}| (~(64'd1 << ADDR[15:10]));
		end
      else begin
         MEM_ADDR <= ADDR[9:0];

			WEB_DELAY <= WEB;
			OEB_DELAY <= OEB;
			CSB_DELAY <= CSB;

         MEM_WEB <= WEB_DELAY;
			MEM_OEB <= (ADDR[15:10] == 6'd0) ?  {64{OEB_DELAY}}| (~64'd1) : {64{OEB_DELAY}}| (~(64'd1 << ADDR[15:10]));
			MEM_CSB <= (ADDR[15:10] == 6'd0) ?  {64{CSB_DELAY}}| (~64'd1) : {64{CSB_DELAY}}| (~(64'd1 << ADDR[15:10]));
      end
   end

   always@(posedge CLKB, negedge RSTN) begin
      if(!RSTN) begin   
         PREV_CE <= 1'b0;
         MEM_CE <= 1'b0;
      end
      else begin
         PREV_CE <= CE;
         MEM_CE <= PREV_CE;
      end
   end

endmodule

