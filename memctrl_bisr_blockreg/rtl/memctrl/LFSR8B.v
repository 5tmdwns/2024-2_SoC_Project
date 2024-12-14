module LFSR8B(/*AUTOARG*/
              // Outputs
              OUT,
              // Inputs
              CLK, RSTN, EN
              );
   input CLK;
   input RSTN;
   input EN;
   output reg [7:0] OUT;

   reg 		    COUNTING;
   reg [2:0] 	    CLK_COUNT;

   always @(posedge CLK or negedge RSTN) begin
      if (!RSTN) begin
         COUNTING <= 1'b0;
         CLK_COUNT <= 3'b000;
         OUT <= 8'h80;
      end
      else begin
         if (EN) begin
            if (!COUNTING) begin
               if (CLK_COUNT == 3'd4) begin
                  COUNTING <= 1'b1;
                  CLK_COUNT <= 3'b000;
                  OUT <= {OUT[6:0], OUT[7] ^ OUT[5] ^ OUT[4] ^ OUT[3]};
               end
               else begin
                  CLK_COUNT <= CLK_COUNT + 1;
               end
            end
            else begin
               if (CLK_COUNT == 3'd3) begin
                  CLK_COUNT <= 3'b000;
                  OUT <= {OUT[6:0], OUT[7] ^ OUT[5] ^ OUT[4] ^ OUT[3]};
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
