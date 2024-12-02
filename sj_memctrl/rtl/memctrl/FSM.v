module FSM(/*AUTOARG*/
           // Outputs
           MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA,
           // Inputs
           CLK, RSTN, ADDR, CE, CSB, WEB, OEB, IDATA
           );
   input CLK;
   input RSTN;
   input [10:0] ADDR;
   input        CE;
   input        CSB;
   input        WEB;
   input        OEB;
   input [7:0]  IDATA;

   output reg [8:0] MEM_ADDR;
   output reg       MEM_CE;
   output reg       MEM_WEB;
   output reg [3:0] MEM_OEB;
   output reg [3:0] MEM_CSB;
   output reg [7:0]   MEM_IDATA;

	wire CLKB;

	reg PREV_CE;
	assign CLKB = ~CLK;
   always@(posedge CLK, negedge RSTN) begin
      if(!RSTN) begin
         MEM_ADDR <= 9'b0;
         MEM_WEB <= 1'b1;
			MEM_OEB <= {4{1'b1}};
			MEM_CSB <= {4{1'b0}};
         MEM_IDATA <= 8'b1;
      end
      else begin
         MEM_ADDR <= ADDR[8:0];
         MEM_WEB <= WEB;
			MEM_OEB <= (ADDR[10:9] == 8'd0) ?  {4{OEB}}| (~4'd1) : {4{OEB}}| (~(4'd1 << ADDR[10:9]));
			MEM_CSB <= (ADDR[10:9] == 8'd0) ?  {4{CSB}}| (~4'd1) : {4{CSB}}| (~(4'd1 << ADDR[10:9]));
         MEM_IDATA <= IDATA;
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

