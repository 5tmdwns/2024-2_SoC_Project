module FSM(/*AUTOARG*/
	   // Outputs
	   MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB_BANK1, MEM_CSB_BANK1,
	   MEM_OEB_BANK2, MEM_CSB_BANK2, MEM_OEB_BANK3, MEM_CSB_BANK3,
	   MEM_OEB_BANK4, MEM_CSB_BANK4, MEM_IDATA, MEM_ODATA_SELECT,
	   // Inputs
	   RSTN, ADDR, CE, CSB, WEB, OEB, IDATA, CLK
	   );
   input                    RSTN;
   input [15:0] 	    ADDR;
   input                    CE;
   input                    CSB;
   input                    WEB;
   input                    OEB;
   input [7:0] 		    IDATA;
   input 		    CLK;

   output reg [9:0] 	    MEM_ADDR;
   output reg               MEM_CE;
   output reg               MEM_WEB;
   output reg [15:0] 	    MEM_OEB_BANK1;
   output reg [15:0] 	    MEM_CSB_BANK1;
   output reg [15:0] 	    MEM_OEB_BANK2;
   output reg [15:0] 	    MEM_CSB_BANK2;
   output reg [15:0] 	    MEM_OEB_BANK3;
   output reg [15:0] 	    MEM_CSB_BANK3;
   output reg [15:0] 	    MEM_OEB_BANK4;
   output reg [15:0] 	    MEM_CSB_BANK4;
   output reg [7:0] 	    MEM_IDATA;
   output reg [3:0] 	    MEM_ODATA_SELECT;

   always @(posedge CLK or negedge RSTN) begin
      if(!RSTN) begin
         MEM_ADDR         <= 10'b0;
         MEM_CE <= 1'b0;
         MEM_WEB          <= 1'b1;
	 MEM_OEB_BANK1          <= {16{1'b1}};
	 MEM_CSB_BANK1          <= {16{1'b1}};
         MEM_OEB_BANK2          <= {16{1'b1}};
	 MEM_CSB_BANK2          <= {16{1'b1}};
         MEM_OEB_BANK3          <= {16{1'b1}};
	 MEM_CSB_BANK3          <= {16{1'b1}};
         MEM_OEB_BANK4          <= {16{1'b1}};
	 MEM_CSB_BANK4          <= {16{1'b1}};
         MEM_IDATA        <= 8'b0;
         MEM_ODATA_SELECT <= 4'b0;
      end 
      else begin
         MEM_ADDR         <= ADDR[9:0];
         MEM_WEB          <= WEB;
         MEM_CE <= CE;
	 MEM_IDATA <= IDATA;
	 MEM_ODATA_SELECT <= ADDR[13:10];
	 if (ADDR[15:14] == 2'd3) begin
	    MEM_OEB_BANK4 <= {16{OEB}} | (~(16'd1 << ADDR[13:10]));
	    MEM_CSB_BANK4 <= {16{CSB}} | (~(16'd1 << ADDR[13:10]));
	 end
	 else if (ADDR[15:14] == 2'd2) begin
	    MEM_OEB_BANK3 <= {16{OEB}} | (~(16'd1 << ADDR[13:10]));
	    MEM_CSB_BANK3 <= {16{CSB}} | (~(16'd1 << ADDR[13:10]));
	 end
	 else if (ADDR[15:14] == 2'd1) begin
	    MEM_OEB_BANK2 <= {16{OEB}} | (~(16'd1 << ADDR[13:10]));
	    MEM_CSB_BANK2 <= {16{CSB}} | (~(16'd1 << ADDR[13:10]));
	 end
	 else  begin
	    MEM_OEB_BANK1 <= {16{OEB}} | (~(16'd1 << ADDR[13:10]));
	    MEM_CSB_BANK1 <= {16{CSB}} | (~(16'd1 << ADDR[13:10]));
	 end
      end
   end
   // MEM_OEB_BANK1          <= {16{OEB}} | (~(16'd1 << ADDR[13:10]));
   //    MEM_CSB_BANK1          <= {16{CSB}} | (~(16'd1 << ADDR[13:10]));
endmodule
