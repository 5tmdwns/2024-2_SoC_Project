module BISR #(parameter BLOCK_SIZE = 128,
	      parameter MEM_BLOCK_COUNT = 512,
	      parameter MAX_FAULT_BLOCK = 25)(/*AUTOARG*/
					      // Outputs
					      SPARE_MEM_ADDR, SPARE_MEM_CE, SPARE_MEM_WEB, SPARE_MEM_OEB,
					      SPARE_MEM_CSB, SPARE_MEM_IDATA, MEM_ADDR, MEM_CE, MEM_WEB, 
						  MEM_OEB, MEM_CSB, MEM_IDATA,
					      // Inputs
					      CLK, RSTN, ADDR, CE, CSB, IDATA, OEB, WEB, BIST_EN, BIST_PASS,
					      NEED_REPAIR_ADDR
					      );
   input CLK;
   input RSTN;
   input [15:0] ADDR;
   input 	CE;
   input 	CSB;
   input [7:0] 	IDATA;
   input 	OEB;
   input 	WEB;
   input 	BIST_EN;
   input 	BIST_PASS;

   input [15:0] NEED_REPAIR_ADDR;

   output reg [6:0] SPARE_MEM_ADDR;
   output reg 	    SPARE_MEM_CE;
   output reg 	    SPARE_MEM_WEB;
   output reg [24:0] SPARE_MEM_OEB;
   output reg [24:0] SPARE_MEM_CSB;
   output reg [7:0]  SPARE_MEM_IDATA;

   output reg [9:0]  MEM_ADDR;
   output reg 	     MEM_CE;
   output reg 	     MEM_WEB;
   output reg [63:0] MEM_OEB;
   output reg [63:0] MEM_CSB;
   output reg [7:0]  MEM_IDATA;


   reg [MEM_BLOCK_COUNT-1:0] FAULT_BLOCK;
   reg [4:0] 		     FAULT_BLOCK_COUNT;
   reg [4:0] 		     SELECT_COUNT, COUNT;
   reg 			     BISR_UN;

   integer 		     i;

   always @(*) begin
		if (!BIST_EN && FAULT_BLOCK[ADDR[15:7]] == 1'b1) begin
			COUNT = 5'b0;
			for (i = 0; i < ADDR[15:7]; i = i + 1) begin
				if (FAULT_BLOCK[i] == 1'b1) begin
					COUNT = COUNT + 1'b1;
				end
				else begin
					COUNT = COUNT;
				end
			end
		end
		else begin
			COUNT = 5'b0;
		end
   end

always @(posedge CLK or negedge RSTN) begin
    if (!RSTN) begin
        SELECT_COUNT <= 5'b0;
    end 
	else begin
		SELECT_COUNT <= COUNT;
    end
end

   always@(posedge CLK, negedge RSTN) begin
      if (!RSTN) begin
	 FAULT_BLOCK <= 512'b0;
	 FAULT_BLOCK_COUNT <= 5'b0;
	 BISR_UN <= 1'b0;
      end
      else begin
		if (BIST_EN) begin
			if (BIST_PASS && (FAULT_BLOCK_COUNT < MAX_FAULT_BLOCK)) begin
				FAULT_BLOCK [NEED_REPAIR_ADDR[15:7]] <= 1'b1;
				FAULT_BLOCK_COUNT <= FAULT_BLOCK_COUNT + 1'b1;
				BISR_UN <= 1'b0;
			end
			else begin
				if (FAULT_BLOCK_COUNT > 25) begin
					FAULT_BLOCK <= FAULT_BLOCK;
					FAULT_BLOCK_COUNT <= 5'b0;
					BISR_UN <= 1'b1;
				end
				else begin
					FAULT_BLOCK <= FAULT_BLOCK;
					FAULT_BLOCK_COUNT <= FAULT_BLOCK_COUNT;
					BISR_UN <= 1'b0;
				end
			end
		end
		else begin
			FAULT_BLOCK <= FAULT_BLOCK;
			FAULT_BLOCK_COUNT <= FAULT_BLOCK_COUNT;
			BISR_UN <= 1'b0;
		end
      end
   end

   always@(posedge CLK, negedge RSTN) begin
		if (!RSTN) begin
			MEM_ADDR         <= 10'b0;
			MEM_WEB          <= 1'b1;
			MEM_OEB          <= {64{1'b1}};
			MEM_CSB          <= {64{1'b1}};
			MEM_IDATA        <= 8'b0;

			SPARE_MEM_ADDR <= 7'b0;
			SPARE_MEM_WEB <= 1'b1;
			SPARE_MEM_OEB <= {25{1'b1}};
			SPARE_MEM_CSB <= {25{1'b1}};
			SPARE_MEM_IDATA <= 8'h00;
		end
		else begin
			if (BIST_EN) begin
				MEM_ADDR         <= 10'b0;
				MEM_WEB          <= 1'b1;
				MEM_OEB          <= {64{1'b1}};
				MEM_CSB          <= {64{1'b1}};
				MEM_IDATA        <= 8'b0;

				SPARE_MEM_ADDR <= 7'b0;
				SPARE_MEM_WEB <= 1'b1;
				SPARE_MEM_OEB <= {25{1'b1}};
				SPARE_MEM_CSB <= {25{1'b1}};
				SPARE_MEM_IDATA <= 8'h00;
			end
			else begin
				if (FAULT_BLOCK[ADDR[15:7]] == 1'b1) begin
					MEM_ADDR         <= 10'b0;
					MEM_WEB          <= 1'b1;
					MEM_OEB          <= {64{1'b1}};
					MEM_CSB          <= {64{1'b1}};
					MEM_IDATA        <= 8'b0;

					SPARE_MEM_ADDR <= ADDR[6:0];
					SPARE_MEM_WEB <= WEB;
					SPARE_MEM_OEB <= {25{OEB}} | (~(25'd1 << SELECT_COUNT));
					SPARE_MEM_CSB <= {25{CSB}} | (~(25'd1 << SELECT_COUNT));
					SPARE_MEM_IDATA <= IDATA;
				end
				else begin
					MEM_ADDR         <= ADDR[15:0];
					MEM_WEB          <= WEB;
					MEM_OEB          <= {64{OEB}} | (~(64'd1 << ADDR[15:10]));
					MEM_CSB          <= {64{CSB}} | (~(64'd1 << ADDR[15:10]));
					MEM_IDATA        <= IDATA;
					
					SPARE_MEM_ADDR <= 7'b0;
					SPARE_MEM_WEB <= 1'b1;
					SPARE_MEM_OEB <= {25{1'b1}};
					SPARE_MEM_CSB <= {25{1'b1}};
					SPARE_MEM_IDATA <= 8'h00;
				end
			end
		end
	end

	reg PREV_CE;
	wire CLKB;
	assign CLKB = ~CLK;

	always@(posedge CLKB or negedge RSTN) begin
		if(!RSTN) begin
			MEM_CE  <= 1'b0;
			PREV_CE <= 1'b0;
			SPARE_MEM_CE <= 1'b0;
		end
		else begin
			if (BIST_EN) begin
				MEM_CE <= 1'b0;
				PREV_CE <= 1'b0;
				SPARE_MEM_CE <= 1'b0;
			end
			else begin
				if (FAULT_BLOCK[ADDR[15:7]] == 1'b1) begin
					MEM_CE           <= 1'b0;
					PREV_CE 		<= 1'b0;
					SPARE_MEM_CE <= CE;
				end
				else begin
					MEM_CE <= CE;
					PREV_CE <= 1'b0;
					SPARE_MEM_CE <= 1'b0;
				end
			end
		end
	end

endmodule