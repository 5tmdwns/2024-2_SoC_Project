module FSM(/*AUTOARG*/
           // Outputs
           MEM_ADDR, MEM_CE, MEM_WEB, MEM_OEB, MEM_CSB, MEM_IDATA, MEM_ODATA_SELECT,
           // Inputs
           CLK, RSTN, ADDR, CE, CSB, WEB, OEB, IDATA
           );
    input                    CLK;
    input                    RSTN;
    input        [15:0]      ADDR;
    input                    CE;
    input                    CSB;
    input                    WEB;
    input                    OEB;
    input        [7:0]       IDATA;

    output reg   [9:0]       MEM_ADDR;
    output reg               MEM_CE;
    output reg               MEM_WEB;
    output reg   [63:0]      MEM_OEB;
    output reg   [63:0]      MEM_CSB;
    output reg   [7:0]       MEM_IDATA;
    output reg   [5:0]       MEM_ODATA_SELECT;

    always @(posedge CLK or negedge RSTN) begin
        if(!RSTN) begin
            MEM_ADDR         <= 10'b0;
            MEM_CE           <= 1'b0;
            MEM_WEB          <= 1'b1;
		    MEM_OEB          <= {64{1'b1}};
	 	    MEM_CSB          <= {64{1'b1}};
            MEM_IDATA        <= 8'b0;
            MEM_ODATA_SELECT <= 6'b0;
        end
        else begin
            MEM_ADDR         <= ADDR[9:0];
            MEM_CE           <= CE;
            MEM_WEB          <= WEB;
	 	    MEM_OEB          <= (ADDR[15:10] == 24'd0) ?  {64{OEB}} | (~64'd1) : {64{OEB}} | (~(64'd1 << ADDR[15:10]));
	 	    MEM_CSB          <= (ADDR[15:10] == 24'd0) ?  {64{CSB}} | (~64'd1) : {64{CSB}} | (~(64'd1 << ADDR[15:10]));
            MEM_IDATA        <= IDATA;
            MEM_ODATA_SELECT <= ADDR[15:10];
        end
    end

endmodule
