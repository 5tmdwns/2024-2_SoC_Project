module LFSR16B(/*AUTOARG*/
               // Outputs
               OUT,
               // Inputs
               CLK, RSTN, EN
               );
   input CLK;
   input RSTN;
   input EN;
   output reg [15:0] OUT;

   reg 		     COUNTING;
   reg [2:0] 	     CLK_COUNT;

   always @(posedge CLK or negedge RSTN) begin
      if (!RSTN) begin
         COUNTING <= 1'b0;
         CLK_COUNT <= 3'b000;
         OUT <= 16'h8000;
      end
      else begin
         if (EN) begin
            if (!COUNTING) begin
               if (CLK_COUNT == 3'd4) begin
                  COUNTING <= 1'b1;
                  CLK_COUNT <= 3'b000;
                  OUT <= {OUT[14:0], OUT[15] ^ OUT[13] ^ OUT[12] ^ OUT[10]};
               end
               else begin
                  CLK_COUNT <= CLK_COUNT + 1;
               end
            end
            else begin
               if (CLK_COUNT == 3'd3) begin
                  CLK_COUNT <= 3'b000;
                  OUT <= {OUT[14:0], OUT[15] ^ OUT[13] ^ OUT[12] ^ OUT[10]};
               end
               else begin
                  CLK_COUNT <= CLK_COUNT + 1;
               end
            end
         end
         else begin
            COUNTING <= 1'b0;
            CLK_COUNT <= 3'b000;
         end
      end
   end

endmodule
